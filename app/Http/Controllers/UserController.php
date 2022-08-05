<?php
namespace App\Http\Controllers;
use DB;
use View;
use Response;
use Carbon\Carbon;
use App\Models\User;
use App\Models\Survey;
use App\Helpers\Helper;
use App\Models\Settings;
use App\Models\SurveyUsers;
use Illuminate\Http\Request;
use App\Exports\SurveyExport;
use App\Models\Notifications;
use App\Models\SurveyPublish;
use App\Models\SurveyQusetions;
//use Maatwebsite\Excel\Facades\Excel;
use App\Models\SurveyUsersQstOptions;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Excel;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Writer\Xls;
class UserController extends Controller
{
    //Survey Login
    public function login(Request $request) 
    {          
        try{
            $user = User::where('mobile',$request->input('mobile'))
            ->where('area_code',$request->input('area_code'))->first();
            if($user) 
            { 
            $otp_text =env('OTP_TEXT');   
            //$code = mt_rand(1000, 9999);
            $code = 9999;
            $user = User::find($user->id); 
            $user->otp = $code;
            $user->save();

            //Twilio::message($request->input('area_code').' '.$request->input('mobile'), $otp_text.$code);

            return response(['success'=>true,"message"=>"Login success",'user'=> $user,'status'=>200], 200);
            }
            else
            {
            return response()->json(['error'=>'Entered Mobile number not exist', 'status'=>201], 201);
            }
        }
        catch (\Throwable $th) {
            $response = ["success"=>false,"message"=>"exception","status"=>204];        
            return response($response, 204);
        }
    }

    //Survey Register
    public function Register(Request $request) 
    {
        try {
            $input = $request->all();           
            $validator = Validator::make($request->all(), [
              'email' => 'required|string|email|max:255|unique:users',
              'mobile' => 'required|string|min:10|max:12|unique:users',
            ]);
            if($validator->fails()) { 
              return response(['success'=>false,'error'=>$validator->errors()->first(), 'status'=>222], 222);
            }
            $otp_text =env('OTP_TEXT'); 
            $code = 9999;  
            //$code = mt_rand(1000, 9999);            
            //LaravelMsg91::sendOtp($request->input('mobile'),$code, 'Your Survey otp for phone verification is'. $code);
            //Twilio::message($request->input('area_code').' '.$request->input('mobile'), $otp_text.$code);
            $user = new User();
            $user->user_name = $request->input('user_name');  
            $user->email = $request->input('email');
            $user->mobile = $request->input('mobile');
            $user->area_code = $request->input('area_code');
            $user->otp = $code;
            $user->latitude = $request->input('latitude');
            $user->longitude = $request->input('longitude');
            $user->save();
            return response(['success'=>true,'user'=>$user,'status_code'=>200], 200);            
        } 
        catch (Exception $e)
        {
            return response(['error'=>$e->errors()->first(), 'status_code'=>401], 401); 
        }
    }
    //end register

    //Otp survey
    public function otpValidation(Request $request) 
    {       

      try {
            $input = $request->all(); 
            $user = User::where('mobile',$request->input('mobile'))->where('area_code',$request->input('area_code'))->first();                    
            if(isset($user)){
              if($user->otp == $request->input('otp'))
              {
                $data['user']=$user;
               // $data['token'] =  $user->createToken('Laravel Password Grant Client')->accessToken;                             
                $response = ["success"=>true,"message"=>"otp confirmed successfully","data"=>$data,"status"=>200];
                return response($response,200);  
              }
              else
              { 
                $response = ["success"=>false,"message"=>"Invalid otp","status"=>201];
                return response($response,201);  
              } 
            }  
            else{
                  $response = ["success"=>false,"message"=>"Invalid mobile_number or email","status"=>201];
                  return response($response,201);
                }                     
            } catch (Exception $th) {
              $response = ["success"=>false,"message"=>"Please Try Again","status"=>204];
              return response($response,204); 
          }          
    }  
    //end Otp

    //ResendOtp
    public function reSendOtp(Request $request)
    {
        try
        {  
            $input = $request->all();                    
            //$otp = rand(1000, 9999);
            $otp = 9999;
            $user = User::where('mobile','=',$request->input('mobile'))->where('area_code',$request->input('area_code'))->first();
            if($user != [] || $user != 0)
            {    
              $otp_text =env('OTP_TEXT');             
              $user->otp = $otp;
              $user->save(); 
              //Twilio::message($request->input('area_code').' '.$request->input('mobile'), $otp_text.$otp);
              //LaravelMsg91::sendOtp($request->input('mobile'),$otp, 'Your Survey otp for phone verification is'. $otp);
              return response(['success'=>true,'message'=>'OTP sent succesfully','otp'=>$otp,'status'=>200], 200);
            }
            else
            {                
              $response = ["success"=>false,"message"=>"Your Mobile number is wrong","status"=>202];
              return response($response,202); 
            }
        }
        catch (\Throwable $th) {
             $response = ["success"=>false,"message"=>"Please Try Again","status"=>201];        
             return response($response, 201);
        }    
    }  

    //Get Existing Contacts
    public function getExistingContacts()
    {
       $users = DB::table('users')->select('id as user_id','mobile as mobile_number','area_code')->get();
       return  response(['status'=>'success','users' => $users ,'status_code'=>200],200);
    }

    //Country codes
    public function CountryCodes()
    {
       $countrycodes = ['IND'=>'+91','USA'=>'+1'];
       return response(['success'=>true,'countrycodes'=>$countrycodes,'status'=>200],200);
    }

    //Profile Edit
    public function profileEdit(Request $request)
    {
        $user = DB::table('users')->where('mobile', $request->mobile)->first();
        if ($user)
        {
            $user_update = User::find($user->id);
            $user_update->user_name = $request->name;
            $user_update->email = $request->email;
            $user_update->photo = $request->image;
            $user_update->save();
            $file_path = env('FILE_PATH').'/profilepics';
            return  response(['status'=>'success','message' =>'Profile updated succesfully','file_path'=>$file_path,'status_code'=>200],200);
        }
        else{
          return response(['success'=>true,'message'=>'Mobile number not exist','status'=>201],201);
        }
   }

   //updateLocation
  public function updateLocation(Request $request)
  { 
      $user = DB::table('users')->where('id', $request->user_id)->first();
      if ($user)
      {
        $user_update = User::find($user->id);
        $user_update->latitude = $request->latitude;
        $user_update->longitude = $request->longitude;
        $user_update->save();
        return  response(['status'=>'success','message' =>'Location updated succesfully','status_code'=>200],200);
      }
      else{
        return response(['success'=>true,'message'=>'User not exist','status'=>201],201);
      }
  }

  //Setting
  public function Settings(Request $request)
  {
       $user = DB::table('users')->where('id', $request->user_id)->get();
       if($user)
       {
        $settings = DB::table('settings')->where('user_id', $request->user_id)->first();
        if($settings != '')
        {
          $settings = Settings::find($settings->setting_id);
          $settings->all = $request->all;
          $settings->mysurveys_responses = $request->mysurveys_responses; 
          $settings->new_surveys = $request->new_surveys;
          $settings->all_surveys = $request->all_surveys;
          $settings->all_responses = $request->all_responses;
          $settings->off = $request->off;
          $settings->nearby_users = $request->nearby_users;
          $settings->save();
        }
        else
        {
          $settings = new Settings();
          $settings->user_id = $request->user_id;
          $settings->all = $request->all;
          $settings->mysurveys_responses = $request->mysurveys_responses; 
          $settings->new_surveys = $request->new_surveys;
          $settings->all_surveys = $request->all_surveys;
          $settings->all_responses = $request->all_responses;
          $settings->off = $request->off;
          $settings->nearby_users = $request->nearby_users;
          $settings->save();
        }
       return  response(['status'=>'success','message' =>'Settings updated succesfully','settings'=>$settings,'status_code'=>200],200);
     }
     else{
        return response(['success'=>true,'message'=>'User not exist','status'=>201],201);
    }
  }

  //NearBy 
  public function Nearby(Request $request)
  {
     $user_id = $request->user_id;
     $lat = $request->latitude;
     $long = $request->longitude;
     $distance = $request->distance; 
      $users = DB::table('users')->select('users.id','users.user_name',/*'users.area_code',*/'users.mobile','users.email',DB::raw('6371 * acos(cos(radians(' . $lat . ')) 
      * cos(radians(users.latitude)) 
      * cos(radians(users.longitude) - radians(' . $long . ')) 
      + sin(radians(' .$lat. ')) 
      * sin(radians(users.latitude))) AS distance'))
      ->groupBy('users.id','users.user_name',/*'users.area_code',*/'users.mobile','users.email','users.latitude','users.longitude')
      ->having('distance', '<', 500)
      ->where('users.id','!=',$user_id)
      ->orderBy('distance')
      ->get();
      return  response(['status'=>'success','users'=>$users,'status_code'=>200],200);
  } 

  //GetProfile
  public function getProfile(Request $request)
  {
      $user = DB::table('users')->where('id', $request->user_id)->first();
      if($user)
      {
          $details = DB::table('users')->where('id', $request->user_id)
                                       ->leftJoin('survey','survey.user_id','=','users.id')
                                       ->select('users.id as user_id','users.user_name','users.email','users.mobile','users.photo',DB::raw('count(survey.user_id) as total_surveys'))
                                       ->groupBy('survey.user_id','users.id','users.user_name','users.email','users.mobile','users.photo')
                                       ->first();
          $responses = DB::table('users')->where('id', $request->user_id)
                                       ->leftJoin('survey','survey.user_id','=','users.id')
                                       ->leftJoin('survey_users_qst_options','survey_users_qst_options.survey_id','=','survey.survey_id')
                                       ->select(DB::raw('count(distinct survey_users_qst_options.survey_id) as total_responses'))
                                       ->groupBy('survey.user_id')
                                       ->first();
          $details->total_responses = $responses->total_responses;
          $file_path = env('FILE_PATH').'/profilepics';
        return response(['status'=>'success','details'=>$details,'file_path'=>$file_path,'status_code'=>200],200); 
      } 
      else{
              return response(['success'=>true,'message'=>'User not exist','status'=>201],201);
      }                           
  }

  //Get Settings
  public function getSettings(Request $request)
  {
      $user = DB::table('users')->where('id', $request->user_id)->first();
      if($user)
      {
          $settings = DB::table('settings')->where('user_id', $request->user_id)
                                       //->select('id as user_id','user_name','email','mobile')
                                       ->get();
        return response(['status'=>'success','settings'=>$settings,'status_code'=>200],200); 
      } 
      else
      {
        return response(['success'=>true,'message'=>'User not exist','status'=>201],201);
      }                           
  }

  //Image Upload
  public function ImageUpload(Request $request)
  {    
    if($request->image != '')
    {
      $photo=Helper::upload_file($request->image, 'survey');
    }
    else
    {
      $photo = "";
    }    
    //Updated Db for Profile pic
    $user_update = User::find($request->user_id);    
    $user_update->photo = $photo;
    $user_update->save();    
    $file_path = env('FILE_PATH').'/survey';
    return response(['status'=>'success','photo'=>$photo,'file_path'=>$file_path,'status_code'=>200],200);    
  }

  //ProfilePic Upload
  public function ProfilePicUpload(Request $request)
  {
    if($request->image != '')
    {
      $photo=Helper::upload_file($request->image, 'profilepics');
    }
    else
    {
      $photo = "";
    }

    $file_path = env('FILE_PATH').'/profilepics';
    return response(['status'=>'success','photo'=>$photo,'file_path'=>$file_path,'status_code'=>200],200);    
  }

  //Survey List 
  public function surveylist(Request $request)
  {
      $user = DB::table('users')->where('id',$request->input('user_id'))->first();
      if($user != '')
      {
        $surveys = DB::table('survey')->where('user_id','=',$user->id)
                                      ->select('survey_id','survey_name','survey_desc','photo')->get();
        $SurveyList = [];
        foreach ($surveys as $key => $value) {
          $SurveyList[]=$value;
        }
       return  response(['status'=>'success','data' => $SurveyList,'status_code'=>200],200);
      }
      else
      {
         return  response(['status'=>'success','data' => 'User not exist','status_code'=>201],201);
      } 
  }

  //Survey Create
    public function Surveycreate(Request $request)
  {
    $survey_title=$request->survey_name;
    $survey_desc = $request->survey_desc;
    $user_id = $request->user;
    $photo = $request->image;
    //genarting survey id
    $survey_id = DB::table('survey')->insertGetId( ['user_id' => $user_id,'survey_name' => $survey_title,'survey_desc' => $survey_desc,'view_toall'=>$request->view_toall,'start_date'=>$request->start_date,'end_date'=>$request->end_date,'photo'=>$photo]);

    if($survey_id)
    {
     foreach ($request->questions_data as $key => $value)
     {
         $options_count = count($value['options']['0']);

         //genarting question id
         $question_id =DB::table('survey_questions')->insertGetId( ['survey_id' => $survey_id,'user_id' => $user_id, 'question_text' => $value['question_text'],'question_type' => $value['question_type'],'options_count'=>$options_count]);
          if($value['question_type'] == 'Linear Scale')
          {
            $Linear=DB::table('linear_scale')->insert( ['survey_id' => $survey_id,'user_id' => $user_id, 'question_id' => $question_id,'min_value' => $value['options']['min_value'],'max_value'=>$value['options']['max_value'],'step_value'=>$value['options']['step_value']]);
          }
          else
          {             
            $table = $value['question_type'].'_'.$options_count;
            
            //Creating option related table
            $tb_result = DB::select("SHOW TABLES LIKE '".$table."'");
            if(count($tb_result) == 0)
            {              
                //echo "Table does not exist";
                $option_table = "CREATE TABLE ".$table."
                (
                id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                survey_id INT NOT NULL,
                user_id INT NOT NULL,
                question_id INT NOT NULL,";
                for($i= 0; $i<$options_count;$i++ ) 
                {
                    $option_table .= "option_".$i. " varchar(255),";
                }
                $option_table .= "created_at TIMESTAMP NOT NULL DEFAULT NOW(),
                updated_at TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE now()
                )ENGINE=InnoDB DEFAULT CHARSET=utf8;";
                $create_dynamic_table = DB::statement($option_table);                    
            }
            else
            {
                //echo "Table already exist";
            }

            //Inserting option data             
            $option_db = "INSERT INTO ".$table."(survey_id,user_id,question_id,";
            for($i= 0; $i<$options_count;$i++ ) 
            {
                if($i == ($options_count-1)) {
                    $option_db .="option_$i";
                }
                else{
                    $option_db .="option_$i,";
                }
            }
            $option_db .= ") VALUES ('{$survey_id}',$user_id,'{$question_id}',";
            for($i= 0; $i<$options_count;$i++ )
            {
                if($i == ($options_count-1)) {                  
                    $option_db .="'{$value['options']['0'][$i]}'";
                }
                else{
                    $option_db .="'{$value['options']['0'][$i]}',";
                }
            }
            $option_db .=")";
            $option_data=DB::statement($option_db); 
        }
    }
      $file_path = env('FILE_PATH').'/survey';

      return  response(['status'=>'success','message'=>'Survey created succesfully','status_code'=>200,'survey_id'=> $survey_id,'file_path'=>$file_path],200); 
    }
    else
    {
      return  response(['status'=>'success','message'=>'Something went wrong','status_code'=>201],201);
    }
  }

    //Survey Details
    public function survey_details(Request $request)
    {
        $user_id=$request->user_id;
        //$sender_id = $request->sender_id;
        $survey_id = $request->survey_id;  
        $survey_details = DB::table('survey')->where('survey.survey_id',$survey_id)
                                             ->join('survey_users','survey_users.survey_id','=','survey.survey_id')
                                             ->select('survey.survey_id','survey.survey_name','survey.survey_desc','survey.photo','survey.view_toall','survey_users.surveyuser_id')
                                             ->where('survey_users.user_id',$user_id)
                                             ->get();

        $survey_qtns = DB::table('survey_questions')//->where('user_id','=',$sender_id)
                                                   ->where('survey_id','=',$survey_id)->get(); 
        $survey_questions =[];
        if(count($survey_qtns) > 0)
        {
            $i=0;
            foreach ($survey_qtns as $key => $row) {            
                $survey_questions[$i]['question_id'] = $row->question_id;
                $survey_questions[$i]['question_text'] = $row->question_text;
                $survey_questions[$i]['question_type'] = $row->question_type;
                if($row->question_type == 'Linear Scale')
                {
                    $options_query =DB::table('linear_scale')->where('question_id','=',$row->question_id)->get();
                    if(count($options_query) > 0){
                      $j = 0;
                      $survey_options[$j]=[];
                      foreach ($options_query as $key => $value) {                  
                          $survey_options[$j]['min_value'] = $value->min_value;
                          $survey_options[$j]['max_value'] = $value->max_value;
                          $survey_options[$j]['step_value'] = $value->step_value;
                          $survey_questions[$i]['questionGroup'] = $survey_options[$j];
                      }
                    }
                    $survey_questions[$i]['questionGroup']['options'] = [];
                }
                else{            
                    $options_query =DB::table($row->question_type."_".$row->options_count)
                                              ->where('question_id','=',$row->question_id)->get();
                    if(count($options_query) > 0){
                      $j = 0;
                      foreach ($options_query as $key => $value) {
                          $survey_options[$j]=[];                  
                            for($k = 0; $k<$row->options_count;$k++){
                                $option = "option_".$k; //ok now                                          
                                $survey_options[$j][$k]['OptionText'] = $value->$option;
                            }
                            $survey_questions[$i]['questionGroup']['min_value'] = '';
                            $survey_questions[$i]['questionGroup']['max_value'] = '';
                            $survey_questions[$i]['questionGroup']['step_value'] = '';
                            $survey_questions[$i]['questionGroup']['options'] = $survey_options[$j];
                                $j++;
                      }
                    }   
                }
                $i++;                                     
            } 
            $file_path = env('FILE_PATH').'/survey';
            return  response(['status'=>'success','survey_details'=>$survey_details,'survey_questions' => $survey_questions,'file_path'=>$file_path,'status_code'=>200],200);        
        }
        else
        {
           return  response(['status'=>'success','data' => 'No results','status_code'=>201],201);
        }       
    }

    //Number of Questions
    public function Numofqtns()
    {
      $noq=['1'=>'1 Question','2'=>'2 Questions','3'=>'3 Questions','4'=>'4 Questions','5'=>'5 Questions','6'=>'6 Questions','7'=>'7 Questions','8'=>'8 Questions','9'=>'9 Questions','10'=>'10 Questions'];
      
      return  response()->json(['status'=>'success','data' => $noq,'status_code'=>200],200);    
    }

    //Question Type
    public function Questionstype()
    {
      $questions_type = ['1'=>'RadioButton','2'=>'CheckBox','3'=>'DropDown'/*,'4'=>'Linear Scale'*/];    
      return  response(['status'=>'success','data' => $questions_type,'status_code'=>200],200);    
    }

    //Survey Edit
      public function SurveyEdit(Request $request)
  {
    $survey_id = $request->survey_id;
    $survey_title=$request->survey_name;
    $survey_desc = $request->survey_desc;
    $photo = $request->image;
    $user_id=$request->user;

    //genarting survey id
    $survey = DB::table('survey')->where('survey_id',$survey_id)->first(); 
    
    if($survey !='')
    {
      $survey_id = $survey->survey_id;
      $survey = DB::table('survey')->where('survey_id',$survey_id)->update(['survey_name' => $survey_title,'survey_desc' => $survey_desc,'photo'=>$photo]); 
    
     foreach ($request->questions_data as $key => $value)
     {
         $options_count = count($value['options']['0']);
         $question_id = $value['question_id'];
         //GET EXISTING DATA 
         $existing_question_data = DB::table('survey_questions')->where('survey_id',$survey_id)->where('question_id',$value['question_id'])->first();

         if( $existing_question_data->question_type == $value['question_type'] ){
            $question = DB::table('survey_questions')->where('survey_id',$survey_id)->where('question_id',$value['question_id'])->update(['question_text' => $value['question_text'],'options_count'=>$options_count]);
         }
         else{
          $question = DB::table('survey_questions')->where('survey_id',$survey_id)->where('question_id',$value['question_id'])->update(['question_text' => $value['question_text'],'question_type'=>$value['question_type'],'options_count'=>$options_count]);
         }
        $existing_table = $existing_question_data->question_type.'_'.$existing_question_data->options_count;
        $options = DB::table("$existing_table")->where('survey_id',$survey_id)->where('question_id',$value['question_id'])->delete();        
        $table = $value['question_type'].'_'.$options_count;
        //Creating option related table
        $tb_result = DB::select("SHOW TABLES LIKE '".$table."'");
        if(count($tb_result) == 0)
        {
            //echo "Table does not exist";
            $option_table = "CREATE TABLE ".$table."
            (
            id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
            survey_id INT NOT NULL,
            user_id INT NOT NULL,
            question_id INT NOT NULL,";
            for($i= 0; $i<$options_count;$i++ ) 
            {
                $option_table .= "option_".$i. " varchar(255),"; 
            }
            $option_table .= "created_at TIMESTAMP NOT NULL DEFAULT NOW(),
            updated_at TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE now()
            );";
            $create_dynamic_table = DB::statement($option_table);                    
        }
        else
        {
            //echo "Table already exist";
        }

        //Inserting option data             
        $option_db = "INSERT INTO ".$table."(survey_id,user_id,question_id,";
        for($i= 0; $i<$options_count;$i++ ) 
        {
            if($i == ($options_count-1)) {
                $option_db .="option_$i";
            }
            else{
                $option_db .="option_$i,";
            }
        }
        $option_db .= ") VALUES ('{$survey_id}',$user_id,'{$question_id}',";
        for($i= 0; $i<$options_count;$i++ )
        {
            if($i == ($options_count-1)) {
                $option_db .="'{$value['options']['0'][$i]}'";
            }
            else{
                $option_db .="'{$value['options']['0'][$i]}',";
            }
        }
        $option_db .=")";
        $option_data=DB::statement($option_db); 
        //print_r($option_data);  
    }
      return  response(['status'=>'success','message'=>'Survey Edited succesfully','status_code'=>200],200); 
    }
    else
    {
      return  response(['status'=>'success','message'=>'Survey not found','status_code'=>201],201);
    }    
  }

  //Survey delete
    public function SurveyDelete(Request $request)
  {
    $survey_id = $request->survey_id;
    $survey = DB::table('survey')->where('survey_id','=',$survey_id)->first();
    //$survey_id = $survey->id;
    if($survey != '')
    {
      $survey = DB::table('survey')->where('survey_id','=',$survey->survey_id)->delete();
      $question = DB::table('survey_questions')->where('survey_id','=',$survey_id)->delete();
      return  response(['status'=>'success','message' => 'Survey Deleted succesfully' ,'status_code'=>200],200);        
    }
    else
    {
      return  response(['status'=>'success','message' => 'Survey Not Found','status_code'=>201],201);
    }   
  }

  //QuestionDelete
  public function QuestionDelete(Request $request)
  {
    $qstn_id = $request->question_id;
    $qstn = DB::table('survey_questions')->where('question_id','=',$qstn_id)->first();
       
    if($qstn != '')
    {
      $qstn_id = $qstn->question_id;
      $question = DB::table('survey_questions')->where('question_id','=',$qstn_id)->delete();
      return  response(['status'=>'success','message' => 'Question Deleted succesfully' ,'status_code'=>200],200);        
    }
    else
    {
      return  response(['status'=>'success','message' => 'Question Not Found','status_code'=>201],201);
    }   
  }

  //Option Delete
  public function OptionsDelete(Request $request)
  {
    $option_id = $request->option_id;
    $qstn_type = $request->question_type;
    $count = $request->options_count;
    $table = $qstn_type.'_'.$count;    
    $option = DB::table($table)->where('id', $option_id)->first();        
    if($option != '')
    {
      $delete = DB::table($table)->where('id', $option_id)->delete();

      return  response(['status'=>'success','message' => 'Options Deleted succesfully' ,'status_code'=>200],200);       
    }
    else
    {
      return  response(['status'=>'success','message' => 'Options Not Found','status_code'=>201],201);
    }   
  }

  //Survey Users
  public function SurveyUsers(Request $request)
  {
    $surveyusers = new SurveyUsers();
    $surveyusers->survey_id = $request->survey_id;
    $surveyusers->user_id = $request->user_id;
    $surveyusers->save();

    return  response(['status'=>'success','data' => $surveyusers,'status_code'=>200],200);
  }

  //SurveyUsersQstnopt
  public function SurveyUserqstnOpt(Request $request)
  {
    $surveyuser = DB::table('survey_users')->where('surveyuser_id', $request->surveyuser_id)->first();
    $user = DB::table('survey_publish')->where('survey_id',$surveyuser->survey_id)
                                       ->join('users','users.id','=','survey_publish.created_by')
                                       ->select('users.mobile as mobile','users.area_code')
                                       ->first();
    if($surveyuser!= '')
    {
      foreach ($request->options_data as $key => $value) 
      {   
          $opt_txt = implode(",", $value['opt_txt']);
          $selected_options = implode(",", $value['selected_options']);

          $survey = new SurveyUsersQstOptions();
          $survey->surveyuser_id = $request->surveyuser_id;
          $survey->survey_id = $request->survey_id;
          $survey->mobile = $request->mobile;
          $survey->question_id = $value['question_id'];
          $survey->qstn_type = $value['question_type'];
          $survey->opt_txt = $opt_txt;
          $survey->selected_options = $selected_options;
          $survey->options_count = $value['options_count'];
          $survey->save();
      }
      if($survey->qstoption_id != '')
      {
        if($request->notification_id != '') 
        {
         $status = DB::table('notifications')->where('notify_id',$request->notification_id)
                                            ->update(['status'=>1]);
        }
          $notification = new Notifications();
          $notification->mobile_number = $user->mobile;
          $notification->area_code = isset($user->area_code) ? $user->area_code : '+91' ;         
          $notification->created_by = $surveyuser->user_id;
          $notification->survey_id = $request->survey_id;
          $notification->notification_type = 'notification';
          $notification->message = 'Survey Response';
          $notification->self_note = 0;
          $notification->save();
      } 
      return  response(['status'=>'success','message' => 'Answers Submitted successfully' ,'status_code'=>200],200);
    }
    else
    {
      return  response(['status'=>'success','message' => 'Survey User not exist','status_code'=>201],201);
    }
  }  
  //Survey publish
    public function SurveyPublish(Request $request)
  {
    $tb_result = DB::select("SHOW TABLES LIKE 'survey_publish'");
    if(count($tb_result) == 0)
    {
       $surveypublish_table ="CREATE TABLE survey_publish (
          publish_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
          survey_id INT NOT NULL,
          created_by INT NOT NULL,
          published_to TEXT NOT NULL,
          status INT NOT NULL DEFAULT 0,
          created_at TIMESTAMP NOT NULL DEFAULT NOW(),
          updated_at TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE now()
      );";
       $create_dynamic_table = DB::statement($surveypublish_table); 
    }

    $published_to = implode(",", $request->get('published_to'));        
    $publishdata = DB::table('survey_publish')->where('survey_id',$request->survey_id)->where('created_by',$request->created_by)->first();                                                                                                 
    $survey = Survey::find($request->survey_id);
    $mobile = $survey->surveyUsersQstOptions->pluck('mobile');     
    if($publishdata)
    {
      $publish[0] = $publishdata->published_to;
      $publish[1] = $published_to;
      $publish_value = implode(',', [$publish[0],$publish[1]]);            
      /* To get unique data*/
      $mem = explode(',', $publish_value);
      $collection = collect($mem);
      $unique_data = $collection->unique()->values()->all();
      $publish_unique = implode(",", $unique_data);      
      /*unique data end*/ 
      $publish_update = DB::table('survey_publish')->where('survey_id',$request->survey_id)
                                          ->where('created_by',$request->created_by)
                                          ->update(['published_to' => $publish_unique]);                                          
      $publish = DB::table('survey_publish')->where('survey_id',$request->survey_id)
                                          ->where('created_by',$request->created_by)->first();
    }
    else
    {
      $publish = new SurveyPublish();
      $publish->survey_id = $request->survey_id;
      $publish->created_by = $request->created_by;
      $publish->published_to = $published_to;
      $publish->status = $request->status;
      $publish->save();
    }
    $count = sizeof(explode(',', $published_to));
      foreach ($request->published_to as $key => $value) 
      {  
        if(!in_array($value,$mobile->toArray())){
          print_r($value);   
          $number = substr($value, -10);
          $area_code = substr($value, 0, -10); 
          if($area_code != '')
          {
            $area = $area_code;
          }
          else{
            $area = 'NULL';
          }      
          $number_exist = DB::table('users')->where('mobile', $number)->first();                                                 
          if($number_exist!='')
          {
            $note = DB::table('notifications')->where('mobile_number',$number)->where('survey_id',$request->survey_id)->first();            
            if($note == '')
            {        
              $notification = new Notifications();
              $notification->mobile_number = $number;
              $notification->area_code = $area;          
              $notification->created_by = $request->created_by;
              $notification->survey_id = $request->survey_id;
              $notification->notification_type = 'notification';
              $notification->message = 'Customer Feedback';
              $notification->save();
              $surveyusers = new SurveyUsers();
              $surveyusers->survey_id = $request->survey_id;
              $surveyusers->user_id = $number_exist->id;
              $surveyusers->save();
            }
          }
          else { 
            $notification = new Notifications();
            $notification->mobile_number = $number;
            $notification->area_code = $area;          
            $notification->created_by = $request->created_by;
            $notification->survey_id = $request->survey_id;
            $notification->notification_type = 'text message';
            $notification->message = 'Customer Feedback';
            $notification->save();             
          }
      }
  }
    return  response(['status'=>'success','message'=>'Survey Published succesfully','data' => $publish,'status_code'=>200],200);
  }

  //Survey Data
    public function Surveydata(Request $request)
  {
    $user = DB::table('users')->where('id','=',$request->input('user_id'))->first();

    if($user !='')
    {
      if($request->input('searchby') == 'recent')
      {
        $data = DB::table('survey')->where('survey.user_id', $user->id)->latest('survey.created_at')->take(5)
                                   ->select('survey.survey_id','survey.survey_name','survey.survey_desc','survey.photo','survey.start_date','survey.end_date','survey_publish.published_to',DB::raw('count(distinct survey_users_qst_options.surveyuser_id) as total_responses'))
                                    ->leftJoin('survey_publish','survey_publish.survey_id','=','survey.survey_id')
                                    ->leftJoin('survey_users_qst_options','survey_users_qst_options.survey_id','=','survey_publish.survey_id')
                                    ->groupBy('survey.survey_id','survey.survey_name','survey.survey_desc','survey.photo','survey.start_date','survey.end_date','survey_publish.published_to')
                                    ->get();

          foreach ($data as $key => $value) 
          {
            $value->survey_id = $value->survey_id;
            $value->survey_name = $value->survey_name;
            $value->survey_desc = $value->survey_desc;
            $value->photo = $value->photo;
            $value->start_date = $value->start_date;
            $value->end_date = $value->end_date;        
            $mem = explode(',', $value->published_to);
            $value->published_to= count($mem);
            $value->total_responses = $value->total_responses; 
          }
       }

       elseif ($request->input('searchby') == 'completed') 
       {
         $data = DB::table('survey')->where('survey.user_id', $user->id)
                                    ->where('survey.end_date','<',Carbon::today())
                                    ->select('survey.survey_id','survey.survey_name','survey.survey_desc','survey.photo','survey.start_date','survey.end_date','survey_publish.published_to',DB::raw('count(distinct survey_users_qst_options.surveyuser_id) as total_responses'))
                                    ->leftJoin('survey_publish','survey_publish.survey_id','=','survey.survey_id') 
                                    ->leftJoin('survey_users_qst_options','survey_users_qst_options.survey_id','=','survey_publish.survey_id')
                                    ->groupBy('survey.survey_id','survey.survey_name','survey.survey_desc','survey.photo','survey.start_date','survey.end_date','survey_publish.published_to')
                                    ->get();

            foreach ($data as $key => $value) 
          {
            $value->survey_id = $value->survey_id;
            $value->survey_name = $value->survey_name;
            $value->survey_desc = $value->survey_desc;
            $value->photo = $value->photo;
            $value->start_date = $value->start_date;
            $value->end_date = $value->end_date;        
            $mem = explode(',', $value->published_to);
            $value->published_to= count($mem);
            $value->total_responses = $value->total_responses; 
          }
       }
       elseif ($request->input('searchby') == 'pending') 
       {
          $data = DB::table('survey')->where('survey.user_id', $user->id)
                                   ->where('survey.end_date','>=',Carbon::today())
                                   ->leftJoin('survey_publish','survey_publish.survey_id','=','survey.survey_id')
                                   ->whereNull('survey_publish.survey_id')
                                   ->select('survey.survey_id','survey.survey_name','survey.survey_desc','survey.photo','survey.start_date','survey.end_date')
                                   ->get();                                      
         
       }
      return  response(['status'=>'success','data' => $data ,'status_code'=>200],200);      
    }
    else{
            return response(['success'=>true,'message'=>'User not exist','status'=>201],201);
          }
  }

  //Survey Notifications
    public function SurveyOptionsCount(Request $request)
  {
    $optionsdata = DB::table('survey')->where('survey.survey_id', $request->input('survey_id'))
                                      ->Join('survey_users_qst_options','survey_users_qst_options.survey_id','=','survey.survey_id')
                                      ->join('survey_questions','survey_questions.question_id','=','survey_users_qst_options.question_id')
                                      ->select('survey.survey_id','survey.survey_name','survey_questions.question_id','survey_questions.question_text','survey_questions.question_type','survey_users_qst_options.opt_txt','survey_users_qst_options.selected_options',DB::raw('count(survey_users_qst_options.selected_options) as options_count'))
                                      ->groupBy('survey_questions.question_id','survey.survey_id','survey.survey_name','survey_questions.question_id','survey_questions.question_text','survey_questions.question_type','survey_users_qst_options.opt_txt','survey_users_qst_options.selected_options')
                                      ->groupBy('survey_users_qst_options.selected_options')
                                      ->get();

    return  response(['status'=>'success','optionsdata' => $optionsdata ,'status_code'=>200],200);      
   }

   public function getNotifications(Request $request)
   {
     $mobile = DB::table('notifications')->where('mobile_number',$request->mobile)
                                         /*->where('area_code',$request->area_code)*/->first();

    if($mobile!='')
    {
      $notifications = DB::table('notifications')->where('mobile_number',$request->mobile)
                                          ->Where('status',0)
                                          ->Where('self_note',1)
                                          ->join('survey','survey.survey_id','=','notifications.survey_id')
                                          ->join('users','users.id','=','notifications.created_by')
                                          ->select('notifications.notify_id as notification_id','survey.survey_id','survey.survey_name','notifications.created_by as sender_id','users.mobile as sender_mobile','survey.start_date','survey.end_date','notifications.message','notifications.self_note','notifications.status')
                                          ->groupBy('survey_id','notifications.notify_id','survey.survey_id','survey.survey_name','notifications.created_by','users.mobile','survey.start_date','survey.end_date','notifications.message','notifications.self_note','notifications.status')
                                          ->get();

      return  response(['status'=>'success','notifications' => $notifications ,'status_code'=>200],200);
     }
    else{
            return response(['success'=>true,'message'=>'mobile number not exist','status'=>201],201);
          }     
   }

   //Survey Graph
     public function SurveyGraph(Request $request,$sid =0)
   {    
    $survey_id = isset($request->survey_id) ? $request->survey_id:$sid;       
    $responses = DB::table('survey')->where('survey.survey_id', $survey_id)
                                    ->select('survey_publish.published_to',DB::raw('count(distinct survey_users_qst_options.surveyuser_id) as total_responses'))
                                    ->leftJoin('survey_publish','survey_publish.survey_id','=','survey.survey_id') 
                                    ->leftJoin('survey_users_qst_options','survey_users_qst_options.survey_id','=','survey_publish.survey_id')
                                    ->groupBy('survey.survey_id','survey_publish.published_to')
                                    ->first();                                    
            $mem = explode(',', $responses->published_to);
            $responses->published_to= count($mem);
            $responses->total_responses = $responses->total_responses; 

    $survey_details = DB::table('survey')->where('survey_id',$survey_id)
                                         ->select('survey_id','survey_name','survey_desc','survey.photo')->get();

    $survey_qtns = DB::table('survey_questions')->where('survey_id','=',$survey_id)->get(); 
    $survey_questions =[];   
    if(count($survey_qtns) > 0)
    {
        $i=0;
        foreach ($survey_qtns as $key => $row) 
        {            
            $survey_questions[$i]['question_id'] = $row->question_id;
            $survey_questions[$i]['question_text'] = $row->question_text;
            $survey_questions[$i]['question_type'] = $row->question_type;    
              $options_query =DB::table($row->question_type."_".$row->options_count)
                                          ->where('question_id','=',$row->question_id)->get();                            
                if(count($options_query) > 0)
                {
                  $j = 0;
                  $optionsdata = DB::table('survey')->where('survey.survey_id', $survey_id)
                                      ->leftJoin('survey_users_qst_options','survey_users_qst_options.survey_id','=','survey.survey_id')
                                      ->leftJoin('survey_questions','survey_questions.question_id','=','survey_users_qst_options.question_id')
                                      ->select('survey_questions.question_id','survey_users_qst_options.opt_txt','survey_users_qst_options.selected_options',DB::raw('count(survey_users_qst_options.selected_options) as options_count'))
                                      ->groupBy('survey_questions.question_id','survey_users_qst_options.opt_txt','survey_users_qst_options.selected_options')
                                      ->groupBy('survey_users_qst_options.selected_options')
                                      ->get();             
                    foreach ($options_query as $key => $value) 
                    {
                      $survey_options[$j]=[]; 
                        for($k = 0; $k<$row->options_count;$k++)
                        {
                          $option = "option_".$k; 
                          $survey_options[$j][$k]['optionText'] = $value->$option; 
                          $survey_options[$j][$k]['seleceted_options_count'] = 0;
                          $survey_options[$j][$k]['percentage'] = 0;
                          $options_count =0;
                          foreach ($optionsdata as $key => $index) {
                            if($row->question_type == 'CheckBox')
                            {                                                            
                              if($index->question_id == $row->question_id)
                              {        
                                if($value->$option == $index->selected_options) 
                                {                               
                                  $survey_options[$j][$k]['seleceted_options_count'] = $index->options_count;
                                  $survey_options[$j][$k]['percentage'] = round((($index->options_count / $responses->total_responses)*100),2);                            
                                }
                              }
                              //$selected_options = explode(',', $index->selected_options);
                              //  if($index->question_id == $row->question_id)
                              //  {      
                              //     if(in_array($value->$option,$selected_options))
                              //     {                              
                              //       $options_count = $options_count +1;                          
                              //       $survey_options[$j][$k]['seleceted_options_count'] = $options_count;
                              //       $survey_options[$j][$k]['percentage'] = round((($options_count / $responses->total_responses)*100),2);                            
                              //     }
                              //   }                              
                          }
                        else{
                            if($index->question_id == $row->question_id)
                            {        
                              if($value->$option == $index->selected_options) 
                              {                               
                                $survey_options[$j][$k]['seleceted_options_count'] = $index->options_count;
                                $survey_options[$j][$k]['percentage'] = round((($index->options_count / $responses->total_responses)*100),2);                            
                              }
                            }
                           }
                          }                                                 
                        } 
                        $survey_questions[$i]['questionGroup']['options'] = $survey_options[$j];
                            $j++;
                    }                            
            }
            $i++;                                     
        }
        if($sid != 0){
           return array('survey_details'=>$survey_details,'survey_questions' => $survey_questions,'responses'=>$responses);
        }
      return  response(['status'=>'success','survey_details'=>$survey_details,'survey_questions' => $survey_questions,'responses'=>$responses,'status_code'=>200],200);        
    }
    else
    {
       return  response(['status'=>'success','data' => 'No results','status_code'=>201],201);
    }       
    
   }

   public function VisitNotification(Request $request)
   {
     $visit = DB::table('notifications')->where('notify_id',$request->notify_id)
                                        ->update(['self_note' => 2]);

      return response(['status'=>'success','message' =>'updated','status_code'=>200],200);
   }

   //Survey dashboard
   public function survey_dashboard(Request $request)
   {
        $surveys = Survey::all();
        return View::make('survey_dashboard',compact('surveys'));
   }
   
   //Survey details dashboard
   public function survey_dashboard_details(Request $request)
   {
      $survey = Survey::find($request->sid);
      $mobile = $survey->surveyUsersQstOptions->pluck('mobile');                          
      return View::make('survey_details',compact('survey','mobile'));
   }
   //Survey download
   public function survey_download(Request $request,$survey_id){       
        $graph =$this->SurveyGraph($request,$survey_id);                          
        $spreadsheet = new Spreadsheet();        
        $sheet = $spreadsheet->getActiveSheet();   
        $spreadsheet->getActiveSheet()->getStyle('A1:E1')->getFont()->setBold(true);
        $spreadsheet->getActiveSheet()->getStyle('A1:E1')->getFont()->setSize(14);   
        $sheet->setCellValue('A1', 'SurveyName');
        $sheet->setCellValue('B1', 'SurveyDescription');
        $sheet->setCellValue('C1', 'Questions');
        $sheet->setCellValue('D1', 'Survey Published');
        $sheet->setCellValue('E1', 'Survey Total Responses');
        $rows = 2;
        $cells = ["A" =>"30","B" =>"50","C" =>"80","D" =>"30","E" =>"30"];
        foreach ($cells as $key => $val) {                                    
          $spreadsheet->getActiveSheet()->getColumnDimension($key)->setWidth($val);           
        }               
        foreach($graph['survey_details'] as $key=>$value){
          $sheet->setCellValue('A' . $rows, $value->survey_name);
          $sheet->setCellValue('B' . $rows, $value->survey_desc);                      
        }
        foreach($graph['survey_questions'] as $key=>$value){
          $sheet->setCellValue('C' . $rows, json_encode($value));                                           
        }          
        $sheet->setCellValue('D' . $rows, $graph['responses']->published_to);
        $sheet->setCellValue('E' . $rows, $graph['responses']->total_responses);                                                                                           
        //Download type
        $type = 'xlsx';            
        $fileName = "Survey.".$type;        
        $writer = new Xlsx($spreadsheet);
        $writer->save($fileName);
        header("Content-Type: application/vnd.ms-excel");        
        return redirect(url('/')."/".$fileName);        
   }

}
