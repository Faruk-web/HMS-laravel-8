@extends('layouts.admin_master')

@section('css')
    <style>
        .content-wrapper{
            margin: 5rem 2rem;
        }

        .card {
            border: none;
            box-shadow: rgb(100 100 111 / 20%) 0px 7px 29px 0px !important;
            border: none !important;
            padding: 0rem 1rem;
            padding-bottom: 1rem;
        }

        .avatar-sm img, .avatar-sm {
            height: 40px;
            width: 40px;
            margin-right: -10px!important;
        }

        .list-inline, .list-unstyled {
            padding-left: 0;
            list-style: none;
        }

        .AddImg img{
            height: 100px;
        }

        .errorColor{
            color: red;
        }

        .anchorButton {
            background: none;
            color: #0d6efd;
            border: none;
            padding: 0;
            font: inherit;
            cursor: pointer;
            outline: inherit;
            font-weight: 700;
            font-size: .875rem;
        }
    </style>
@endsection

@section('super-admin-content')

{{-- modal for add role --}}
<div class="modal fade" id="AddRole" tabindex="-1" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add Role</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"
                    aria-label="Close"></button>
            </div>
            <form id="AddRoleForm" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="row">
                    <div class="col-12" style="padding:1rem 2rem 0rem;">
                        <div class="form-group">
                            <label>Role Name</label><span class="errorColor"> *</span>
                            <input type="text" class="form-control"
                                placeholder="Enter first name" id="user_name" name="name">
                            <span id="error_name" class="errorColor"></span>
                        </div>
                    </div>
                </div>
                <div class="text-danger" id='show_user'>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary"
                        data-bs-dismiss="modal">Close</button>
                    <button type="submit" id="update"
                        class="btn btn-info btn-rounded">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>

{{-- modal for give permission --}}
<div class="modal fade bd-example-modal-lg" id="AddPermission" tabindex="-1" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content" aria-hidden="true">
        <div class="modal-header bg-transparent">
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body px-5 pb-5">
            <div class="text-center mb-4">
            <h1 class="role-title">Add Role</h1>
            <p>Set role permissions</p>
            </div>
            <!-- Add role form -->
            <form id="AddPermissionForm" class="row" method="POST">
                @csrf
            <div class="col-12">
                <h4 class="mt-2 pt-50">Role Permissions</h4>
                <!-- Permission table -->
                <div class="table-responsive">
                <table class="table table-flush-spacing">
                    <tbody>
                    <tr>
                        <td class="text-nowrap fw-bolder">
                        Administrator Access
                        </td>
                        <td>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="select-all">
                            <label class="form-check-label" for="selectAll"> Select All </label>
                        </div>
                        </td>
                    </tr>
                    <input type="hidden" id="role_id" name="role_id">
                    @foreach ($permissions as $permission)
                    <tr>
                        <td class="text-nowrap fw-bolder" >{{ $permission->name }}</td>
                        <td>
                        <div class="d-flex">
                            <div class="form-check me-3 me-lg-5">
                            <input class="form-check-input" name="permission[{{ $permission->name }}][view]" type="checkbox" value="1" >
                            <label class="form-check-label" for="apiRead" value="View"> View </label>
                            </div>
                            <div class="form-check me-3 me-lg-5">
                            <input class="form-check-input" name="permission[{{ $permission->name }}][create]" type="checkbox" value="1" >
                            <label class="form-check-label" for="apiWrite" value="Create"> Create </label>
                            </div>
                            <div class="form-check me-3 me-lg-5">
                            <input class="form-check-input" name="permission[{{ $permission->name }}][edit]" type="checkbox" value="1" >
                            <label class="form-check-label" for="apiEdit" value="Edit"> Edit </label>
                            </div>
                            <div class="form-check me-3 me-lg-5">
                            <input class="form-check-input" name="permission[{{ $permission->name }}][delete]" type="checkbox" value="1" >
                            <label class="form-check-label" for="apiDelete" value="Delete"> Delete </label>
                            </div>
                            <div class="form-check">
                            <input class="form-check-input" name="permission[{{ $permission->name }}][list]" type="checkbox" value="1" >
                            <label class="form-check-label" for="apiDelete" value="List"> List </label>
                            </div>
                        </div>
                        </td>
                    </tr>
                    @endforeach
                    </tbody>
                </table>
                </div>
                <!-- Permission table -->
            </div>
            <div class="col-12 text-center mt-2">
                <button type="submit" class="btn btn-primary me-1 waves-effect waves-float waves-light">Submit</button>
            </div>
            </form>
            <!--/ Add role form -->
        </div>
      </div>
    </div>
</div>

{{-- edit modal for giving permission --}}
<div class="modal fade bd-example-modal-lg" id="EditPermission" tabindex="-1" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content" aria-hidden="true">
        <div class="modal-header bg-transparent">
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body px-5 pb-5">
            <div class="text-center mb-4">
            <h1 class="role-title">Edit Role</h1>
            <p>Set role permissions</p>
            </div>
            <!-- Add role form -->
            <form id="EditPermissionForm" class="row" method="POST">
                @csrf
            <div class="col-12">
                <h4 class="mt-2 pt-50">Role Permissions</h4>
                <!-- Permission table -->
                <div class="table-responsive">
                <table class="table table-flush-spacing">
                    <tbody>
                    <tr>
                        <td class="text-nowrap fw-bolder">
                        Administrator Access
                        </td>
                        <td>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="select-all">
                            <label class="form-check-label" for="selectAll"> Select All </label>
                        </div>
                        </td>
                    </tr>
                    <input type="hidden" id="role_id" name="role_id">
                    @foreach ($permissions as $permission)
                    <tr>
                        <td class="text-nowrap fw-bolder" >{{ $permission->name }}</td>
                        <td>
                        <div class="d-flex">
                            <div class="form-check me-3 me-lg-5">
                            <input class="form-check-input" name="permission[{{ $permission->name }}][add]" type="checkbox" value="1" >
                            <label class="form-check-label" for="apiRead" value="Read"> Read </label>
                            </div>
                            <div class="form-check me-3 me-lg-5">
                            <input class="form-check-input" name="permission[{{ $permission->name }}][write]" type="checkbox" value="1" >
                            <label class="form-check-label" for="apiWrite" value="Write"> Write </label>
                            </div>
                            <div class="form-check me-3 me-lg-5">
                            <input class="form-check-input" name="permission[{{ $permission->name }}][create]" type="checkbox" value="1" >
                            <label class="form-check-label" for="apiCreate" value="Create"> Create </label>
                            </div>
                            <div class="form-check me-3 me-lg-5">
                            <input class="form-check-input" name="permission[{{ $permission->name }}][edit]" type="checkbox" value="1" >
                            <label class="form-check-label" for="apiEdit" value="Edit"> Edit </label>
                            </div>
                            <div class="form-check">
                            <input class="form-check-input" name="permission[{{ $permission->name }}][delete]" type="checkbox" value="1" >
                            <label class="form-check-label" for="apiDelete" value="Delete"> Delete </label>
                            </div>
                        </div>
                        </td>
                    </tr>
                    @endforeach
                    </tbody>
                </table>
                </div>
                <!-- Permission table -->
            </div>
            <div class="col-12 text-center mt-2">
                <button type="submit" class="btn btn-primary me-1 waves-effect waves-float waves-light">Submit</button>
            </div>
            </form>
            <!--/ Add role form -->
        </div>
      </div>
    </div>
</div>

{{-- showing the role list --}}
<div class="content-wrapper">
    <div class="content-header">
        <h3>Roles List</h3>
    </div>
    <div class="content-body">
      <div class="row">
        @foreach ($roles as $role)
            <div class="col-xl-4 col-lg-6 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                        <span>Total  <b> 4</b> users</span>
                        <ul class="list-unstyled d-flex align-items-center avatar-group mb-0">
                            <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="" class="avatar avatar-sm pull-up" data-bs-original-title="Vinnie Mostowy">
                            <img class="rounded-circle" src="{{ asset('/backend') }}/assets/images/users/user-4.jpg" alt="Avatar">
                            </li>
                            <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="" class="avatar avatar-sm pull-up" data-bs-original-title="Allen Rieske">
                            <img class="rounded-circle" src="{{ asset('/backend') }}/assets/images/users/user-3.jpg" alt="Avatar">
                            </li>
                            <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="" class="avatar avatar-sm pull-up" data-bs-original-title="Julee Rossignol">
                            <img class="rounded-circle" src="{{ asset('/backend') }}/assets/images/users/user-2.jpg" alt="Avatar">
                            </li>
                            <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="" class="avatar avatar-sm pull-up" data-bs-original-title="Kaith D'souza">
                            <img class="rounded-circle" src="{{ asset('/backend') }}/assets/images/users/user-1.jpg" alt="Avatar">
                            </li>
                        </ul>
                        </div>
                        <div class="d-flex justify-content-between align-items-end mt-1 pt-25">
                            <div class="role-heading">
                                <h4 class="fw-bolder">{{ $role->name }}</h4>
                                <a href="javascript:;" class="role-edit-modal"   data-bs-toggle="modal" data-bs-target="#addRoleModal">
                                <small class="fw-bolder" data-role_id={{ $role->id }}  data-bs-toggle="modal"
                                 data-bs-target="#AddPermission" >Add Role</small>
                                </a>&nbsp;&nbsp;&nbsp;&nbsp;
                                <button  value="{{ $role->id }}"
                                    class="editBtn anchorButton">Edit Role</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach


        <div class="col-xl-4 col-lg-6 col-md-6 AddImg">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-5">
                                <img class="" src="{{ asset('/backend') }}/assets/images/hekku.svg" alt="Avatar">
                            </div>
                            <div class="col-7 d-flex justify-content-center align-items-center flex-column">
                                <button type="button" class="btn btn-info mb-2 addBtn" data-bs-toggle="modal"
                                 data-bs-target="#AddRole">ADD NEW ROLE</button>
                                 <p class="mb-0">Add role, if it does not exist</p>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
      </div>
    </div>
</div>

@endsection

@section('scripts')
  <script>

      // Listen for click on toggle checkbox
        $('#select-all').click(function(event) {
            if(this.checked) {
                // Iterate each checkbox
                $(':checkbox').each(function() {
                    this.checked = true;
                });
            } else {
                $(':checkbox').each(function() {
                    this.checked = false;
                });
            }
        });

        $(document).ready(function() {

            $('.role-edit-modal').click((e)=>{
                    var role_id= e.target.dataset.role_id;
                    $('#role_id').val(role_id);
            });

            // for adding role permission
            $(document).on('submit', '#AddPermissionForm', function(e) {
                e.preventDefault();
                let formData = new FormData($('#AddPermissionForm')[0]);
                $.ajax({
                    type: "POST",
                    url: "/role/permission/store",
                    data: formData,
                    contentType: false,
                    processData: false,
                    success: function(response) {
                        if (response.status == 400) {
                            $('#error_name').text(response.errors.name);
                        } else if (response.status == 200) {
                            $('#AddPermissionForm').modal('hide');
                            location.reload();
                            toastr.success(response.message);
                        }
                    }
                });
            });

            // for editing permission role
            $(document).on('click', '.editBtn', function() {
                var role_id = $(this).val();
                $('#EditPermission').modal('show');
                $.ajax({
                    type: "GET",
                    url: "/role/permission/edit/" + role_id,
                    success: function(response) {
                        console.log(response.permission.Blood_Bank.add);
                        $('#EditPermission').find(':checkbox[name=permission[Blood_Bank][add]][value="1"]').prop(
                            'checked', true)
                    }
                })
            });

            // for adding role information
            $(document).on('submit', '#AddRoleForm', function(e) {
                e.preventDefault();
                let formData = new FormData($('#AddRoleForm')[0]);
                $.ajax({
                    type: "POST",
                    url: "/role/store",
                    data: formData,
                    contentType: false,
                    processData: false,
                    success: function(response) {
                        if (response.status == 400) {
                            $('#error_name').text(response.errors.name);
                        } else if (response.status == 200) {
                            $('#AddRoleForm').modal('hide');
                            location.reload();
                            toastr.success(response.message);
                        }
                    }
                });
            });
        });

  </script>
@endsection

