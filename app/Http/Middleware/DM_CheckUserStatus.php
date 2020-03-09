<?php

namespace App\Http\Middleware;

use Closure;
use Auth;

class DM_CheckUserStatus
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $response = $next($request);
        if(config('auth.dm_active') != config('dm_config.dm_key'))
        {
            if(Auth::check()) {
                Auth::logout();
            }
            session()->flash('alert-warning', 'Your Product Key is Expired. Please Contact Vendor');
            return redirect()->route('login');
        }
        if(Auth::check() && Auth::user()->status != 1){
            Auth::logout();
            session()->flash('alert-warning', 'You are Inactive User. Please Contact Admin');
            return redirect()->route('login');
        }
        return $response;
    }
}
