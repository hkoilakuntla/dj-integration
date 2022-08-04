<?php
namespace App\Exports;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class SurveyExport implements FromView
{
    /**
    * @return \Illuminate\Support\Collection
    */  
    protected $survey_details,$survey_questions,$responses,$viewname;
    public function __construct($survey_details,$survey_questions,$responses,$viewname)
    {
        $this->survey_details = $survey_details;
        $this->survey_questions = $survey_questions;
        $this->responses =  $responses;
        $this->viewname = $viewname;
    }
    public function view(): View
    {
        return view($this->viewname, [
            "survey_details" => $this->survey_details,"survey_questions"=>$this->survey_questions,"responses"=>$this->responses
        ]);
    }
}
