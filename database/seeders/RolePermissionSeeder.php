<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class RolePermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $permissions = [
            'manage statistics',
            'manage products',
            'manage princiles',
            'manage testimonials',
            'manage clients',
            'manage teams',
            'manage abouts',
            'manage appointments',
            'manage hero sections',
        ];

        foreach ($permissions as $permission) {
            Permission::firstOrCreate(
                [
                    'name' => $permission
                ]
            );
        }

        // example multiple roles with permissions
        $designManagerRole = Role::firstOrCreate([
            'name' => 'design_manager'
        ]);

        $designManagerPermissions = [
            'manage abouts',
            'manage hero sections'
        ];

        $designManagerRole->syncPermissions($designManagerPermissions);

        // super admin role
        $superAdminRole = Role::firstOrCreate([
            'name' => 'super_admin'
        ]);

        $user = User::create([
            'name' => 'InumaComp',
            'email' => 'superadmin@admin.com',
            'password' => bcrypt('password'),
        ]);

        $user->assignRole($superAdminRole);
    }
}
