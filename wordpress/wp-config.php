<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'chatelier' );

/** MySQL database username */
define( 'DB_USER', 'chatelier' );

/** MySQL database password */
define( 'DB_PASSWORD', 'chatelier' );

/** MySQL hostname */
define( 'DB_HOST', 'chatelier');

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'B0#8Y^oJ0h`&yw#!j0lSBkCM7Z]L`E_*D>C$g=v):+Qs9c&H{a$/[?iq4>@H,4q&');
define('SECURE_AUTH_KEY',  '4jgw5rcT?5!h1TU?QV{9`Zq,,1k:ZWsDQ0Ph_%X(lp0nfJ`xv:b}HLi_XJ!4EDS;');
define('LOGGED_IN_KEY',    ']<nabR%8<y3A~(p;Kz9+cn_{Os;h=WIW CXy%sNyJVIlbz137-R^uB< |s0/~VU+');
define('NONCE_KEY',        'G.p+X+|&T;6SA[Oku33kFfLQ69uf5yB<XtPccU:jn-^|s0YYWE[`{G3<*eJ.$-/D');
define('AUTH_SALT',        'j@e_Ly-HXU?&|=.GN64xH&~S)C25GZ:Rs_^@|D@NO28v|6u|.8^cF{33d6jrW[ZC');
define('SECURE_AUTH_SALT', '[VsNh-9O|#GWo]#4y=;z]evKwHAg?(4pDO(2)4Yr;h(KB4iMP:U_*i<h%ZaZr[jd');
define('LOGGED_IN_SALT',   '~W#.cP0Ec +|#j<|SyMzCa&/,@]c}yv!mr-M`p1#C:><mj>*/,1c3Fg+_e,n6HLV');
define('NONCE_SALT',       '~.0!@tz3^mC8C]ss7|0aCEGCp1DxS!hU6*2q,vro7Rq$|IudQPR7a/??s+++(6W1');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );

define( 'WP_HOME', rtrim( 'http://localhost/projet-tuto-chapellerie/wordpress/', '/' ) );
define( 'WP_SITEURL',  WP_HOME . '/wp' );
define( 'WP_CONTENT_URL', WP_HOME . '/content' );
define( 'WP_CONTENT_DIR', __DIR__ . '/content' );

// Définir l'environnement. Choix disponibles : production, staging, development
// ENVIRONMENT => constante "custom" (pas gérée par WordPress)
define('ENVIRONMENT', 'development');

// si ma constante ENVIRONMENT n'est pas définie
if (!defined('ENVIRONMENT')) {
	// si le débug est activé (si WP_DEBUG est à true)
	if (WP_DEBUG) {
		// alors j'affiche un message d'erreur
		echo ('The ENVIRONMENT constant is not defined.');
		die;
	}
	// si ma constante ENVIRONMENT est définie
} else {
	// si sa valeur est 'production'
	if (ENVIRONMENT === 'production') {
		// on require le fichier avec les contantes définies pour la prod
		require __DIR__ . '/wp-config-production.php';
		// si sa valeur est 'staging'
	} elseif (ENVIRONMENT === 'staging') {
		// on require le fichier staging
		require __DIR__ . '/wp-config-staging.php';
	} elseif (ENVIRONMENT === 'development') {
		require __DIR__ . '/wp-config-development.php';
	} else {
		if (WP_DEBUG) {
			echo ('The ENVIRONMENT value is not valid.');
			die;
		}
	}
}


/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
