<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Customer;
use App\Models\Menu;
use App\Models\Order;
use App\Models\OrderItem;
use App\Models\Payment;
use App\Models\Table;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Inertia\Inertia;

class RegisterController extends Controller
{
    public function index()
    {
        $menu = Menu::with('course')->get();
        $categories = Category::orderBy('name', 'desc')->get();
        return Inertia::render('Register/Index', [
            'admin' => Auth::user()->isAdmin,
            'menu' => $menu,
            'categories' => $categories
        ]);
    }

    public function orders() {
        $orders = Order::with('items')->paginate(50);
        return Inertia::render('Register/Orders', [
            'admin' => Auth::user()->isAdmin,
            'orders' => $orders,
            'tables' => Table::all()
        ]);
    }

    public function getOrdersAPI() {
        $orders = Order::with('items')->paginate(50);
        return response()->json($orders);
    }


    public function getOrdersForTableNumberAPI($table_number) {
        $orders = Order::with('items')->where('table_number', $table_number)->paginate(50);
        return response()->json($orders);
    }

    public function getOrdersForDateAPI($date) {
        $orders = Order::with('items')->where('created_at', 'like', $date . '%')->paginate(50);
        return response()->json($orders);
    }

    public function getOrderForTableNumberAndDateAPI($table_number, $date) {
        $orders = Order::with('items')->where('created_at', 'like', $date . '%')->where('table_number', $table_number)->paginate(50);
        return response()->json($orders);
    }

    public function order($id) {
        $order = Order::with('items', 'items.course')->find($id);
        return Inertia::render('Register/Order', [
            'admin' => Auth::user()->isAdmin,
            'order' => $order
        ]);
    }
    public function finishOrder(Request $request) {
        $resp = $request->validate([
            'cart' => 'required',
            'card' => 'required|regex:/[A-Za-z]{2}[0-9]{2}[A-Za-z]*[0-9]{10}/',
        ]);
        $orderDate = date('Y-m-d H:i:s');
        $payment = new Payment();
        $payment->cardnumber = $resp['card'];
        $payment->paymant_date = $orderDate;
        $payment->save();

        $order = new Order();
        $order->order_date = $orderDate;
        $order->payment_date = $orderDate;
        $order->payment_cardnumber = $resp['card'];
        $order->save();

        foreach ($resp['cart'] as $item) {
            $orderItem = new OrderItem();
            $orderItem->order_id = $order->id;
            $orderItem->course_id = $item['course_id'];
            $orderItem->quantity = $item['quantity'];
            $orderItem->price = $item['price'];
            $orderItem->save();
        }

        return Redirect::route('cashregister.index');

    }

    public function finishClientOrder(Request $request) {
        $resp = $request->validate([
            'cart' => 'required',
            'payment_card' => 'required|regex:/[A-Za-z]{2}[0-9]{2}[A-Za-z]*[0-9]{10}/',
            'table' => 'required',
            'email' => 'required|email',
            'full_name' => 'required',
        ]);
        $orderDate = date('Y-m-d H:i:s');
        #get date minus 10 minutes
        $minusDate = date('Y-m-d H:i:s', strtotime($orderDate . ' -10 minutes'));
        #check if there is an order from the same table in the last 10 minutes
        $existing = Order::where('table_number', $resp['table'])->where('order_date', '>', $minusDate)->first();
        if ($existing) {
            return response()->json(['error' => 'Er is een bestelling van dezelfde tafel in de afgelopen 10 minuten.'], 500);

        }
        $payment = new Payment();
        $payment->cardnumber = $resp['payment_card'];
        $payment->paymant_date = $orderDate;
        $payment->save();

        if (Customer::find($resp['email'])) {
            $customer = Customer::find($resp['email'])->first();
        } else {
            $customer = new Customer();
            $customer->email = $resp['email'];
            $customer->full_name = $resp['full_name'];
            $customer->save();
        }

        $order = new Order();
        $order->order_date = $orderDate;
        $order->payment_date = $orderDate;
        $order->payment_cardnumber = $resp['payment_card'];
        $order->table_number = $resp['table'];
        $order->customer = $customer->email;
        $order->save();

        foreach ($resp['cart'] as $item) {
            $orderItem = new OrderItem();
            $orderItem->order_id = $order->id;
            $orderItem->course_id = $item['course_id'];
            $orderItem->quantity = $item['quantity'];
            $orderItem->side_dish = $item['side_dish'];
            $orderItem->price = $item['price'];
            $orderItem->save();
        }

        return response()->json(['success' => 'Order placed successfully']);

    }
}
