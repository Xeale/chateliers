<?php

namespace chatelier\PostType;

class PostType
{
    static public function register()
    {
        // static:: permet de récupérer une méthode statique ou une constante (depuis la classe fille)
        $labels = static::POST_TYPE_LABELS;

        register_post_type(
            static::POST_TYPE_KEY,
            [
                'labels'        => $labels,
                'public'        => true,
                'hierarchical'  => false,
                'menu_icon'     => 'dashicons-welcome-write-blog',
                'show_in_rest'  => true,
                'supports'      => [
                    'title',
                    'editor',
                    'thumbnail',
                    'custom-fields',
                    'comments',
                    'excerpt'
                ]
            ]
        );
    }

    static public function registerMetas()
    {
        // si on a des meta à déclarer pour notre CPT
        if (static::POST_TYPE_META_KEYS) {
            // pour chacune de ces meta
            foreach (static::POST_TYPE_META_KEYS as $post_meta_key) {
                // on la déclare
                register_post_meta(
                    static::POST_TYPE_KEY, // la clef du CPT
                    $post_meta_key, // la clef de la meta courante
                    [
                        // on la rend accessible dans la REST API
                        'show_in_rest' => true
                    ]
                );
            }
        }
    }
}
