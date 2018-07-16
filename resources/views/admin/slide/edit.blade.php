@extends('admin.layouts.main')
@section('title', 'Edit Slide')
@section('content')
    <div>
        @if(Session::has('success_message'))
            @component('admin.components.alert')
                @slot('title')
                    Succeed Confirmation
                @endslot
                @slot('message')
                    {{ Session::get('success_message') }}
                @endslot
                @slot('type')
                    success
                @endslot
                @slot('timer')
                    3000
                @endslot
                @slot('attributes')
                    allowOutsideClick: true
                @endslot
            @endcomponent
        @endif
        @if(Session::has('error_message'))
            <script type="text/javascript">
                swal({
                    title: "Opp! Something went wrong",
                    text: "{{ Session::get('error_message') }}",
                    type: "error",
                    timer: 5000,
                    allowOutsideClick: true
                });
            </script>
        @endif
        @if($errors->any())
            <script type="text/javascript">
                swal({
                    title: "Opp! Something went wrong",
                    text: "@foreach($errors->all() as $error) <p>{{ $error }}</p> @endforeach",
                    type: "error",
                    timer: 5000,
                    html: true,
                    allowOutsideClick: true
                });
            </script>
        @endif
        <form class="custom-form" enctype="multipart/form-data" action="{{ route('admin.slide.update') }}" method="POST">
            <input type="hidden" name="_token" value="{!! csrf_token() !!}">
            <div class="uk-flex">
                <!-- Card Form -->
                <div class="uk-flex-1">
                    <h2 class="form-title uk-text-center">
                        SLIDE UPDATING FORM
                        <span></span>
                    </h2>

                    <div class="card card-transparent">
                        <div class="uk-container uk-container-center">
                            <div class="uk-flex uk-flex-center uk-flex-middle">
                                <div class="uk-width-large">
                                    <input type="hidden" name="id" value="{{ $slide->id }}">
                                    <div class="custom-form-group">
                                        <div class="">
                                            <input type="text" name="title" placeholder="Title" required
                                                   class="custom-input-text" value="{{ $slide->title }}">
                                        </div>
                                    </div>

                                    <div class="custom-form-group">
                                        <div class="">
                                            <input type="text" name="link" placeholder="URL Link"
                                                   class="custom-input-text" value="{{ $slide->link }}">
                                        </div>
                                    </div>

                                    <div class="custom-form-group">
                                        <div class="">
                                            <select name="order" class="custom-input-text">
                                                <option>1</option>
                                                <option {{ $slide->order == 2 ? 'selected' : '' }}>2</option>
                                                <option {{ $slide->order == 3 ? 'selected' : '' }}>3</option>
                                                <option {{ $slide->order == 4 ? 'selected' : '' }}>4</option>
                                                <option {{ $slide->order == 5 ? 'selected' : '' }}>5</option>
                                            </select>
                                        </div>
                                    </div>

                                    <!-- Image -->
                                    <div class="custom-form-group">
                                        @if ($slide->image)
                                            <img src="{{ $slide->image }}" alt="Image" width="200">
                                        @endif
                                        <div class="file-input-wrapper">
                                            <button class="custom-upload-btn image uploadFile" data-type="image" id="uploadImage"><i class="fa fa-upload"></i> Upload Image</button>
                                            <input type="hidden" name="image" id="txtFeaturedImage" />
                                        </div>
                                        <div class="imagePreview">
                                            <p>Image Preview</p>
                                            <div id="imagePreviewDiv"></div>
                                        </div>
                                    </div>

                                    <div class="custom-form-group uk-text-center">
                                        <div class="padding-top-sm"></div>
                                        <input type="submit" class="custom-btn-submit uk-margin-auto" value="Save"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="footer"></div>
                    </div>
                </div>
                <!-- /Card From -->
            </div>
        </form>
    </div>

    @includeIf('admin.partials._uploadfile')
@endsection

@push('script_dependencies')
    <script type="text/javascript" src="{{ asset('js/done-typing.js') }}"></script>
    <script type="text/javascript" src="{{ asset('admins/js/script.js') }}"></script>
    <script type="text/javascript" src="{{ asset('admins/js/crud.js') }}"></script>
@endpush

@section('script')
    <script>
        function responsive_filemanager_callback(field_id) {
            var uploadImageModal = UIkit.modal("#fileManagerModal");
            imageUrl="";
            switch(field_id){
                case 'txtFeaturedImage':
                    imageUrl = $('#'+field_id).val();
                    $('#imagePreviewDiv').css({
                        'background' : 'url("'+imageUrl+'") center center / cover no-repeat',
                        'position' : 'relative',
                        'min-height' : '180px'
                    });
                    break;
                case 'sound_url':
                    var playing = false,
                        audioEle = $('#audioEle').bind('play', function () {
                            playing = true;
                        }).bind('pause', function () {
                            playing = false;
                        }).bind('ended', function () {
                            audio.pause();
                        }).get(0);
                    var supportsAudio = !!document.createElement('audio').canPlayType;
                    if (supportsAudio){
                        $(audioEle).attr('src', $('#'+field_id).val());
                    }
                    break;
                default:
                    return;
            }

            uploadImageModal.toggle();
        }

        $(document).on('click','#removeImage',function(){
            $('#imagePreviewDiv').empty();
            $("#txtFeaturedImage").val('');
        });
    </script>
@endsection
