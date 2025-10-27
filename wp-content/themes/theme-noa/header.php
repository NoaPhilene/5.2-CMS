<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php bloginfo('name'); ?></title>
    <link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>">
</head>
<body>
<header>
    <img src="<?php echo get_template_directory_uri(); ?>/assets/fotos/minecraft-logo.png" alt="Minecraft logo">
    <p><?php bloginfo('description'); ?></p>

    <div id="linkjesBar">
        <nav>
            <?php wp_nav_menu(array('theme_location' => 'hoofdmenu')); ?>
        </nav>
    </div>
</header>

