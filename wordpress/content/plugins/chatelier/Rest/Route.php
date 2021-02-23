<?php

namespace chatelier\Rest;

class Route
{
    static public function registerRoute()
    {
        register_rest_route(
            'chatelier/v1',
            '/profil/',
            [
                'methods' => 'GET',
                'callback' => function ($data) {
                    global $wpdb;
                    $sql = "SELECT * FROM `user_note`";
                    $list = $wpdb->get_results($sql);
                    return $list;
                },
                'args' => [
                    'id'
                ],
            ]
        );
        register_rest_route(
            'chatelier/v1',
            '/profil/',
            [
                'methods' => 'POST',
                'callback' => function ($data) {
                    global $wpdb;
                    $sql = "INSERT INTO  `user_note`  (`comment`) VALUES ('')";
                    $list = $wpdb->get_results($sql);
                    return $list;
                },
                'args' => [
                    'id'
                ],
            ]
        );
    }
}
