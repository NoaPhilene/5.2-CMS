<?php get_header(); ?>
<div id="MinecraftMobArchive">
    <?php if ( have_posts() ) : ?>
        <div id="linkjes-container">
            <?php while ( have_posts() ) : the_post(); ?>
                <a href="<?php the_permalink(); ?>">
                    <div id="link-box">
                        <img src="<?php echo get_field('mob_foto')['url'] ?>">
                        <h2>
                            <?php echo get_field('mob_name'); ?>
                        </h2>
                    </div>
                </a>
            <?php endwhile; ?>
        </div>
    <?php else :
        echo '<p>Geen berichten gevonden.</p>';
    endif;
    ?>
</div>
<?php get_footer(); ?>
