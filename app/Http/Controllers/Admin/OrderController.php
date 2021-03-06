<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Services\OrderService;
use App\Models\Order;
use App\Exports\OrdersExport;
use App\Exports\OrderDetailExport;
use Maatwebsite\Excel\Facades\Excel;

class OrderController extends Controller
{

    protected $orderService;

    public function __construct(OrderService $orderService)
    {
        $this->orderService = $orderService;
    }

    public function index()
    {

        $orders = $this->orderService->getOrder();
        return view('admin.order.index', ['order' => $orders]);
    }

    public function changeTrash(Order $order_id)
    {
        $this->orderService->trash($order_id);
        return redirect('orders');
    }

    public function destroy(Order $Order)
    {


        $this->orderService->deleteOrder($Order);
        return redirect('orders')->with('error_message', 'đã xóa thành công');

    }

    public function detail(Order $order)
    {
        $details = $this->orderService->detail($order);
        $info = $this->orderService->infoDetail($order);
        return view('admin.order.detail', ['info' => $info, 'detail' => $details]);
    }

    public function export()
    {
        return Excel::download(new OrdersExport, 'orders.xlsx');
    }

    public function detailExport(Order $order)
    {
        return Excel::download(new OrderDetailExport($order), 'orders_detail.xlsx');
    }

}
