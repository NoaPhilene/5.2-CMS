<?php get_header(); ?>
<div id="AchtergrondMinecraftMob">
    <?php
    if ( have_posts() ) :
        while ( have_posts() ) : the_post();
            ?>

            <div id="IntroMinecraftMob">
                <img src="<?php echo get_field('mob_foto')['url'] ?>">
                <h1><?php echo get_field('mob_name'); ?></h1>
                <div id="UpdateTitleBeschrijving"><?php the_content(); ?></div>
                <h2>Gepubliceerde datum: <?php echo get_field('gepubliceerde_datum'); ?></h2>
                <h2>Health points: <?php echo get_field('mob_health_points'); ?></h2>
                <h2>Behavior: <?php echo get_field('behavior'); ?></h2>
                <h2>tameable: <?php echo get_field('is_it_tameable'); ?></h2>
            </div>

            
            <?php if( have_rows('mob_varianten') ) : ?>

                <h2>Mob variants</h2>

                <div id = "VarianteContainer">
                    <?php while ( have_rows('mob_varianten') ): the_row();  ?>
                        <div id = "VariantenBox">
                            <img src="<?php echo esc_url(get_sub_field('variant_foto')['url']); ?>" >
                            <h2><?php echo esc_html (get_sub_field('variant_naam')); ?></h2>
                            <p><?php echo esc_html (get_sub_field('variant_info')); ?></p>
                        </div>
                    <?php endwhile; ?>
                </div>
                

            <?php endif;  ?>

            <?php if ($mob_drops = get_field('mob_drops')) : ?>
                
                <div id = "KopjeMobDrops">
                    <h2>Mob drops</h2>
                    
                    <?php if (!empty($mob_drops['breeding'])) : ?>
                        <p><?php echo esc_html($mob_drops['breeding']); ?></p>
                    <?php endif; ?>
                </div>
                
                <?php if ( !empty($mob_drops['on_dead']) ) : ?>

                    <h2>Drops bij dood:</h2>

                    <div id = "DeadDropsContainer">
                        <?php foreach ( $mob_drops['on_dead'] as $drop ) : ?>
                            <div id = "DeadDrops">
                                <img src="<?php echo esc_url($drop['dead_drops_image']['url']); ?>">
                                <p><?php echo esc_html($drop['dead_drops']); ?></p>
                                <p><?php echo esc_html($drop['default_drop_chanche']); ?></p>
                            </div>
                        <?php endforeach; ?>
                    </div>
                <?php endif; ?>
                
                <?php if ( !empty($mob_drops['extra']) ) : ?>
                    <h3>Extra dops using:</h3>
                    <div id ="ExtraDropsContainer">
                        <?php foreach ( $mob_drops['extra'] as $extra_drops ) : ?>
                            <div id = "ExtraDropsBox">
                                <p>Using</p>
                                <div class = "ExtraDrops">
                                    <img src="<?php echo esc_url($extra_drops['using_image']['url']); ?>">
                                    <p><?php echo esc_html($extra_drops['using']); ?></p>
                                </div>
                                <p>Get</p>
                                <div class = "ExtraDrops">
                                    <img src="<?php echo esc_url($extra_drops['receive_image']['url']); ?>">
                                    <p><?php echo esc_html($extra_drops['receive']); ?></p>
                                 </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                <?php endif; ?>

            <?php endif; ?>

           <?php if( have_rows('health_and_feeding') ) : ?>

            <h2>Food</h2>
            <div id = "FoodBoxContainer">
                <?php while ( have_rows('health_and_feeding') ): the_row(); ?>
                    <div id = "FoodBox">
                        <img src="<?php echo esc_url(get_sub_field('food_image')['url']); ?>" >
                        <p><?php echo get_sub_field('food'); ?></p>
                        <?php if ( get_sub_field('heals') ) : ?>
                            <p>Heals <?php echo get_sub_field('heals') ?> points</p>
                        <?php endif; ?>
                    </div>
                <?php endwhile; ?>
            </div>
            <?php endif; ?>

            <?php if ($spawn_biomes = get_field('spawn_biome')) : ?>
                <h2>Spawn area </h2>
                <div id ="SpawnBiomesBox">
                <?php foreach ( $spawn_biomes as $biome ) : ?>
                    <li><?php echo esc_html($biome); ?></li>
                <?php endforeach; ?>
                </div>
            <?php endif; ?>

            <?php 
        endwhile;
    else :
        echo '<p>Geen berichten gevonden.</p>';
    endif;
    ?>
</div>
<?php get_footer(); ?>
