[{*
#########################################################################
#	$Id: 0dbcf88993d02fc200461a0f6f342e67a1e18acb $
#	Project:	YAML4 OXID eSales 4 Template 4.8.x
#	ProjectId:	oxYaml 
#	Copyright: 	Rene Ettling (r.ettling@eshop-source.com)
#				(http://www.eshop-source.com)
#				Some parts based on YAML4, Copyright 2005-2012, Dirk Jesse
#
#	Lizenz:		CC BY 3.0
#	Deutsch:	http://creativecommons.org/licenses/by/3.0/de/
#	Schweiz:	http://creativecommons.org/licenses/by/3.0/ch/
#	Englisch:	http://creativecommons.org/licenses/by/3.0/de/deed.en
#
#########################################################################
*}]
[{if $oView->isRootCatChanged() && $oxcmp_basket->getContents()}]
<div id="popup" class="popup">

    <strong>[{ oxmultilang ident="BASKET_EXCLUDE_HEAD" }]</strong>
    <p><b class="err">[{ oxmultilang ident="BASKET_EXCLUDE_MSG" }]</b></p>
    <p>[{ oxmultilang ident="BASKET_EXCLUDE_INFO" }]</p>

    <form action="[{ $oViewConf->getCurrentHomeDir() }]index.php" method="post">
    <div>
        [{ $oViewConf->getHiddenSid() }]
        [{ $oViewConf->getNavFormParams() }]
        <input type="hidden" name="cl" value="[{ $oViewConf->getActiveClassName() }]">
        <input type="hidden" name="fnc" value="executeuserchoice">
        <input type="hidden" name="tpl" value="[{$oViewConf->getActTplName()}]">
        [{if $oView->getArticleId()}]
          <input type="hidden" name="aid" value="[{$oView->getArticleId()}]">
        [{/if}]
        [{if $oView->getProduct()}]
          [{assign var="product" value=$oView->getProduct() }]
          <input type="hidden" name="anid" value="[{ $product->oxarticles__oxnid->value }]">
        [{/if}]
        [{oxhasrights ident="TOBASKET"}]
        <input type="submit" class="bl" name="tobasket" value="[{ oxmultilang ident="BASKET_POPUP_FULL_DISPLAYCART" }]" onclick="oxid.popup.hide();">
        [{/oxhasrights}]
        <input type="submit" class="br" value="[{ oxmultilang ident="BASKET_POPUP_FULL_CONTINUESHOPPING" }]" onclick="oxid.popup.hide();">
    </div>
    </form>
</div>
[{oxscript add="oxid.popup.show();" }]
[{/if}]
