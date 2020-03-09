<?php

namespace App\Http\Middleware;

use Closure;
use Auth;

class DM_CheckSuper
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
        // dd(config('auth.middleware_email'));
        if(Auth::check()){
            if(Auth::user()->email == config('auth.dm_middleware_email.email')){
                return $next($request);
            }
            session()->flash('alert-warning', 'You have no authority to access !!!');
            return redirect()->route('dsms.dashboard');
        }
        else{
            session()->flash('alert-warning', 'Please Login !!!');
            return redirect()->route('login');

        }
    }
}
