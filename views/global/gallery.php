<section id="section-gallery">
    <?php foreach($images as $image):?>
        <div class="img-gallery" style="background-image:url(<?= $image->getImage()?>)"></div>
    <?php endforeach; ?>
</section>
