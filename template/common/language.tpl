<?php if (count($languages) > 1) { ?>
    <form id="form-language" class="btn-group" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="btn-group toggle-wrap" data-toggle="dropdown">
            <span class="hidden-xs hidden-sm hidden-md btn"><?php echo $text_language; ?></span>
            <?php foreach ($languages as $language) { ?>
                <?php if ($language['code'] == $code) { ?>
                    <span class="hidden-xs hidden-sm hidden-md btn dropdown-toggle"><?php echo $language['name']; ?></span>
                <?php } ?>
            <?php } ?>
        </div>
        <ul class="dropdown-menu dropdown-menu-left">
            <?php foreach ($languages as $language) { ?>
                <li>
                    <button class="language-select" type="button"
                        name="<?php echo $language['code']; ?>"><img
                        src="catalog/language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png"
                        alt="<?php echo $language['name']; ?>"
                        title="<?php echo $language['name']; ?>"/> <?php echo $language['name']; ?>
                    </button>
                </li>
            <?php } ?>
        </ul>
        <input type="hidden" name="code" value=""/>
        <input type="hidden" name="redirect" value="<?php echo $redirect; ?>"/>
    </form>
<?php } ?>
