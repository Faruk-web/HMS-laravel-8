@extends('layouts.admin_master')

@section('super-admin-content')

    <style>
        .topBar {
            margin-top: 4rem;
        }

        .topBar {
            padding: 2rem;
        }

        .card-title {
            display: flex;
            justify-content: space-between;
        }

        .modal-body .row .col-md-6,
        .modal-body .row .col-md-12 {
            margin-bottom: 1rem;
        }

        .errorColor {
            color: red;
        }

    </style>

    <div class="container-full topBar">

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">



                        <div id="datatable-buttons_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                            <div class="row">
                                <div class="col-sm-12">
                                    <table id="datatable-buttons"
                                        class="table table-striped table-bordered dt-responsive nowrap dataTable no-footer dtr-inline text-center align-middle"
                                        style="border-collapse: collapse; border-spacing: 0px; width: 100%;" role="grid"
                                        aria-describedby="datatable-buttons_info">

                                        <thead>
                                            <tr role="row">
                                                <th rowspan="1" colspan="1" style="width: 120px;">Id</th>

                                                <th rowspan="1" colspan="1" style="width: 120px;">Title</th>
                                                <th rowspan="1" colspan="1" style="width: 120px;"> Description</th>
                                                <th rowspan="1" colspan="1" style="width: 120px;">Start Date</th>
                                                <th rowspan="1" colspan="1" style="width: 120px;">End Date</th>
                                                <th rowspan="1" colspan="1" style="width: 120px;">Status</th>
                                                <th rowspan="1" colspan="1" style="width: 89px;">Actions</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            @foreach ($notices as $notice)
                                                <tr>
                                                    <td>{{ $notice->id }}</td>
                                                    <td>{{ $notice->title }}</td>
                                                    <td>{!! $notice->description !!}</td>
                                                    <td>{{ $notice->startDate }}</td>
                                                    <td>{{ $notice->endDate }}</td>
                                                    <td>{{ $notice->status }}</td>

                                            
                                                    <td>

                                                        <a href="{{route('notice.edit', $notice->id)}}"
                                                            class="btn btn-success">Edit</a>

                                                        <a href="{{route('notice.delete', $notice->id)}}"
                                                            class="btn btn-danger" id="#">Delete</a>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- end col -->
    </div>

@endsection

@section('scripts')


@endsection
