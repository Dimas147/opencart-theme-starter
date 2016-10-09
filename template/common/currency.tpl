<?php if (count($currencies) > 1) { ?>
    <form id="currency" class="btn-group" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="btn-group toggle-wrap" data-toggle="dropdown">
            <span class="hidden-xs hidden-sm hidden-md btn"><?php echo $text_currency; ?></span>
            <?php foreach ($currencies as $currency) { ?>
                <?php if ($currency['code'] == $code) { ?>
                    <span
                        class="hidden-xs hidden-sm hidden-md btn dropdown-toggle"><?php echo $currency['title']; ?></span>
                <?php } ?>
            <?php } ?>
        </div>
        <ul class="dropdown-menu dropdown-menu-left">
            <?php foreach ($currencies as $currency) { ?>
                <?php if ($currency['symbol_left']) { ?>
                    <li>
                        <button class="currency-select" type="button"
                                name="<?php echo $currency['code']; ?>"><?php echo $currency['symbol_left']; ?><?php echo $currency['title']; ?></button>
                    </li>
                <?php } else { ?>
                    <li>
                        <button class="currency-select" type="button"
                                name="<?php echo $currency['code']; ?>"><?php echo $currency['symbol_right']; ?><?php echo $currency['title']; ?></button>
                    </li>
                <?php } ?>
            <?php } ?>
        </ul>
        <input type="hidden" name="code" value=""/>
        <input type="hidden" name="redirect" value="<?php echo $redirect; ?>"/>
    </form>
<?php } ?>
