<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Permission;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;

class PermissionController extends Controller
{
    public function AddPermission()
    {
        $permissions = Permission::all();
        return view('super_admin.roles_permissioon.add_permission', compact('permissions'));
    }
    public function StorePermission(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 400,
                'errors' => $validator->messages()
            ]);
        } else {
            $permission = new Permission;
            $str = $request->input('name');
            $new_str = str_replace(' ', '_', $str);
            $permission->name = ucwords($new_str);
            $permission->save();
            return response()->json([
                'status' => 200,
                'message' => 'Permission Added Successfuly',
            ]);
        }
    }
}
