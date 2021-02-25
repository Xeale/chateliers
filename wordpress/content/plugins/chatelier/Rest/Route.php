<?php

namespace chatelier\Rest;

class Route
{
    static public function registerRoute()
    {
        register_rest_route(
            'chatelier/v1',
            '/profil/(?P<user_id>\d+)',
            [
                'methods' => 'GET',
                'callback' => [self::class, 'getFavorite'],
            ]
        );
        register_rest_route(
            'chatelier/v1',
            '/profil/(?P<id>\d+)',
            [
                'methods' => 'POST',
                'callback' => [self::class, 'postFavorite'],
            ]
        );
    }
    static public function getFavorite($data)
    {
        global $wpdb;
        $sql = "SELECT * FROM `wp_user_note` WHERE user_id = {$data['user_id']}";
        return $wpdb->get_results($sql);
    }

    static public function postFavorite($data)
    {
        // TODO
    }
}
