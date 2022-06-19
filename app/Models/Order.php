<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{

    protected $table = 'orders';

    const UPDATED_AT = 'last_updated_at';

    protected $fillable = [
        'order_date',
        'table_number',
        'customer',
        'payment_date',
        'payment_cardnumber'
    ];

    public function items()
    {
        return $this->hasMany(OrderItem::class);
    }

}
