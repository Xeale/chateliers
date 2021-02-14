<?php

function oprofile_theme_setup() {
    add_theme_support('post-thumbnails');
}

add_action('after_setup_theme', 'oprofile_theme_setup');

function remove_toolbar_items($wp_adminbar) {
    $wp_adminbar->remove_node('wp-logo');
    // $wp_adminbar->remove_node('comments');
    // $wp_adminbar->remove_node('stats');
    // $wp_adminbar->remove_node('cs-explain');
}

add_action('admin_bar_menu', 'remove_toolbar_items', 999);

// Modifier le logo sur la page de connexion à l'administration
function wpm_login_style() {
   wp_enqueue_style('logo',get_theme_file_uri('assets/css/logo.css'));
}
add_action( 'login_enqueue_scripts', 'wpm_login_style' );

