<?php

namespace chatelier\Role;

class EditorCustomRole extends Role
{
    const ROLE_KEY = 'editorCustom';
    const ROLE_NAME = 'Editrice';
    const ROLE_CAPABILITIES = [
        'read' => true,
        'edit_posts' => true,
        'edit_post' => true,
        'edit_others_posts' => true,
        'edit_private_posts' =>true,
        'edit_published_posts' =>true,
        'publish_posts' => true,
        'upload_files' => true,
        'edit_other_posts' => true,
        'delete_posts' => true,
        'delete_published_posts' => true,
        'manage_styles' => true,
        'edit_styles' => true,
        'delete_styles' => true,
        'assign_styles' => true,
        'manage_materials' => true,
        'edit_materials' => true,
        'delete_materials' => true,
        'assign_materials' => true,
        'manage_levels' => true,
        'edit_levels' => true,
        'delete_levels' => true,
        'assign_levels' => true,
        'manage_tools' => true,
        'edit_tools' => true,
        'delete_tools' => true,
        'assign_tools' => true,
        'delete_users' => true,
        'edit_users' => true,
        'install_plugins' => false,
        'activate_plugins' => false,
        'edit_plugins' => false,
        'delete_plugins' => false,
        'add_users' => false,
        'create_users' => false,
    ];
}

