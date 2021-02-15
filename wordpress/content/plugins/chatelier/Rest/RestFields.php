<?php

namespace chatelier\Rest;

use chatelier\PostType\CoursePostType;

class RestFields
{
    static public function registerFeaturedMediaUrlField()
    {
        // avec register_rest_field() j'ajoute un champ featured_media_url avec en valeur l'url de l'image mise en avant
        // ** //
        register_rest_field(
            [CoursePostType::POST_TYPE_KEY, 'post'],
            'featured_media_url',
            [
                'get_callback' => function ($post) {
                    return  get_the_post_thumbnail_url($post['id']);
                }
            ]
        );
    }
}
