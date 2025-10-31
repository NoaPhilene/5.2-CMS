<?php get_header(); ?>
<div id="AchtergrondMinecraftMob">
    <?php
    if ( have_posts() ) :
        while ( have_posts() ) : the_post();
            ?>

            <img src="<?php echo get_field('mob_foto')['url'] ?>">
            <h2><?php the_title(); ?></h2>
             <p>Gepubliceerde datum: <?php echo get_field('gepubliceerde_datum'); ?><p>

            <?php if( have_rows('mob_varianten') ) : 

                while ( have_rows('mob_varianten') ): the_row();  ?>
                    <img src="<?php echo esc_url(get_sub_field('variant_foto')['url']); ?>" >
                    <h2><?php echo get_sub_field('variant_naam'); ?></h2>
                    <p><?php echo get_sub_field('variant_info'); ?></p>
                <?php endwhile; 

            endif;  ?>

            <?php if ($mob_drops = get_field('mob_drops')) : ?>
                <?php if (!empty($mob_drops['breeding'])) : ?>
                    <p><?php echo esc_html($mob_drops['breeding']); ?></p>
                <?php endif; ?>
            <?php endif; ?>


            <?php 
        endwhile;
    else :
        echo '<p>Geen berichten gevonden.</p>';
    endif;
    ?>
</div>
<?php get_footer(); ?>
