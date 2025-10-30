<?php
/*
Plugin Name: Customize Site
Plugin URI: http://voorbeeld.com/
Description: Met deze plugin kan je nog meer aanpassingen maken op de site.
Version: 1.0
Author: Noa
Author URI: http://voorbeeld.com/
License: GPLv2 or later
*/

function customize_site_plugin_menu() {
    add_options_page(
        'Customize Site Instellingen',  // Paginatitel
        'Customize Site',                      // Menu-item titel
        'manage_options',                   // Wie kan de plugin (toegangsniveau)
        'customize-site',               // De slug
        'customize_site_plugin_instellingen_pagina' // Functie om de inhoud van de pagina te tonen
    );
}
add_action('admin_menu', 'customize_site_plugin_menu');

// Functie om de inhoud van de instellingenpagina te tonen
function customize_site_plugin_instellingen_pagina() {
    ?>
    <div class="wrap">
        <h2>Customize Site Instellingen</h2>
        <form method="post" action="options.php">
            <?php
            settings_fields('customize_site_plugin_options_group');
            ?>
            <label for="customize_site_plugin_footer">Footer Text:</label>
            <input type="text" id="customize_site_plugin_footer" name="customize_site_plugin_footer" value="<?php echo get_option('customize_site_plugin_footer'); ?>">
            <?php
            submit_button();
            ?>
        </form>
    </div>
    <?php
}

// Registreren van instellingen
function customize_site_plugin_register_settings() {
    register_setting('customize_site_plugin_options_group', 'customize_site_plugin_footer');
}
add_action('admin_init', 'customize_site_plugin_register_settings');

