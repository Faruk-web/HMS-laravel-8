@extends('layouts.admin_master')

@section('css')
    <style>
        .topBar {
            margin-top: 4rem;
        }

        .topBar {
            padding: 2rem;
        }

        .card {
            border: none;
            box-shadow: rgb(100 100 111 / 20%) 0px 7px 29px 0px !important;
            border: none !important;

        }

        .card .row .col-md-6,
        .card .row .col-md-12 {
            margin-bottom: 1rem;
        }

        .errorColor {
            color: red;
        }

        body {
            overflow-x: hidden;
        }

        .cardcheck {
            margin-top: 50px;
        }

        .wrapper {
            text-align: center;
        }

        .cardcenter {
            margin: 0 18%;
            margin-bottom: 5rem;
        }

        #blah {
            width: 150px;
            height: 150px;
            border-radius: 50%;
        }

    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
@endsection

@section('super-admin-content')
    <form id="editNoticeFORM"method="POST">
        @csrf

        <input type="hidden" name="id" value="{{$notice->id}}">

        <div class="container-full topBar">
            <div class="row">
                <div class="col-1"></div>
                <div class="col-10">
                    <div class="card my-5">
                        <div class="card-body">

                            <div class="row mx-5">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Title</label>
                                        <input type="text" class="form-control" placeholder="Title"id="title"
                                        value="{{ $notice->title }}" name="title">
                                        <span id="title_error" class="errorColor"></span>
                                    </div>
                                </div>

                                <hr>

                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Description</label>
                                        <textarea class="ckeditor form-control" id="description" name="description">{{ $notice->description }}</textarea>
                                        <span id="description_error" class="errorColor"></span>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Start Date </label>
                                        <input type="date" class="form-control" value="{{ $notice->startDate }}"  placeholder="Enter your birth date"id="startDate"
                                            name="startDate">
                                        <span id="startDate_error" class="errorColor"></span>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>End Date</label>
                                        <input type="date" class="form-control" value="{{ $notice->endDate }}" placeholder="Enter your birth date"id="endDate"
                                            name="endDate">
                                        <span id="endDate_error" class="errorColor"></span>
                                    </div>
                                </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Status</label><br>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input status1" type="radio"  name="status"
                                                 value="Active"{{ $notice->status == 'Active' ? 'checked' : '' }}>
                                            <label class="form-check-label" for="active">Active</label>

                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input status1" type="radio" name="status"
                                                 value="InActive"{{ $notice->status == 'InActive' ? 'checked' : '' }}>
                                            <label class="form-check-label" for="inActive">InActive</label>
                                        </div>
                                        <span id="status_error" class="errorColor"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    {{-- for language --}}
                    <div class="card cardcenter">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-10">
                                        <div class="wrapper">
                                            <button type="submit" class="btn btn-primary">Update</button>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                {{-- <div class="col-1"></div> --}}
            </div>
        </div>
    </form>

@endsection
@section('scripts')

    {{-- for ckeditor --}}
    <script src="//cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script> --}}
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script>
        // $('textarea').ckeditor(); // if class is prefered.
    </script>

    <script>

    </script>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script>
        // for adding data using ajax
        // for adding patient information


        $(document).ready(function(){
            $("#editNoticeFORM").on('submit', function(event) {
                event.preventDefault();
                let formData = new FormData($('#editNoticeFORM')[0]);
                formData.append('description',CKEDITOR.instances.description.getData());


                axios.post('/notice/update/', formData)
                    .then(response => {
                        toastr.success(response.message);
                        location.href = '{{route("notice.view")}}'
                    }).catch(error => {
                        console.log(error.response.data.errors);
                        console.log(error.response);
                        if (error.response.status == 422) {
                            $('#title_error').text(error.response.data.errors.title[0]);
                            $('#description_error').text(error.response.data.errors.description[0]);
                            $('#startDate_error').text(error.response.data.errors.startDate[0]);
                            $('#endDate_error').text(error.response.data.errors.endDate[0]);
                            $('#status_error').text(error.response.data.errors.status_error[0]);



                        }
                    })
            });
        })

    </script>




@endsection
