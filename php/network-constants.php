<?php

function get_clean_basedomain() {
	if ( $existing_domain = network_domain_check() )
		return $existing_domain;
	$domain = preg_replace( '|https?://|', '', get_option( 'siteurl' ) );
	if ( $slash = strpos( $domain, '/' ) )
		$domain = substr( $domain, 0, $slash );
	return $domain;
}

$hostname = get_clean_basedomain();
$slashed_home = trailingslashit( get_option( 'home' ) );
$base = parse_url( $slashed_home, PHP_URL_PATH );

?>

define('MULTISITE', true);
define('SUBDOMAIN_INSTALL', true );
define('DOMAIN_CURRENT_SITE', '<?php echo $hostname; ?>');
define('PATH_CURRENT_SITE', '<?php echo $base; ?>');
define('SITE_ID_CURRENT_SITE', 1);
define('BLOG_ID_CURRENT_SITE', 1);
