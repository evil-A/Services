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
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'evila' );

/** MySQL database password */
define( 'DB_PASSWORD', 'evila' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

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
define('AUTH_KEY',         'c>M;J<tV).CDSQ(E+h=++lC6*.8Zqb)X/I,doa!YhVJT+z+9(k}O[oVC?n.enb@7');
define('SECURE_AUTH_KEY',  'a#sJt~;%5~M7%n]5J=LtE`J-J/VXW2A`|mq+Qo1|B*#p=s.k?@ft*7_6]2P<?iv!');
define('LOGGED_IN_KEY',    ';:N4rzP]x99HY@Tk+v#|eKe^PmE-ki#3?ewhmns4>gg3ra]a@V3=Y7n=ZL+_b#@v');
define('NONCE_KEY',        'XPMl+9KLj=-9RXbeFaCbUK=dOIM32|H+J@Y:R$;0W_j%o{rIy[G[GggVrO-i`1Qt');
define('AUTH_SALT',        'aI.+21@ ?OC-ia;oD[[Jltnlh|)1Om! {U8WCRMmLRv- &;;--|6xXi|G_RYLO5D');
define('SECURE_AUTH_SALT', '&@cVv ,1HRPp~nnYbaK+MD^2#esKv($!s9bH*4_S SaJZMS|lhu1_<Y ^qXA0(sI');
define('LOGGED_IN_SALT',   'K56`RSRN?tl7;Y5vT~fW$Ar*ExCaXM_)K~U~Nf[}bWe!ueal<Yg;9%l41H<i|u7Y');
define('NONCE_SALT',       '.dN:N(tpkn75t?BloNMYmM<*<l{N9ph|ZOToA?tjam-k13^+TY0+na$!jNw|UML`');
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
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
