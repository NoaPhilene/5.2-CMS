<?php get_header(); ?>
<div id="MinecraftUpdatesArchive">
    <?php if ( have_posts() ) : ?>
        <div id="linkjes-container">
            <?php while ( have_posts() ) : the_post(); ?>
                <a href="<?php the_permalink(); ?>">
                    <div id="link-box">
                        <img src="<?php echo get_field('banner')['url'] ?>">
                        <h2>
                            <p class="title"><?php the_title(); ?></p>
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


