<?php

namespace App\Http\Controllers\Nurse;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Carbon\Carbon;
use App\Models\Nurse\Nurse;
use Illuminate\Support\Facades\Validator;
use Image;
use Illuminate\Validation\Rules\Password;
use Auth;
use App\Models\Employee;

class NurseController extends Controller
{
    // method for all patient data
    public function ViewNurse()
    {
        $auth_id = Auth::guard('admin')->user()->outlet_id;
<<<<<<< HEAD

        $patients = Nurse::latest()->where('outlet_id', $auth_id)->get();

        return view('super_admin.nurse.view_nurse',compact('patients'));
    }

    // method for storing patient data
    public function AddNurse(Request $request){
        $auth_id = Auth::guard('admin')->user()->outlet_id;

    $validator = Validator::make($request->all(), [
        'name' => 'required|max:100',
        'email' => 'required|unique:receptionists|email',               new

             
                    'required',
                    Password::min(8)
                    ->letters()
                    ->numbers()
                ],
        'address' => 'required',
        'phone' => 'required|numeric|digits_between: 1,11',
        'dob' => 'required',
        'blood_group' => 'required',
        'gender' => 'required',
        'age' => 'required|numeric',

    ]);
        if($validator->fails())
            {
                return response()->json([
                    'status'=>400,
                    'errors'=>$validator->messages()
                ]);
            }
        else{
     
                if ($request->file('image')) {
                $patient=new Nurse;
                $patient->outlet_id = $auth_id;

                $patient->name=$request->input('name');
                $patient->email=$request->input('email');
                $patient->password=$request->input('password');
                $patient->address=$request->input('address');
                $patient->phone=$request->input('phone');
                $patient->sex=$request->input('gender');
                $patient->dob=$request->input('dob');
                $patient->age=$request->input('age');
                $patient->blood_group=$request->input('blood_group');
                    $file = $request->file('image');
                    $extension = hexdec(uniqid()).'.'.$file->getClientOriginalExtension();
                    Image::make($file)->resize(300,300)->save('uploads/nurse/'.$extension);
                    $save_url = 'uploads/nurse/'.$extension;
                    $patient->image= $save_url;
                $patient->save();
                return response()->json([
                'status'=>200,
                'message'=>'Nurse Added Successfully.'
            ]);
            }
            else{

                $patient=new Nurse;
                $patient->outlet_id = $auth_id;
                $patient->name=$request->input('name');
                $patient->email=$request->input('email');
                $patient->password=$request->input('password');
                $patient->address=$request->input('address');
                $patient->phone=$request->input('phone');
                $patient->sex=$request->input('gender');
                $patient->dob=$request->input('dob');
                $patient->age=$request->input('age');
                $patient->blood_group=$request->input('blood_group');
                $patient->save();
                return response()->json([
                'status'=>200,
                'message'=>'Nurse Added Successfully.'
            ]);
            }
        }
=======
        $nurses = Employee::latest()->where('outlet_id', $auth_id)->where('user_role', 'Nurse')->get();
        return view('super_admin.nurse.view_nurse', compact('nurses'));
>>>>>>> 5a9a66f7a07c4959aeddfd2ba4f3a3c259fba8db
    }

    // method for editing patient data
    public function EditNurse($id)
    {
        $nurses = Employee::find($id);
        return response()->json([
            'status' => 200,
            'nurse' => $nurses,
        ]);
    }

    // method for updating data
    public function UpdateNurse(Request $request)
    {
        // dd($request->all());
        $validator = Validator::make($request->all(), [
            'user_role' => 'required',
            'name' => 'required',
            'email' => 'required|email',
            'mobile' => 'required|numeric|digits_between: 1,11',
            'gender1' => 'required',
            'address' => 'required',
            'status' => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json([
                'status' => 400,
                'errors' => $validator->messages()
            ]);
        } else {
            if ($request->file('image')) {
                $old_img  = $request->old_image;
                unlink($old_img);
                $employee_id = $request->input('nurse_id');
                $employee = Employee::find($employee_id);
                $employee->user_role = $request->input('user_role');
                $employee->name = $request->input('name');
                $employee->email = $request->input('email');
                $file = $request->file('image');
                $extension = hexdec(uniqid()) . '.' . $file->getClientOriginalExtension();
                Image::make($file)->resize(300, 300)->save('uploads/employee/' . $extension);
                $save_url = 'uploads/employee/' . $extension;
                $employee->image = $save_url;
                $employee->mobile = $request->input('mobile');
                $employee->gender = $request->input('gender1');
                $employee->address = $request->input('address');
                $employee->status = $request->input('status');
                $employee->save();
                return response()->json([
                    'status' => 200,
                    'message' => 'Nurse Added Successfully.'
                ]);
            } else {
                $employee_id = $request->input('nurse_id');
                $employee = Employee::find($employee_id);
                $employee->user_role = $request->input('user_role');
                $employee->name = $request->input('name');
                $employee->email = $request->input('email');
                $employee->mobile = $request->input('mobile');
                $employee->gender = $request->input('gender1');
                $employee->address = $request->input('address');
                $employee->status = $request->input('status');
                $employee->save();
                return response()->json([
                    'status' => 200,
                    'message' => 'Nurse Added Successfully.'
                ]);
            }
        }
    }

    // method for deleting patient data
    public function ReceptionistDelete($id)
    {

        $patient = Employee::findOrFail($id);
        if ($patient->image) {
            $img = $patient->image;
            unlink($img);
        }

        Employee::findOrFail($id)->delete();
        $notification = array(
            'message' =>  'Nurse Deleted Sucessfully',
            'alert-type' => 'info'
        );
        return redirect()->back()->with($notification);
    }
}
