<?php

namespace App\Http\Livewire;

use App\Models\Product;
use Livewire\Component;
use Livewire\WithPagination;    //https://laravel-livewire.com/docs/2.x/pagination
use Illuminate\Support\Facades\DB;
use Cart;
use App\Models\Category;

class ShopComponent extends Component
{
    public $sorting;
    public $pagesize;
    public $productsCountTotal;     // I made for Pagination
    //public $categories;

    public function mount(){
        $this->sorting = "default";
        $this->pagesize = 12;
    }

    public function store($product_id, $product_name, $product_price){
        Cart::add($product_id, $product_name, 1, $product_price)->associate('App\Models\Product');           //why qty is 1
        session()->flash('success_message', ' Item added in Cart');             //pass the session key assume 'success'
        return redirect()->route('product.cart'); 
    }
    use WithPagination;
    public function render(){
        $this->productsCountTotal = DB::table('products')->select(DB::raw('MAX(id)'))->value('id');
        $productsCountT = $this->productsCountTotal;
        if($this->sorting == 'date'){
            $products = Product::orderBy('created_at', 'DESC')->paginate($this->pagesize);
        } else if($this->sorting == 'price') {
            $products = Product::orderBy('regular_price', 'ASC')->paginate($this->pagesize);
        } else if($this->sorting == 'price-desc'){
            $products = Product::orderBy('short_description', 'ASC')->paginate($this->pagesize);
        } else {
            $products = Product::paginate($this->pagesize);
            //$products = DB::table('products')->paginate(15);
        }

        $categories = Category::all();
        //$this->categories = $categories;

        return view('livewire.shop-component', ['products' => $products, 
                                                'productsCountT' => $productsCountT,
                                                'categories' => $categories ])->layout('layouts.base');
    }
}
