[{*
#########################################################################
#	$Id: bd34841ffd4626fec6572fbce8af6bd17928f7ff $
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
<div id="wait" class="popup">
    <strong>[{ oxmultilang ident="BASKET_POPUP_ADDEDARTICLETOBASKET" }]</strong>
    <form action="[{ $oViewConf->getCurrentHomeDir() }]index.php" method="post">
    <div>
        [{ $oViewConf->getHiddenSid() }]
        <input type="hidden" name="cl" value="basket">
        <input type="hidden" name="redirected" value="1">
        [{oxhasrights ident="TOBASKET"}]
        <input id="popupCart" type="submit" class="ym-button" style="float:left; margin-right: 0.5em;" value="[{ oxmultilang ident="BASKET_POPUP_FULL_DISPLAYCART" }]" onclick="if (oxid.popup) {oxid.popup.hide();}">
        [{/oxhasrights}]
        <input id="popupContinue" type="button"  class="ym-button" style="margin-right: 0;" value="[{ oxmultilang ident="BASKET_POPUP_FULL_CONTINUESHOPPING" }]" onclick="oxid.popup.hide();return false;" disabled="disabled">
    </div>
    </form>
</div>

[{ if $oxcmp_basket->getProductsCount() && ( $_newitem || $Errors.popup )}]
[{assign var="currency" value=$oView->getActCurrency() }]
<div id="popup" class="popup">
    [{if $Errors.popup}]
        [{foreach from=$Errors.popup item=oEr }]
            <strong class="err">[{ $oEr->getOxMessage() }]</strong>
        [{/foreach}]
    [{else}]
        <strong>[{ oxmultilang ident="BASKET_POPUP_FULL_ADDEDARTICLETOBASKET" }]</strong>
    [{/if}]
    [{oxhasrights ident="TOBASKET"}]
    [{if $oxcmp_basket->getContents()}]
    	<div class="ym-grid pop_cart">
     		<div class="ym-g50 ym-gl">[{ oxmultilang ident="INC_CMP_BASKET_PRODUCT" }]</div> <div class="ym-g50 ym-gr">[{ $oxcmp_basket->getProductsCount()}]</div>
     		<div class="ym-g50 ym-gl">[{ oxmultilang ident="INC_CMP_BASKET_QUANTITY" }]</div> <div class="ym-g50 ym-gr">[{ $oxcmp_basket->getItemsCount()}]</div>
     		[{if $oxcmp_basket->getDeliveryCosts()}]
     		<div class="ym-g50 ym-gl">[{ oxmultilang ident="INC_CMP_BASKET_SHIPPING" }]</div> <div class="ym-g50 ym-gr">[{ $oxcmp_basket->getFDeliveryCosts() }] [{ $currency->sign}]</div>
     		[{/if}]
     		<div class="ym-g50 ym-gl">[{ oxmultilang ident="INC_CMP_BASKET_TOTALPRODUCTS" }]</div> <div class="ym-g50 ym-gr">[{ $oxcmp_basket->getFProductsPrice()}] [{ $currency->sign}]</div>
    		[{/if}]
    	</div>
    [{/oxhasrights}]
    <form action="[{ $oViewConf->getCurrentHomeDir() }]index.php" method="post">
    <div>
        [{ $oViewConf->getHiddenSid() }]
        <input type="hidden" name="cl" value="basket">
        <input type="hidden" name="redirected" value="1">
        [{oxhasrights ident="TOBASKET"}]
        <input type="submit" class="ym-button" style="float:left; margin-right: 0.5em;" value="[{ oxmultilang ident="BASKET_POPUP_FULL_DISPLAYCART" }]" onclick="oxid.popup.hide();">
        [{/oxhasrights}]
        <input type="button" class="ym-button" style="margin-right: 0;"value="[{ oxmultilang ident="BASKET_POPUP_FULL_CONTINUESHOPPING" }]" onclick="oxid.popup.hide();return false;">
    </div>
    </form>
</div>
[{oxscript add="oxid.popup.show();" }]
[{/if }]
