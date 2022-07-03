<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Apointment\Apointment;
use Carbon\Carbon;
use Illuminate\Support\Facades\Validator;
use Image;
use Illuminate\Validation\Rules\Password;
use App\Models\DoctorDept;
use DB;
use App\Models\outlet;
use Illuminate\Support\Facades\Auth;
use App\Models\Doctor;
use Illuminate\Support\Facades\Hash;
use App\Models\Language\Language;


class DoctorController extends Controller
{
    // method for all patient data
    public function index()
    {
        if (Auth::guard('admin')->check()) {
            $auth_id = Auth::guard('admin')->user()->outlet_id;
        } elseif (Auth::guard('super_admin')->check()) {
            $auth_id = Auth::guard('super_admin')->user()->outlet_id;
        } elseif (Auth::guard('employee')->check()) {
            $auth_id = Auth::guard('employee')->user()->outlet_id;
        }

        $doctorDepts = DoctorDept::latest()->get();
        $doctors = Doctor::where('outlet_id', $auth_id)->get();

        return view('super_admin.doctor.view_doctor', compact('doctors', 'doctorDepts'));
    }

    // method for add doctor page
    public function CreateDoctor()
    {

        $outlets = outlet::latest()->get();
        $doctorDepts = DoctorDept::latest()->get();
        return view('super_admin.doctor.add_doctor', compact('outlets', 'outlets', 'doctorDepts'));
    }

    // method for storing patient data
    public function StoreDoctor(Request $request)
    {

        $validator = Validator::make($request->all(), [

            'name' => 'required',
            'email' => 'required|unique:doctors|email',
            'password' => [
                'required',
                Password::min(8)
                    ->letters()
                    ->numbers()
            ],
            'mobile' => 'required|numeric|digits_between: 1,11',
            'sex' => 'required',
            'address1' => 'required',

        ]);

        if ($validator->fails()) {
            return response()->json(
                [
                    //  'status'=>400,
                    'errors' => $validator->errors()
                ],
                422
            );
        } else {
            if (Auth::guard('admin')->check()) {
                $auth_id = Auth::guard('admin')->user()->outlet_id;
            } elseif (Auth::guard('super_admin')->check()) {
                $auth_id = Auth::guard('super_admin')->user()->outlet_id;
            } elseif (Auth::guard('employee')->check()) {
                $auth_id = Auth::guard('employee')->user()->outlet_id;
            }
            //  img upload and save
            if ($request->file('image')) {

                $image = $request->file('image');
                $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
                Image::make($image)->resize(300, 300)->save('uploads/doctor/' . $name_gen);
                $save_url = 'uploads/doctor/' . $name_gen;

                $doctor = new Doctor;
                $doctor->outlet_id = $auth_id;
                $doctor->name = $request->input('name');
                $doctor->email = $request->input('email');
                $doctor->password = Hash::make($request->input('password'));
                $doctor->designation = $request->input('designation');
                $doctor->doc_dept = $request->input('doc_dept');
                $doctor->phone = $request->input('phone');
                $doctor->mobile = $request->input('mobile');
                $doctor->sex = $request->input('sex');
                $doctor->profile = $request->input('profile');
                $doctor->dob = $request->input('dob');
                $doctor->address1 = $request->input('address1');
                $doctor->address12 = $request->input('address12');
                $doctor->city = $request->input('city');
                $doctor->zip = $request->input('zip');
                $doctor->specialist = $request->input('specialist');
                $doctor->age = $request->input('age');
                $doctor->blood_group = $request->input('blood_group');
                $doctor->social_link = $request->input('social_link');
                $doctor->career_title = $request->input('career_title');
                $doctor->short_biography = $request->input('short_biography');
                $doctor->long_biography = $request->input('long_biography');
                $doctor->education_degree = $request->input('education_degree');
                $doctor->status = $request->input('status');
                $doctor->image = $save_url;
                $doctor->save();
                $language_name = $request->language_name;
                $rating = $request->rating;
                foreach ($language_name as $key => $fn) {
                    $data = array(
                        'language_name' => $fn,
                        'rating' => $rating[$key],
                        'doctor_id'  => $doctor->id,
                    );
                    $insert_data[] = $data;
                }
                Language::insert($insert_data);
                return response()->json([
                    'status' => 200,
                    'message' => 'Doctor Added Successfully.'
                ]);
            } else {
                $doctor = new Doctor;
                $doctor->outlet_id = $auth_id;
                $doctor->name = $request->input('name');
                $doctor->email = $request->input('email');
                $doctor->password = Hash::make($request->input('password'));
                $doctor->designation = $request->input('designation');
                $doctor->doc_dept = $request->input('doc_dept');
                $doctor->phone = $request->input('phone');
                $doctor->mobile = $request->input('mobile');
                $doctor->sex = $request->input('sex');
                $doctor->profile = $request->input('profile');
                $doctor->dob = $request->input('dob');
                $doctor->address1 = $request->input('address1');
                $doctor->address12 = $request->input('address12');
                $doctor->city = $request->input('city');
                $doctor->zip = $request->input('zip');
                $doctor->specialist = $request->input('specialist');
                $doctor->age = $request->input('age');
                $doctor->blood_group = $request->input('blood_group');
                $doctor->social_link = $request->input('social_link');
                $doctor->career_title = $request->input('career_title');
                $doctor->short_biography = $request->input('short_biography');
                $doctor->long_biography = $request->input('long_biography');
                $doctor->education_degree = $request->input('education_degree');
                $doctor->status = $request->input('status');
                $doctor->save();
                $language_name = $request->language_name;
                $rating = $request->rating;
                foreach ($language_name as $key => $fn) {
                    $data = array(
                        'language_name' => $fn,
                        'rating' => $rating[$key],
                        'doctor_id'  => $doctor->id,
                    );
                    $insert_data[] = $data;
                }
                Language::insert($insert_data);
                return response()->json([
                    'status' => 200,
                    'message' => 'Doctor Added Successfully.'
                ]);
            }
        }
    }
    // edit DOctor
    public function EditDoctor($id)
    {
        $DoctorDepts = DoctorDept::orderBy('name', 'ASC')->get();

        $doctors = Doctor::findOrfail($id);

        return view('super_admin.doctor.edit_doctor', compact('doctors', 'DoctorDepts'));
    }
    // update Doctor
    public function UpdateDoctor(Request $request)
    {

        $doctor_id = $request->id;
        $old_img  = $request->old_image;

        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required',
            'password' => 'required',
            'mobile' => 'required',
            'sex' => 'required',
            'address1' => 'required',

        ]);
        //   dd(  $validator );
        if ($validator->fails()) {
            return response()->json(
                [
                    'status' => 400,
                    'errors' => $validator->errors()
                ],
            );
            // 422);
        } else {
            $doctor_id = $request->input('id');
            $old_img  = $request->input('old_image');
            if ($request->file('image')) {

                // for image
                unlink($old_img);
                $image = $request->file('image');
                $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
                Image::make($image)->resize(300, 300)->save('uploads/doctor/' . $name_gen);
                $save_url = 'uploads/doctor/' . $name_gen;
                // $patienr_id=$request->input('id');
                $doctor = Doctor::find($doctor_id);
                $doctor->name = $request->input('name');
                $doctor->email = $request->input('email');
                $doctor->password = $request->input('password');
                $doctor->designation = $request->input('designation');
                $doctor->doc_dept = $request->input('doc_dept');
                $doctor->phone = $request->input('phone');
                $doctor->mobile = $request->input('mobile');
                $doctor->sex = $request->input('sex');
                $doctor->profile = $request->input('profile');
                $doctor->dob = $request->input('dob');
                $doctor->address1 = $request->input('address1');
                $doctor->address12 = $request->input('address12');
                $doctor->city = $request->input('city');
                $doctor->zip = $request->input('zip');
                $doctor->specialist = $request->input('specialist');
                $doctor->age = $request->input('age');
                $doctor->blood_group = $request->input('blood_group');
                $doctor->social_link = $request->input('social_link');
                $doctor->career_title = $request->input('career_title');
                $doctor->short_biography = $request->input('short_biography');
                $doctor->long_biography = $request->input('long_biography');
                $doctor->education_degree = $request->input('education_degree');
                $doctor->status = $request->input('status');
                $doctor->image = $save_url;
                $doctor->update();
                return response()->json([
                    'status' => 200,
                    'message' => 'Doctor updated Successfully.'
                ]);
            } else {
                $doctor = Doctor::find($doctor_id);
                $doctor->name = $request->input('name');
                $doctor->email = $request->input('email');
                $doctor->password = $request->input('password');
                $doctor->designation = $request->input('designation');
                $doctor->doc_dept = $request->input('doc_dept');
                $doctor->phone = $request->input('phone');
                $doctor->mobile = $request->input('mobile');
                $doctor->sex = $request->input('sex');
                $doctor->profile = $request->input('profile');
                $doctor->dob = $request->input('dob');
                $doctor->address1 = $request->input('address1');
                $doctor->address12 = $request->input('address12');
                $doctor->city = $request->input('city');
                $doctor->zip = $request->input('zip');
                $doctor->specialist = $request->input('specialist');
                $doctor->age = $request->input('age');
                $doctor->blood_group = $request->input('blood_group');
                $doctor->social_link = $request->input('social_link');
                $doctor->career_title = $request->input('career_title');
                $doctor->short_biography = $request->input('short_biography');
                $doctor->long_biography = $request->input('long_biography');
                $doctor->education_degree = $request->input('education_degree');
                $doctor->status = $request->input('status');
                $doctor->update();
                return response()->json([
                    'status' => 200,
                    'message' => 'Doctor updated Successfully.'
                ]);
            }
        }
    } // method end
    // delete sub category

    // method end
    // delete sub category

    public function DeleteDoctor($id)
    {

        $doctor = Doctor::findOrFail($id);

        $img = $doctor->image;
        unlink($img);

        Doctor::findOrFail($id)->delete();

        $notification = array(
            'message' =>  'Doctor  Deleted Sucessyfully',
            'alert-type' => 'info'
        );

        return redirect()->back()->with($notification);
    } // end method


    // all doctor view in dashboard
    public function AllDoctorView()
    {

        $listdoctors = Doctor::latest()->get();
        return view('super_admin.doctor.list_doctor', compact('listdoctors'));
    }


    // single doctor view in dashboard
    public function SingleDoctorView($id)
    {
        $doctor = Doctor::find($id);

        $appointments = Apointment::where('doctor_id', $id)->count();
        $appointmentsAll = Apointment::where('doctor_id', $id)->get();
        // dd($appointmentsAll);
        return view('super_admin.doctor.single_doctor', compact('doctor', 'appointments', 'appointmentsAll'));
    }

    // // for doctor dashboard view
    public function DashboardView()
    {
        return view('Dashboards.doctor');
    }
}
