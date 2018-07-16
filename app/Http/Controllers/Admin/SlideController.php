<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Slide;

class SlideController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $slides = Slide::all()->sortByDesc('id');
		return view('admin.slide.index', compact('slides'));
	}

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.slide.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
		$this->validate($request, [
			'title' => 'required',
			'image' => 'required',
		]);

		$slide = new Slide();
		$slide->title = $request->title;
		$slide->link = $request->link;
		$slide->order = $request->order;
		$slide->image = $request->image;

		if ($slide->save()) {
			return back()->with('success_message', 'Slide has been saved.');
		}
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $slide = Slide::find($id);
        if ($slide) {
        	return view('admin.slide.edit', compact('slide'));
		}

		return redirect()->route('admin.slide');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
		$this->validate($request, [
			'title' => 'required',
		]);

		$slide = Slide::find($request->id);
		$slide->title = $request->title;
		$slide->link = $request->link;
		$slide->order = $request->order;

		if ($request->image) {
			$slide->image = $request->image;
		}

		if ($slide->save()) {
			return back()->with('success_message', 'Slide has been saved.');
		}
    }
}
