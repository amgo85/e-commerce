<?php

namespace App\Http\Livewire;

use App\Models\Product;
use Livewire\Component;
use Livewire\WithPagination;    //https://laravel-livewire.com/docs/2.x/pagination
use Illuminate\Support\Facades\DB;
use Cart;
use App\Models\Category;

class CategoryComponent extends Component
{
    public $sorting;
    public $pagesize;
    public $productsCountTotal;
    public $category_slug;

    public function mount($category_slug){
        $this->sorting = "default";
        $this->pagesize = 12;
        $this->category_slug = $category_slug;    // this assignment is very strange
    }

    public function store($product_id, $product_name, $product_price){
        Cart::add($product_id, $product_name, 1, $product_price)->associate('App\Models\Product');           //why qty is 1
        session()->flash('success_message', ' Item added in Cart');             //pass the session key assume 'success'
        return redirect()->route('product.cart'); 
    }
    use WithPagination;
    public function render(){  
        $category = Category::where('slug', $this->category_slug)->first();
        $category_id = $category->id;
        $category_name = $category->name;
        $this->category_slug = $category->slug;

        $this->productsCountTotal = DB::table('products')->select(DB::raw('MAX(id)'))->value('id');

        if($this->sorting == 'date'){
            $products = Product::where('category_id', $category_id)->orderBy('created_at', 'DESC')->paginate($this->pagesize);
        } else if($this->sorting == 'price') {
            $products = Product::where('category_id', $category_id)->orderBy('regular_price', 'ASC')->paginate($this->pagesize);
        } else if($this->sorting == 'price-desc'){
            $products = Product::where('category_id', $category_id)->orderBy('short_description', 'ASC')->paginate($this->pagesize);
        } else {
            $products = Product::where('category_id', $category_id)->paginate($this->pagesize);
            //$products = DB::table('products')->paginate(15);
        }

        $categories = Category::all();

        return view('livewire.category-component', ['products' => $products, 
                                                    'categories' => $categories, 
                                                    'category_name' => $category_name ])->layout('layouts.base');
    }
}
