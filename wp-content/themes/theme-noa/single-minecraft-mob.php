<?php get_header(); ?>
<div id="AchtergrondMinecraftMob">
    <?php
    if ( have_posts() ) :
        while ( have_posts() ) : the_post();
            ?>

            <img src="<?php echo get_field('mob_foto')['url'] ?>">
            <h2><?php the_title(); ?></h2>
             <p>Gepubliceerde datum: <?php echo get_field('gepubliceerde_datum'); ?><p>
            <h2><?php mob_name(); ?></h2>
     <?php 
        endwhile;
    else :
        echo '<p>Geen berichten gevonden.</p>';
    endif;
    ?>
</div>
<?php get_footer(); ?>