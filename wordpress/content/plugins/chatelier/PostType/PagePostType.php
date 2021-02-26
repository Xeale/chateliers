<?php

namespace chatelier\PostType;

class PagePostType extends PostType
{
    const POST_TYPE_KEY = 'page';

    const POST_TYPE_META_KEYS = [
        'materiel',
        'fournisseur',
        'histoire_de_la_mode',
        'usage',
        'vocabulaire_de_la_chapellerie',
    ];
}
