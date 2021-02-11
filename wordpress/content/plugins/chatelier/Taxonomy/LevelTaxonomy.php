<?php

namespace chatelier\Taxonomy;

class LevelTaxonomy extends Taxonomy
{
    const TAXONOMY_LABELS = [
        'name' => 'Niveaux',
        'singular_name' => 'Niveau',
        'add_new_item' => 'Ajouter un niveau'
    ];

    const TAXONOMY_KEY = 'level';

    const CAPABILITIES = [
        'manage_terms' => 'manage_levels',
        'edit_terms' => 'edit_levels',
        'delete_terms' => 'delete_levels',
        'assign_terms' => 'assign_levels'
    ];

    const REST_BASE = 'course_level';

    const HIERARCHICAL = true;
}