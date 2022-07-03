<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\RolePermission;
use Auth;

class RolePermissionController extends Controller
{
    public function StoreRolePermission(Request $request)
    {
        if (Auth::guard('admin')->check()) {
            $auth_id = Auth::guard('admin')->user()->outlet_id;
        } elseif (Auth::guard('doctor')->check()) {
            $auth_id = Auth::guard('doctor')->user()->outlet_id;
        }

        try {
            RolePermission::create([

                'outlet_id' => $auth_id,
                'role_id' => $request->role_id,
                'permission' => $request->permission,

            ]);

            return response()->json([
                'status' => 200,
                'message' => 'Permission Given Added Successfully.'
            ]);

            // return  json_encode($request->permission, true);
        } catch (\Exception $e) {
            // dd($e);
        }
    }

    public function EditRolePermission($id)
    {
        $rolePermission = RolePermission::find($id);
        return response()->json($rolePermission);
    }
}
