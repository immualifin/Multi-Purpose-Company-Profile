<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreTeamRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'occupation' => ['required', 'string', 'max:255'],
            'name' => ['required', 'string', 'max:255'],
            'avatar' => ['required', 'mimes:jpeg,png,jpg,gif,svg', 'max:10240'],
            'location' => ['required', 'string', 'max:255'],
        ];
    }
}
