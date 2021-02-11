<?php

namespace chatelier\PostType;

class CoursePostType extends PostType
{
    const POST_TYPE_LABELS = [
        'name'          => 'Cours',
        'menu_name'     => 'Cours',
        'singular_name' => 'Cours',
        'edit_item'     => 'Modifier un cours',
        'search_item'   => 'Rechercher un cours',
        'add_new'       => 'Ajouter un cours'
    ];

    const POST_TYPE_KEY = 'course';

    // array des meta à déclarer
    const POST_TYPE_META_KEYS = [
        'URL_video',
        'URL_pdf',
    ];

}

