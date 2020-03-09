<?php

namespace App\Http\Controllers\Dsms;

use Illuminate\Http\Request;
use App\Http\Controllers\DM_BaseController;
use App\Model\Dsms\Student;
use App\Model\Dsms\School;
use App\Model\Dsms\MyClass;
use App\Model\Dsms\Section;
use App\Model\Dsms\Session;
use App\Model\Dsms\Eloquent\DM_General;
use App\DM_libraries\DM_nepali_calendar;
use DB;
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Shared\Date as ExcelDate;

class StudentsController extends DM_BaseController
{
    protected $panel = 'Student';
    protected $base_route ='dsms.student';
    protected $view_path = 'dsms.student';

    protected $folder_path_image;
    protected $folder_path_file;
    protected $folder = 'student';
    protected $prefix_path_image = '/upload_file/images/student/';

    public function __construct(Request $request, Student $model, DM_General $model_g, MyClass $model_1, Section $model_2, School $model_3, DM_nepali_calendar $nepali_calender, Session $model_4){
        $this->middleware('auth');
        $this->middleware('permission:student-list', ['only' => ['index']]);
        $this->middleware('permission:student-create', ['only' => ['create','store']]);
        $this->middleware('permission:student-edit', ['only' => ['edit','update']]);
        $this->middleware('permission:student-delete', ['only' => ['destroy']]);
        $this->model = $model;
        $this->model_g = $model_g;
        $this->model_1 = $model_1;
        $this->model_2 = $model_2;
        $this->model_3 = $model_3;
        $this->model_4 = $model_4;
        // $this->excel = $excel;
        $this->nepali_calender = $nepali_calender;
        $this->folder_path_image = getcwd() . DIRECTORY_SEPARATOR . 'upload_file' . DIRECTORY_SEPARATOR . 'images' . DIRECTORY_SEPARATOR . $this->folder . DIRECTORY_SEPARATOR;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $this->panel = "Student Details";
        if ($request->isMethod('post')){
            $data['session_id'] = $request->session_id;
            $data['school_id'] = $request->school_id;
            $data['class_id'] = $request->class_id;
            $data['section_id'] = $request->section_id;
            if(isset($data['school_id']) && isset($data['class_id'])){
                $school_class = $this->model_g::getSchoolClassId($data['school_id'], $data['class_id']);
                if(isset($school_class) && isset($data['section_id'])){
                    $school_class_section = $this->model_g::getSchoolClassSection($school_class->id, $data['section_id']);
                }
            }
            if(isset($school_class_section)) {
                $school_class_section_id = $school_class_section->id;
            }else {
                $school_class_section_id = '';
            }

            $data['query'] = $request->search_text;
            $data['sessions'] = $this->model_4::all();
            $data['school'] = $this->model_3::all();
            $data['class'] = $this->model_1::where('status', '=', 1)->get();
            $data['section'] = $this->model_2::where('status', '=', 1)->get();

            if(isset($data['session_id']) && isset($school_class_section_id) && isset($data['query'])){
            $data['rows'] = $this->model::where('status', '=', 1)
                                ->orWhere('session_id', '=', $data['session_id'])
                                ->orWhere('school_class_section_id', '=', $school_class_section_id)
                                ->where('admission_date', 'LIKE', '%'. $data['query'].'%')
                                ->where('roll_no', 'LIKE', '%'. $data['query'].'%')
                                ->where('first_name', 'LIKE', '%'. $data['query'].'%')
                                ->where('last_name', 'LIKE', '%'. $data['query'].'%')
                                ->where('mobile_no', 'LIKE', '%'. $data['query'].'%')
                                ->where('email', 'LIKE', '%'. $data['query'].'%')
                                ->where('religion', 'LIKE', '%'. $data['query'].'%')
                                ->where('gender', 'LIKE', '%'. $data['query'].'%')
                                ->get();
            }else if(isset($school_class_section_id) && !isset($data['query']) && isset($data['session_id'])){
                $data['rows'] = $this->model::where('status', '=', 1)
                                ->Where('school_class_section_id', '=', $school_class_section_id)
                                ->get();
            }
            else if(!isset($school_class_section_id) && isset($data['query']) && !isset($data['session_id'])){
                $data['rows'] = $this->model::where('status', '=', 1)
                                ->orWhere('admission_date', 'LIKE', '%'. $data['query'].'%')
                                ->orWhere('roll_no', 'LIKE', '%'. $data['query'].'%')
                                ->orWhere('first_name', 'LIKE', '%'. $data['query'].'%')
                                ->orWhere('last_name', 'LIKE', '%'. $data['query'].'%')
                                ->orWhere('mobile_no', 'LIKE', '%'. $data['query'].'%')
                                ->orWhere('email', 'LIKE', '%'. $data['query'].'%')
                                ->orWhere('religion', 'LIKE', '%'. $data['query'].'%')
                                ->orWhere('gender', 'LIKE', '%'. $data['query'].'%')
                                ->get();
            }
            else {
                $data['rows'] = $this->model::where('status', '=', 1)
                                ->orWhere('admission_date', 'LIKE', '%'. $data['query'].'%')
                                ->orWhere('roll_no', 'LIKE', '%'. $data['query'].'%')
                                ->orWhere('first_name', 'LIKE', '%'. $data['query'].'%')
                                ->orWhere('last_name', 'LIKE', '%'. $data['query'].'%')
                                ->orWhere('mobile_no', 'LIKE', '%'. $data['query'].'%')
                                ->orWhere('email', 'LIKE', '%'. $data['query'].'%')
                                ->orWhere('religion', 'LIKE', '%'. $data['query'].'%')
                                ->orWhere('gender', 'LIKE', '%'. $data['query'].'%')
                                ->get();
            }
            return view($this->loadView($this->view_path.'.index'), compact('data'));
        }
        else {
            $data['sessions'] = $this->model_4::all();
            $data['school'] = $this->model_3::all();
            return view($this->loadView($this->view_path.'.index'), compact('data'));
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $this->panel = "Student Admission";
        $data['sessions'] = $this->model_4::all();
        $data['school'] = $this->model_3::all();
        return view($this->loadView($this->view_path.'.create'), compact('data'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'firstname' => 'required|max:255',
            'dob_bs' => 'required',
            'roll_no' => 'required',
            'school_id' => 'required',
            'class_id' => 'required',
            'section_id' => 'required',
        ],
        [
            'firstname.required' => 'You must enter the STUDENT !',
            'dob_bs.required' => 'You must enter the DATE OF BIRTH !',
            'roll_no.required' => 'You must enter the SYMBOL NO.!',
        ]);
        $data['school_id'] = $request->school_id;
        $data['class_id'] = $request->class_id;
        $data['section_id'] = $request->section_id;
        $school_class = $this->model_g::getSchoolClassId($data['school_id'], $data['class_id']);
        $school_class_section = $this->model_g::getSchoolClassSection($school_class->id, $data['section_id']);

        $row = $this->model;
        $row->session_id = $request->session_id;
        $row->school_class_section_id = $school_class_section->id;
        $row->admission_no = $request->admission_no;
        $row->roll_no = $request->roll_no;
        $row->first_name = $request->firstname;
        // $row->last_name = $request->lastname;
        $row->gender = $request->gender;
        $row->dob_bs = get_nepali_data($request->dob_bs);
        $row->dob_ad = $this->bsToAd($request->dob_bs);
        $row->religion = $request->religion;
        $row->mobile_no = $request->mobileno;
        $row->email = $request->email;
        $row->admission_date = $request->admission_date;
        $row->blood_group = $request->blood_group;
        // if($request->hasFile('image')){
        //     $slider->image = parent::uploadImage($request, $this->folder_path_image ,$this->prefix_path_image,'image');
        // }
        $row->save();
        if($row->save()){
            session()->flash('alert-success', $this->panel.' Successfully Store');
        }else {
            session()->flash('alert-danger', $this->panel.' can not be Store');
        }
        return redirect()->route($this->base_route.'.create');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $this->panel = "Student Details";
        $data['row'] = $this->model::findOrFail($id);

        return view($this->loadView($this->view_path.'.show'), compact('data'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $this->panel = "Student Details";
        $data['row'] = $this->model::findOrFail($id);
        $data['sessions'] = $this->model_4::all();
        $data['school'] = $this->model_3::all();
        $data['class'] = $this->model_1::where('status', '=', 1)->get();
        $data['section'] = $this->model_2::where('status', '=', 1)->get();
        $data['school_class_section'] = $this->model_g::joinSchoolClassSection($data['row']->school_class_section_id);
        return view($this->loadView($this->view_path.'.edit'), compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'firstname' => 'required|max:255',
            'dob_bs' => 'required',
            'roll_no' => 'required',
            'school_id' => 'required',
            'class_id' => 'required',
            'section_id' => 'required',
        ],
        [
            'firstname.required' => 'You must enter the STUDENT name!',
            'dob_bs.required' => 'You must enter the DATE OF BIRTH name!',
            'roll_no.required' => 'You must enter the SYMBOL NO.!',
        ]);

        $data['school_id'] = $request->school_id;
        $data['class_id'] = $request->class_id;
        $data['section_id'] = $request->section_id;
        $school_class = $this->model_g::getSchoolClassId($data['school_id'], $data['class_id']);
        $school_class_section = $this->model_g::getSchoolClassSection($school_class->id, $data['section_id']);

        $row = $this->model::findOrFail($id);
        $row->session_id = $request->session_id;
        $row->school_class_section_id = $school_class_section->id;
        $row->admission_no = $request->admission_no;
        $row->roll_no = $request->roll_no;
        $row->first_name = $request->firstname;
        // $row->last_name = $request->lastname;
        $row->gender = $request->gender;
        $row->dob_bs = get_nepali_data($request->dob_bs);
        $row->dob_ad = $this->bsToAd($request->dob_bs);
        $row->religion = $request->religion;
        $row->mobile_no = $request->mobileno;
        $row->email = $request->email;
        $row->admission_date = $request->admission_date;
        $row->blood_group = $request->blood_group;
        // if($request->hasFile('image')){
        //     $slider->image = parent::uploadImage($request, $this->folder_path_image ,$this->prefix_path_image,'image');
        // }
        $row->save();
        if($row->save()){
            session()->flash('alert-success', $this->panel.' Successfully Store');
        }else {
            session()->flash('alert-danger', $this->panel.' can not be Store');
        }
        return redirect()->route($this->base_route.'.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $this->model::destroy($id);
    }

    public function import(Request $request) {
        $this->panel = "Student Admission";

        if ($request->isMethod('post')){
            $data['school_id'] = $request->school_id;
            $data['class_id'] = $request->class_id;
            $data['section_id'] = $request->section_id;
            $school_class = $this->model_g::getSchoolClassId($data['school_id'], $data['class_id']);
            $school_class_section = $this->model_g::getSchoolClassSection($school_class->id, $data['section_id']);

            if(isset($school_class_section)) {
                $school_class_section_id = $school_class_section->id;
            }else {
                $school_class_section_id = '';
            }

            $path = $request->file('file')->getRealPath();
            $object = IOFactory::load($path);
            foreach($object->getWorksheetIterator() as $worksheet)
			{
                $highestRow = $worksheet->getHighestRow();
				$highestColumn = $worksheet->getHighestColumn();
				for($row=2; $row<=$highestRow; $row++)
				{
                    $this->model::create([
                        'session_id'        => $request->session_id,
                        'school_class_section_id'  => $school_class_section_id,
                        'admission_no'      => $worksheet->getCellByColumnAndRow(1, $row)->getValue(),
                        'roll_no'           => $worksheet->getCellByColumnAndRow(2, $row)->getValue(),
                        'first_name'        => $worksheet->getCellByColumnAndRow(3, $row)->getValue(),
                        'dob_bs'            => date("Y-m-d", ExcelDate::excelToTimestamp(($worksheet->getCellByColumnAndRow(4, $row)->getValue()))),
                        'dob_ad'            => $this->bsToAdEng(date("Y-m-d", ExcelDate::excelToTimestamp(($worksheet->getCellByColumnAndRow(4, $row)->getValue())))),
                        'religion'          => $worksheet->getCellByColumnAndRow(5, $row)->getValue(),
                        'mobile_no'         => $worksheet->getCellByColumnAndRow(6, $row)->getValue(),
                        'email'             => $worksheet->getCellByColumnAndRow(7, $row)->getValue(),
                        'admission_date'    => date("Y-m-d", ExcelDate::excelToTimestamp(($worksheet->getCellByColumnAndRow(8, $row)->getValue()))),
                        'blood_group'       => $worksheet->getCellByColumnAndRow(9, $row)->getValue(),
                        'gender'            => $worksheet->getCellByColumnAndRow(10, $row)->getValue(),
                    ]);

				}
			}
            session()->flash('alert-success', $this->panel.' Successfully Imported');
            return view($this->loadView($this->view_path.'.import'), compact('data'));
        }
        else {
            $data['sessions'] = $this->model_4::all();
            $data['school'] = $this->model_3::all();
            return view($this->loadView($this->view_path.'.import'), compact('data'));
        }
    }
}
