<?php get_header(); ?>
<div id="AchtergrondMinecraftUpdate">
    <?php
    if ( have_posts() ) :
        while ( have_posts() ) : the_post();
            ?>

            <img src="<?php echo get_field('banner')['url'] ?>">
            <h2><?php the_title(); ?></h2>

            <div id="UpdateTitleBeschrijving"><?php the_content(); ?></div>
            <p>Versie nummer: <?php echo get_field('versie_nummer'); ?><p>
            <p>Gepubliceerde datum: <?php echo get_field('gepubliceerde_datum'); ?><p>
            <?php if( have_rows('toegevoegde_functies') ) : 

                while ( have_rows('toegevoegde_functies') ): the_row();  ?>

                    <h2><?php echo get_sub_field('functie_naam'); ?></h2>

                    <?php while ( have_rows('functie_uitleg') ): the_row(); ?>
                        <p><?php echo get_sub_field('beschrijving'); ?> </p>
                    <?php endwhile; ?>
                    
                        <?php if ( get_sub_field('functie_afbeelding_beschrijving')['afbeelding'] ) : ?>
                            <img src="<?php echo get_sub_field('functie_afbeelding_beschrijving')['afbeelding']['url'] ?>">
                            <?php if ( get_sub_field('functie_afbeelding_beschrijving')['beschrijving'] ) : ?>
                                <p><?php echo get_sub_field('functie_afbeelding_beschrijving')['beschrijving'] ?></p>
                            <?php endif; ?>
                        <?php endif; ?>

                <?php endwhile; ?>
            <?php else : ?> 
                <p>Geen toegevoegde functies gevonden</p>
            <?php endif; ?>
            <?php
        endwhile;
    else :
        echo '<p>Geen berichten gevonden.</p>';
    endif;
    ?>
</div>
<?php get_footer(); ?>

