@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Register</div>

                <div class="panel-body">
                    <form class="form-horizontal" method="POST" action="{{ route('register') }}">
                        {{ csrf_field() }}

                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                            <label for="name" class="col-md-4 control-label">Name</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control" name="name" value="{{ old('name') }}" required autofocus>

                                @if ($errors->has('name'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <label for="email" class="col-md-4 control-label">E-Mail Address</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required>

                                @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                            <label for="password" class="col-md-4 control-label">Password</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control" name="password" required>

                                @if ($errors->has('password'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="password-confirm" class="col-md-4 control-label">Confirm Password</label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
                            </div>
                        </div>

                        <div class="form-group" style="padding: 1em;">
                            <p>
                                I have read <a href="{{ asset('Consent-student-general.pdf') }}" target="popup" onclick="window.open('{{ asset('Consent-student-general.pdf') }}', 'popup','width=600'); return false;"><strong>this Consent Form</strong></a>. I have had the opportunity to ask, and I have received answers
                                to, any questions I had regarding the study and the use and disclosure of information about me
                                for the study. I agree to take part in this study as a research participant. By my signature I affirm
                                that I have received a copy of this Consent form
                            </p>
                            <table>
                                <tr>
                                    <td><strong>I am willing to provide access to my submitted course work</strong></td>
                                    <td><input type="radio" value="true" name="consent_course_work" required/><strong>Yes</strong></td>
                                    <td><input type="radio" value="false" name="consent_course_work" required/><strong>No</strong></td>
                                </tr>
                                <tr>
                                    <td><strong>I am willing to provide access to my course grades associated with the submitted work</strong></td>
                                    <td><input type="radio" value="true"  name="consent_grades" required/><strong>Yes</strong></td>
                                    <td><input type="radio" value="false" name="consent_grades" required/><strong>No</strong></td>
                                </tr>
                            </table>
                            <br/>
                            <p>Your decision to participate in this study will in no way impact your course grades, class
                                standing, or your relationship with UBC.
                            </p>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    Register
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
