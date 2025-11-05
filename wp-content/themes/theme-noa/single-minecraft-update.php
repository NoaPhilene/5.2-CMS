<?php get_header(); ?>

<div id="AchtergrondMinecraftUpdate">

    <?php
    if ( have_posts() ) :
        while ( have_posts() ) : the_post();

            // Banner, versie, datum
            $banner = get_field('banner');
            $versie_nummer = get_field('versie_nummer');
            $gepubliceerde_datum = get_field('gepubliceerde_datum');
            ?>

            <?php if ( $banner && isset($banner['url']) ) : ?>
                <img src="<?php echo esc_url($banner['url']); ?>" alt="Banner">
            <?php endif; ?>

            <h1><?php the_title(); ?></h1>

            <div id="UpdateTitleBeschrijving"><?php the_content(); ?></div>

            <?php if ( $versie_nummer ) : ?>
                <p>Versie nummer: <?php echo esc_html($versie_nummer); ?></p>
            <?php endif; ?>

            <?php if ( $gepubliceerde_datum ) : ?>
                <p>Gepubliceerde datum: <?php echo esc_html($gepubliceerde_datum); ?></p>
            <?php endif; ?>

            <!-- Toegevoegde functies -->
            <?php if ( have_rows('toegevoegde_functies') ) : ?>
                <?php while ( have_rows('toegevoegde_functies') ) : the_row(); ?>

                    <div class="functie-blok">
                        <h2><?php echo esc_html( get_sub_field('functie_naam') ); ?></h2>

                        <div id="MobBeschrijving">
                            <ul>
                                <?php while ( have_rows('functie_uitleg') ) : the_row(); ?>
                                    <li>
                                        <?php echo esc_html( get_sub_field('beschrijving') ); ?>

                                        <?php if ( have_rows('extra_info') ) : ?>
                                            <ul>
                                                <?php while ( have_rows('extra_info') ) : the_row(); ?>
                                                    <li><?php echo esc_html( get_sub_field('extra_extra') ); ?></li>
                                                <?php endwhile; ?>
                                            </ul>
                                        <?php endif; ?>
                                    </li>
                                <?php endwhile; ?>
                            </ul>
                        </div>

                        <?php 
                        // Functie afbeelding en beschrijving
                        $afb_beschrijving = get_sub_field('functie_afbeelding_beschrijving');
                        if ( is_array($afb_beschrijving) && !empty($afb_beschrijving['afbeelding']['url']) ) : ?>
                            <img src="<?php echo esc_url($afb_beschrijving['afbeelding']['url']); ?>" alt="Functie afbeelding">
                            <?php if ( !empty($afb_beschrijving['beschrijving']) ) : ?>
                                <p><?php echo esc_html($afb_beschrijving['beschrijving']); ?></p>
                            <?php endif; ?>
                        <?php endif; ?>

                    </div>

                <?php endwhile; ?>
            <?php else : ?>
                <p>Geen toegevoegde functies gevonden.</p>
            <?php endif; ?>

        <?php endwhile;
    else :
        echo '<p>Geen berichten gevonden.</p>';
    endif;
    ?>

</div>

<?php get_footer(); ?>
