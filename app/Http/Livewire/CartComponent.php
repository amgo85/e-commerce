<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Cart;

class CartComponent extends Component
{
    public function increaseQuantity($rowId){
        $product = Cart::instance('cart')->count()->get($rowId);
        $qty = $product->qty + 1;
        Cart::instance('cart')->count()->update($rowId, $qty);
    }

    public function decreaseQuantity($rowId){
        $product = Cart::instance('cart')->count()->get($rowId);
        $qty = $product->qty - 1;
        Cart::instance('cart')->count()->update($rowId, $qty);
    }

    public function destroy($rowId){
        Cart::instance('cart')->count()->remove($rowId);
        session()->flash('success_message', ' Item has been removed');
    }

    public function destroyAll(){
        Cart::instance('cart')->count()->destroy();
    }

    public function render()
    {
        return view('livewire.cart-component')->layout('layouts.base');
    }
}
