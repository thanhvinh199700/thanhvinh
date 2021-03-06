<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Order extends Model {

    protected $table = 'orders';
    protected $primaryKey = 'id';
    protected $fillable = ['full_name', 'email', 'address', 'phone', 'trash', 'status', 'total_price', 'total_quantity'];

    public function orderDetails() {
        return $this->hasMany('App\Models\OrderDetail','order_id','id');
    }

}
