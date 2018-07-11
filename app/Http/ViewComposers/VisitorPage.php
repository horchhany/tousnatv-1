<?php

namespace App\Http\ViewComposers;

use Illuminate\View\View;
use App\Models\CategoryType;

class VisitorPage
{

    protected $reading_menus;
    protected $listen_menus;
    protected $video_menus;
    /**
     * Create a new profile composer.
     *
     * @param  UserRepository  $users
     * @return void
     */
    public function __construct()
    {
        $menus = CategoryType::join('categories', 'category_type.category_id', 'categories.id')
                ->where('categories.deleted_at', null)->get();
        $this->reading_menus = $menus->where('mediatype_id', 1);
        $this->listen_menus = $menus->where('mediatype_id', 2);
        $this->video_menus = $menus->where('mediatype_id', 3);
    }

    /**
     * Bind data to the view.
     *
     * @param  View  $view
     * @return void
     */
    public function compose(View $view)
    {
        $view->with([
            'reading_menus' => $this->reading_menus,
            'listen_menus' => $this->listen_menus,
            'video_menus' => $this->video_menus
        ]);
    }
}
