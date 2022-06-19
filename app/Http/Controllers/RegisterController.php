<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Menu;
use App\Models\Order;
use App\Models\OrderItem;
use App\Models\Payment;
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
            'orders' => $orders
        ]);
    }

    public function getOrdersAPI() {
        $orders = Order::with('items')->paginate(50);
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
}
