@extends('layouts.app')

@section('content')
    <div class="container">
        <button type="button" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#exampleModal">
            Save License Key
        </button>
        @if(session()->has('success'))
            <div class="alert alert-success mt-3">
                {{ session()->get('success') }}
            </div>
        @endif
        @if(session()->has('error'))
            <div class="alert alert-danger mt-3">
                {{ session()->get('error') }}
            </div>
        @endif
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <form method="POST" action="{{route("save_license")}}">
                    @csrf
                    <div class="modal-content">
                        <div class="modal-header">

                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>

                        <div class="modal-body">
                            <div class="card">
                                <div class="card-header">{{ __('License Generate') }}</div>

                                <div class="card-body">


                                    <div class="form-group row">
                                        <label for="license"
                                               class="col-md-4 col-form-label text-md-right">{{ __('License Key') }}</label>

                                        <div class="col-md-6">
                                            <input id="license" type="text"
                                                   class="form-control @error('license') is-invalid @enderror license_key"
                                                   name="license" value="{{ old('license') }}"
                                                   autofocus>

                                            @error('license')
                                            <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                            @enderror
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-success">Save</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">{{ __('License Generate') }}</div>

                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif

                        <form method="POST" action="">
                            @csrf

                            <div class="form-group row">
                                <label for="client_id"
                                       class="col-md-4 col-form-label text-md-right">{{ __('Client Id') }}</label>

                                <div class="col-md-6">
                                    <input id="client_id" type="text"
                                           class="form-control @error('client_id') is-invalid @enderror client_id"
                                           name="client_id" value="{{ old('client_id') }}" required
                                           autofocus>
                                    <span class="invalid-feedback-client" role="alert"></span>
                                    @error('client_id')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="license_for"
                                       class="col-md-4 col-form-label text-md-right">{{ __('License For') }}</label>

                                <div class="col-md-6">
                                    <select id="license_for"
                                            class="form-control @error('license_for') is-invalid @enderror license_for"
                                            name="license_for" required
                                            autofocus>
                                        <option disabled selected>--Select--</option>
                                        <option value="3">3 Months</option>
                                        <option value="6">6 Months</option>
                                        <option value="12">12 Months</option>
                                    </select>
                                    <span class="invalid-feedback-license_for" role="alert"></span>
                                    @error('license_for')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="license_key"
                                       class="col-md-4 col-form-label text-md-right">{{ __('License Key') }}</label>

                                <div class="col-md-6">
                                    <input id="license_key" type="text"
                                           class="form-control @error('license_key') is-invalid @enderror license_key"
                                           name="license_key" value="{{ old('license_key') }}"
                                           autofocus>

                                    @error('license_key')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
                            <button class="btn btn-info float-right" type="button" id="generate">Generate</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card" style="min-height: 100%;">
                    <div class="card-header">{{ __('Client Details') }}</div>
                    <div class="card-body">
                        <p class="badge badge-success info">Put Client Id and Hit Enter</p>
                        <div class="client_details" style="display: none">
                            <table class="table table-bordered">
                                <tr>
                                    <th>First Name</th>
                                    <td>
                                        <span class="first_name"></span>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Last Name</th>
                                    <td>
                                        <span class="last_name"></span>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Name Of Organization</th>
                                    <td>
                                        <span class="org_name"></span>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Street</th>
                                    <td>
                                        <span class="street"></span>
                                    </td>
                                </tr>
                                <tr>
                                    <th>City</th>
                                    <td>
                                        <span class="city"></span>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Phone</th>
                                    <td>
                                        <span class="mobile"></span>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Email</th>
                                    <td>
                                        <span class="email"></span>
                                    </td>
                                </tr>
                                <tr>
                                    <th>License Key</th>
                                    <td>
                                        <span class="license_key"></span>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        (function ($) {
            $(document).ready(function () {
                $(document).on('keypress', '.client_id', function (e) {
                    let keyCode = e.keyCode || e.which;
                    if (keyCode === 13) {
                        let client_id = $(this).val();
                        if (client_id.length === 0) {
                            $(this).addClass("is-invalid");
                            $(".invalid-feedback-client").html("<font class='text-danger'>Please Enter Client Id</font>");
                        } else {
                            $(this).removeClass("is-invalid");
                            $(".invalid-feedback-client").text("");
                            const URL = `/client_details/${client_id}`;
                            $.ajax({
                                url: URL,
                                type: "GET",
                                success: function (response) {
                                    $(".client_details").show();
                                    $(".info").hide();
                                    $(".first_name").text(response.data.first_name);
                                    $(".last_name").text(response.data.last_name);
                                    $(".org_name").text(response.data.org_name);
                                    $(".street").text(response.data.street);
                                    $(".city").text(response.data.city);
                                    $(".mobile").text(response.data.mobile);
                                    $(".email").text(response.data.email);
                                    $(".license_key").text(response.data.license_key);
                                    console.log(response);
                                },
                                error: function (error) {
                                    if (error) {
                                        $(".client_details").hide();
                                        $(".info").removeClass("badge-success").addClass("badge-danger").text("Client Doesn't Exists!").show();
                                    }


                                }
                            });
                        }

                        e.preventDefault();
                        return false;
                    }
                });


                $("#generate").unbind().click(function () {
                    let client_id = $(".client_id").val();
                    let license_for = $(".license_for").val();
                    if (client_id.length === 0) {
                        $(".client_id").addClass("is-invalid");
                        $(".invalid-feedback-client").html("<font class='text-danger'>Please Enter Client Id</font>");
                        return false;
                    }
                    if (license_for === null) {
                        $(".license_for").addClass("is-invalid");
                        $(".invalid-feedback-license_for").html("<font class='text-danger'>Please Choose License Duration</font>");
                        return false;
                    }
                    $.ajax({
                        url: "{{route("key_generate")}}",
                        type: "POST",
                        data: {
                            "client_id": client_id,
                            "license_for": license_for,
                            "_token": "{{csrf_token()}}"
                        },
                        success: function (response) {
                            console.log(response);
                            $(".license_key").val(response.data)
                        },
                        error: function (error) {

                        }
                    });
                });
            });
        })(jQuery);
    </script>
@endsection
