<?php

namespace chatelier;

use chatelier\Role\EditorCustomRole;
use chatelier\Role\StudentRole;
use chatelier\Taxonomy\ToolTaxonomy;
use chatelier\Taxonomy\LevelTaxonomy;
use chatelier\Taxonomy\StyleTaxonomy;
use chatelier\Taxonomy\MaterialTaxonomy;
use chatelier\Classes\Database;

define('COURSE_POST_TYPE_CLASS', 'chatelier\PostType\CoursePostType');
define('REST_FIELD_CLASS', 'chatelier\Rest\RestFields');

class Plugin
{
    static public function run()
    {
        register_activation_hook(CHATELIER_PLUGIN_FILE, [self::class, 'onPluginActivation']);
        register_deactivation_hook(CHATELIER_PLUGIN_FILE, [self::class, 'onPluginDeactivation']);

        add_action('init', [COURSE_POST_TYPE_CLASS, 'register']);
        add_action('init', [COURSE_POST_TYPE_CLASS, 'registerMetas']);
        add_action('init',['chatelier\PostType\PagePostType','registerMetas' ]);

        add_action('rest_api_init', [REST_FIELD_CLASS, 'registerFeaturedMediaUrlField']);
        add_action('rest_api_init', [REST_FIELD_CLASS, 'registerTaxonomyField']);
        add_action('rest_api_init',['chatelier\Rest\Route','registerRoute']);


        add_action('init', [self::class, 'registerTaxonomies']);
        
        add_action('wp_rest_user_user_register', ['\chatelier\Role\StudentRole', 'user_registered']);
    }

    static public function addRoles()
    {
        StudentRole::add();
        EditorCustomRole::add();
    }

    static public function removeRoles()
    {
        StudentRole::remove();
        EditorCustomRole::remove();
    }

    static public function addCaps()
    {
        StyleTaxonomy::addAdminCapabilities();
        MaterialTaxonomy::addAdminCapabilities();
        LevelTaxonomy::addAdminCapabilities();
        ToolTaxonomy::addAdminCapabilities();
    }

    static public function removeCaps()
    {
        StyleTaxonomy::removeAdminCapabilities();
        MaterialTaxonomy::removeAdminCapabilities();
        LevelTaxonomy::removeAdminCapabilities();
        ToolTaxonomy::removeAdminCapabilities();
    }

    static public function registerTaxonomies()
    {
        StyleTaxonomy::register();
        MaterialTaxonomy::register();
        LevelTaxonomy::register();
        ToolTaxonomy::register();
    }

    static public function onPluginActivation()
    {
        self::addRoles();
        self::registerTaxonomies();
        self::addCaps();
        Database::createTableCommentCourse();
        flush_rewrite_rules();
    }

    static public function onPluginDeactivation()
    {
        self::removeRoles();
        self::removeCaps();
        flush_rewrite_rules();
        // Database::deleteTableCommentCourse();
    }
}
