<?php

namespace App\Http\Controllers;

use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }

    public function client_details($client_id)
    {
        try {
            $client_details = User::findOrFail($client_id);
            return response()->json(["data" => $client_details], Response::HTTP_OK);
        } catch (\Exception $e) {
            return response()->json(["error" => $e->getMessage()], $e->getCode());
        }

    }

    public function key_generate(Request $request)
    {
        try {
            $generate_token = "{$request->client_id}-{$request->license_for}-" . Str::random(8);
            //256-Crypt::encryptString($generate_token)
            // base64_encode is using for get short string
            $encrypt_token = base64_encode($generate_token);
            return response()->json(["data" => $encrypt_token], Response::HTTP_OK);
        } catch (\Exception $e) {
            return response()->json(["error" => $e->getMessage()], $e->getCode());
        }
    }

    public function save_license(Request $request)
    {
        $validation = Validator::make($request->all(), [
            "license" => "required"
        ])->validate();
        $decode = base64_decode($request->license);
        $user_data = explode("-", $decode);
        $user_id = $user_data[0] ?? null;
        $license_month = $user_data[1] ?? null;
        if ($user_id && $license_month) {
            $user = User::where("id", $user_id)->first();
            if ($user) {
                $exp_date = Carbon::now()->addMonths($license_month)->format("Y-m-d");
                $license = [
                    "license_key" => $request->license,
                    "license_exp_date" => $exp_date
                ];
                $user->update($license);
            }
            Session::flash("success", "Congratulations!! Your License Has Been Activated. It will work till {$exp_date}");
        } else {
            Session::flash("error", "Sorry Your License Key Is Invalid.");
        }
        return back();
    }
}
