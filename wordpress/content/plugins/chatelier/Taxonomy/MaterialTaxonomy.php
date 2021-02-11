<?php

namespace chatelier\Taxonomy;

class MaterialTaxonomy extends Taxonomy
{
    const TAXONOMY_LABELS = [
        'name' => 'Matières',
        'singular_name' => 'Matière',
        'add_new_item' => 'Ajouter une nouvelle matière'
    ];

    const TAXONOMY_KEY = 'material';

    const CAPABILITIES = [
        'manage_terms' => 'manage_materials',
        'edit_terms' => 'edit_materials',
        'delete_terms' => 'delete_materials',
        'assign_terms' => 'assign_materials'
    ];

    const REST_BASE = 'course_material';

    const HIERARCHICAL = true;
}