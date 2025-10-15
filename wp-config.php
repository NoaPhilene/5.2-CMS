<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wptest01' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '$=,9k9PcT}nG/MXd)nw@_vw(.5@)uLTEDwfzNedF:y_aGRCu1vLvWxm~yQT0:[:G' );
define( 'SECURE_AUTH_KEY',  'T00>~gZ9;A@W$Q+P;H6woOGA]-.})l<?7f-eT~V_G/aAYs9gjrAz`0=.jG%e~sId' );
define( 'LOGGED_IN_KEY',    '{[mVuCW-7>HKOcm~!`Xt<`6hj H)7:_*n{4n_7]9Ygv.$gTsM?YGO(.s8?}BTD(k' );
define( 'NONCE_KEY',        '%EoYg[AV!B Y5H;9{T9G]_.$y?6T5mL~]K4H!Xxww]X3@3vn)a[_y(jpP+sU)l)!' );
define( 'AUTH_SALT',        'ipn9xj>J<I6&XOOA0UG[6ZKZB-9@Bfg{S&Zt#ItlVyz-!3tp.MD9f4pSB>KY c&:' );
define( 'SECURE_AUTH_SALT', '9OV^`MGYW ?JL`fM]B@K/xJi|9{F(Q=+3Z!y/c1s7MM1;[Ws]q?zN(?FT=J4U/(m' );
define( 'LOGGED_IN_SALT',   ';:LzmT_wQadC(LS0Icojevgw/)ER=ONXAzPk@hD/9GA3Rl_/)yP9m;$S<9 sJLwE' );
define( 'NONCE_SALT',       '@-h3$B^G*1/uA%E&/Tlea93d i_A11;@,*-9e6+J-zKm;rf/NAZB&6nElj&WSK0p' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 *
 * At the installation time, database tables are created with the specified prefix.
 * Changing this value after WordPress is installed will make your site think
 * it has not been installed.
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/#table-prefix
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
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
