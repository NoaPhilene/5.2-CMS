<?php 
$recent_updates = new WP_Query([
    'post_type'      => 'minecraft-update',
    'posts_per_page' => 3,
    'orderby'        => 'date',
    'order'          => 'DESC'
]);

$recent_mobs = new WP_Query([
    'post_type'      => 'minecraft-mob',
    'posts_per_page' => 3,
    'orderby'        => 'date',
    'order'          => 'DESC'
]);


get_header(); 
?>
<main id="index-page">
    <div class="hero" style="background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('<?php echo get_template_directory_uri(); ?>/assets/fotos/banner.jpg');">
        <div class="text">
            <h1><?php echo get_option('customize_site_plugin_hero_title'); ?></h1>
            <p><?php echo get_option('customize_site_plugin_hero_description'); ?></p>
        </div>
    </div>

    <section class="updates">
        <h2>Laaste updates</h2>
        <div class="updates-container">
            <?php
            if ($recent_updates->have_posts()) :
                while ($recent_updates->have_posts()) :
                    $recent_updates->the_post();
                    ?>
                    <a href="<?php the_permalink(); ?>" class="update">
                        <img src="<?php echo get_field('banner')['url'] ?>">

                        <div class="info">
                            <p class="title"><?php the_title(); ?></p>
                            <p class="version_number">Versie nummer: <?php echo get_field('versie_nummer') ?></p>
                        </div>
                    </a>
                    <?php
                endwhile;
            endif;
            ?>
        </div>
    </section>

    <section class="mobs">
        <h2>Laaste mobs</h2>
        <div class="mobs-container">
            <?php
            if ($recent_mobs->have_posts()) :
                while ($recent_mobs->have_posts()) :
                    $recent_mobs->the_post();
                    ?>
                    <a href="<?php the_permalink(); ?>" class="mob">
                        <img src="<?php echo get_field('mob_foto')['url'] ?>">

                        <div class="info">
                            <p class="title"><?php the_title(); ?></p>
                            <p class="gepubliceerde_datum">Gepubliceerde datum: <?php echo get_field('gepubliceerde_datum') ?></p>
                        </div>
                    </a>
                    <?php
                endwhile;
            endif;
            ?>
        </div>
    </section>
</div>
<?php get_footer(); ?>

