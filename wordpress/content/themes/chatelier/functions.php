<?php

function remove_toolbar_items($wp_adminbar) {
    $wp_adminbar->remove_node('wp-logo');
    // $wp_adminbar->remove_node('comments');
    // $wp_adminbar->remove_node('stats');
    // $wp_adminbar->remove_node('cs-explain');
}

add_action('admin_bar_menu', 'remove_toolbar_items', 999);