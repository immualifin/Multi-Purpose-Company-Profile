<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreAppointmentRequest;
use App\Models\Appointment;
use App\Models\CompanyAbout;
use App\Models\CompanyStatistic;
use App\Models\HeroSection;
use App\Models\OurPrinciple;
use App\Models\OurTeam;
use App\Models\Product;
use App\Models\ProjectClient;
use App\Models\Testimonial;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FrontController extends Controller
{
    public function index()
    {
        $statistics = CompanyStatistic::take(4)->get();
        $principles = OurPrinciple::take(3)->get();
        $products = Product::take(3)->get();
        $teams = OurTeam::take(7)->get();
        $testimonials = Testimonial::take(7)->get();
        $clients = ProjectClient::take(7)->get();
        $hero_section = HeroSection::orderByDesc('id')->take(1)->get();
        return view('front.index', compact('statistics', 'principles', 'products', 'teams', 'hero_section', 'testimonials', 'clients'));
    }

    public function team()
    {
        $teams = OurTeam::take(7)->get();
        $statistics = CompanyStatistic::take(4)->get();
        return view('front.team', compact('teams', 'statistics'));
    }

    public function about()
    {
        $abouts = CompanyAbout::all();
        $statistics = CompanyStatistic::take(4)->get();
        $clients = ProjectClient::take(7)->get();
        return view('front.about', compact('abouts', 'statistics', 'clients'));
    }

    public function appointment()
    {
        $testimonials = Testimonial::take(7)->get();
        $products = Product::take(3)->get();
        return view('front.appointment', compact('testimonials', 'products'));
    }

    public function appointment_store(StoreAppointmentRequest $request)
    {
        DB::transaction(function () use ($request) {
            $validated = $request->validated();
           $newAppointment = Appointment::create($validated);
        });
        return redirect()->route('front.index');
    }
}
