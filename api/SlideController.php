<?php

namespace App\Http\Controllers\Api\Salon;

use App\Models\SalonBanner;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Http\Resources\SalonEventResource;
use App\Http\Resources\SalonBannerResource;

class SlideController extends Controller
{
    public function banner()
    {
        $data = SalonBanner::where('sb_status', 1)->get();

        return response()->json($data)->header('Content-Type', 'text/javascript; charset=utf-8');
    }

    public function event()
    {
        $data = DB::table('salon_events')
        ->where('sev_status',1)
        ->get();

        return response()->json($data)->header('Content-Type', 'text/javascript; charset=utf-8');
    }
}
