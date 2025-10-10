<?php

namespace App\Http\Controllers;

use App\Models\CompanyStatistic;
use App\Models\HeroSection;
use App\Models\OurPrinciple;
use App\Models\OurTeam;
use App\Models\Product;
use App\Models\ProjectClient;
use App\Models\Testimonial;
use Illuminate\Http\Request;

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
}
