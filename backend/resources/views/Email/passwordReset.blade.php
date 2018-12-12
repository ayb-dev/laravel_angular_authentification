@component('mail::message')
# Change password request
Click on the buttom below to change password.

@component('mail::button', ['url' => 'http://localhost:4200/response-password-reset?token='.$token])
Button Text
@endcomponent

Thanks,<br>
{{ config('app.name') }}
@endcomponent
