<?php

namespace chatelier\Role;

class StudentRole extends Role
{
    const ROLE_KEY = 'student';
    const ROLE_NAME = 'Elève';
    const ROLE_CAPABILITIES = [
        'read' => true,
        'edit_posts' => false,
        'upload_files' => false,
        'edit_other_posts' => false,
        'delete_posts' => false,
    ];

    public static function user_registered($user)
    {
        $user->set_role(self::ROLE_KEY);
    }
    
}