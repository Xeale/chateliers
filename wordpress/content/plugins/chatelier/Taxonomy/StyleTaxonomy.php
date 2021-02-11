<?php

namespace chatelier\Taxonomy;

class StyleTaxonomy extends Taxonomy
{
    const TAXONOMY_LABELS = [
        'name' => 'Styles',
        'singular_name' => 'Style',
        'add_new_item' => 'Ajouter un nouveau style'
    ];

    const TAXONOMY_KEY = 'style';

    const CAPABILITIES = [
        'manage_terms' => 'manage_styles',
        'edit_terms' => 'edit_styles',
        'delete_terms' => 'delete_styles',
        'assign_terms' => 'assign_styles'
    ];

    const REST_BASE = 'course_style';

    const HIERARCHICAL = true;
}