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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'boodeer' );

/** MySQL database password */
define( 'DB_PASSWORD', 'boodeer' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

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
define( 'AUTH_KEY',         'Eky?Y>R3Cl,cj%Q?fklWXr3!~Oi@BJTYbNMGwCYab^)^IBvV#=Yj;#DF]MG++mR#' );
define( 'SECURE_AUTH_KEY',  'nm~KEh57Vg/BF>caM%nkjET)Lp2`iD7JY[0S;tX[;E;7{t0}i3v{-Ir4}HCgDqWj' );
define( 'LOGGED_IN_KEY',    '@4ty=//g6Ofz]w#E0]u_4ED8g!7!E]dGP*A?V8pm}+76bpgRoZw/~|GHxhtzFzz~' );
define( 'NONCE_KEY',        ']lheQ37m+C*nSKC8<lR!I7f-q85q%m+y@ffAAE!YzeuBM:5K:g/x}zklTje[py&3' );
define( 'AUTH_SALT',        '%/KH/(g`xOOHFKmg,qOUFk:MBMd@Ey7M*ZGT$j[`=K*/xi7/HUa$K@3ql(Dv[,hA' );
define( 'SECURE_AUTH_SALT', '6 F!03UJ2YsJ^$eiNwc|07qe5/ 87?X6W0}w,uEx(tae/XIzX6/AyA`@{SMWu2ne' );
define( 'LOGGED_IN_SALT',   '~a_@hj(y<|R~2L}Q:u5Fw;^l8N4,b68euJ]a1(O#l4_tl_ML5!,p,|Ae-7lUN$^)' );
define( 'NONCE_SALT',       '7t6{wY2u7>u0kYPxH~2zkB-qShjW-|@4M[X|$vjg[{plYrR@-Cb_RMz@;Dn}.w-I' );

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
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
