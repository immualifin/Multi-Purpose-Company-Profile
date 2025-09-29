<?php

use App\Http\Controllers\AppointmentController;
use App\Http\Controllers\CompanyAboutController;
use App\Http\Controllers\CompanyStatisticController;
use App\Http\Controllers\HeroSectionController;
use App\Http\Controllers\OurPrincipleController;
use App\Http\Controllers\OurTeamController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\ProjectClientController;
use App\Http\Controllers\TestimonialController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    Route::prefix('admin')->name('admin.')->group(function (){
        Route::middleware('can:manage statistics')->group(function () {
            Route::middleware('statistics', CompanyStatisticController::class);
        });

        Route::middleware('can:manage products')->group(function () {
            Route::middleware('products', ProductController::class);
        });

        Route::middleware('can:manage principles')->group(function () {
            Route::middleware('principles', OurPrincipleController::class);
        });

        Route::middleware('can:manage testimonials')->group(function () {
            Route::middleware('testimonials', TestimonialController::class);
        });

        Route::middleware('can:manage clients')->group(function () {
            Route::middleware('clients', ProjectClientController::class);
        });

        Route::middleware('can:manage teams')->group(function () {
            Route::middleware('teams', OurTeamController::class);
        });

        Route::middleware('can:manage abouts')->group(function () {
            Route::middleware('abouts', CompanyAboutController::class);
        });

        Route::middleware('can:manage appointments')->group(function () {
            Route::middleware('appointments', AppointmentController::class);
        });

        Route::middleware('can:manage hero sections')->group(function () {
            Route::middleware('hero sections', HeroSectionController::class);
        });
    });
});

require __DIR__.'/auth.php';
