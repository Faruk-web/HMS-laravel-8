<?php

namespace App\Http\Controllers\Notice;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Notice;
use Carbon\Carbon;
use Illuminate\Support\Facades\Validator;
use Image;
use Illuminate\Validation\Rules\Password;

class NoticeController extends Controller      
{

     // method for view notice page
     public function viewNotice()
     {
        $notices = Notice::latest()->get();
//  dd($notices );

         return view('notice.view_notice',compact('notices'));
     }

    // method for add notice page
    public function addNotice()
    {
        return view('notice.add_notice');
    }

   // method for storing notice data
     public function StoreNotice(Request $request){

        // dd($request->all());
        $validator = Validator::make($request->all(), [
           'title' => 'required',
           'description' => 'required',
           'startDate' => 'required',
            'endDate' => 'required',
            'status' => 'required', 
       ]);
        
    
       if($validator->fails())
       {
           return response()->json([
              //  'status'=>400,
               'errors'=>$validator->errors()
           ],
          422);
       }
       else{
          

        Notice::create([
            'title' => $request->title,
            'description' => $request->description,
            'startDate' => $request->startDate,
            'endDate' => $request->endDate,
            'status' => $request->status,
           
        ]);

         }
    }

  // edit Notice
  public function editNotice($id){

$notice = Notice::findOrfail($id);



return view('notice.edit_notice', compact('notice'));

}


public function updateNotice(Request $request)
{
    $updateNoticeID = $request->id;
    //dd($updateNoticeID) ;

        $validator = Validator::make($request->all(), [
            'title' => 'required',
            'description' => 'required',
            'startDate' => 'required',
             'endDate' => 'required',
             'status' => 'required', 
       ]);
          
       if($validator->fails())
       {
           return response()->json([
               'status'=>400,
               'errors'=>$validator->errors()
           ],
         );
          // 422);
       }
      
       
         
       else{
        Notice::findOrFail($updateNoticeID)->update([
            'title' => $request->title,
            'description' => $request->description,
            'startDate' => $request->startDate,
            'endDate' => $request->endDate,
            'status' => $request->status,
            ]);






            return response()->json([
               'status'=>200,
               'message'=>'Doctor updated Successfully.'
           ]);
       }
     }
 // method end
 

    public function deleteNotice($id)
    {
      
        Notice::findOrFail($id)->delete();

                $notification = array(
                'message' =>  'Notice  Deleted Sucessyfully',
                'alert-type' => 'info'
                ); 

            return redirect()->back()->with($notification);
    } // end method


}
