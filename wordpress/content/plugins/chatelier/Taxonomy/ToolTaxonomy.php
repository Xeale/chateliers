<?php

namespace chatelier\Taxonomy;

class ToolTaxonomy extends Taxonomy
{
    const TAXONOMY_LABELS = [
        'name' => 'Outils',
        'singular_name' => 'Outil',
        'add_new_item' => 'Ajouter un nouvel outil'
    ];

    const TAXONOMY_KEY = 'tool';

    const CAPABILITIES = [
        'manage_terms' => 'manage_tools',
        'edit_terms' => 'edit_tools',
        'delete_terms' => 'delete_tools',
        'assign_terms' => 'assign_tools'
    ];

    const REST_BASE = 'course_tool';

    const HIERARCHICAL = true;
}