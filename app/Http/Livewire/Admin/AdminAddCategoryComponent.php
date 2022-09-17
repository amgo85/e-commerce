<?php

namespace App\Http\Livewire\Admin;
use App\Models\Category;
use Livewire\Component;
use Illuminate\Support\Str;

class AdminAddCategoryComponent extends Component
{
    public $name;
    public $slug;

    // function for sluggin the data
    public function generateslug()
    {
        $this->slug = Str::slug($this->name);
    }

    // function for storing category
    public function storeCategory() 
    {
        $category = new Category();
        $category->name = $this->name;
        $category->slug = $this->slug;
        $category->save();
        session()->flash('message','Category has been created successfully');

    }
    public function render()
    {
        return view('livewire.admin.admin-add-category-component')->layout('layouts.base');
    }
}
