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
                
                <?php if ( !empty($mob_drops['on_dead']) ) : ?>
                    <h3>Drops bij dood:</h3>
                    <?php foreach ( $mob_drops['on_dead'] as $drop ) : ?>
                        <p><?php echo esc_html($drop['dead_drops']); ?></p>
                        <p><?php echo esc_html($drop['default_drop_chanche']); ?></p>
                        <img src="<?php echo esc_url($drop['dead_drops_image']['url']); ?>">
                    <?php endforeach; ?>
                <?php endif; ?>
                
                <?php if ( !empty($mob_drops['extra']) ) : ?>
                    <h3>Extra dops using:</h3>
                    <?php foreach ( $mob_drops['extra'] as $extra_drops ) : ?>
                        <img src="<?php echo esc_url($extra_drops['using_image']['url']); ?>">
                        <p><?php echo esc_html($extra_drops['using']); ?></p>
                        <img src="<?php echo esc_url($extra_drops['receive_image']['url']); ?>">
                        <p><?php echo esc_html($extra_drops['receive']); ?></p>
                    <?php endforeach; ?>
                <?php endif; ?>

            <?php endif; ?>

           <?php if( have_rows('health_and_feeding') ) : 

                while ( have_rows('health_and_feeding') ): the_row();  ?>
                        <p><?php echo get_sub_field('food'); ?></p>
                        <?php if ( get_sub_field('heals') ) : ?>
                            <p><?php echo get_sub_field('heals') ?></p>
                        <?php endif; ?>
                <?php endwhile; ?>
            <?php endif; ?>

            <p>tameable? <?php echo get_field('is_it_tameable'); ?><p>
            <p>biomes where they spawns <?php echo get_field('spawn_biome'); ?><p>

            <?php 
        endwhile;
    else :
        echo '<p>Geen berichten gevonden.</p>';
    endif;
    ?>
</div>
<?php get_footer(); ?>
