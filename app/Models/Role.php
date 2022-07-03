<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function user()
    {
        return $this->belongsTo(Employee::class, 'id', 'user_role');
    }

    public function rolePermission()
    {
        return $this->hasOne(RolePermission::class, 'role_id', 'id');
    }
}
