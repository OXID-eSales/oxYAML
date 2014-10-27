[{*
#########################################################################
#	$Id: a694d2d0a53cd722f00398a3eb0f29ef35d04059 $
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
[{ if $oxcmp_basket->getProductsCount()}]  <!-- $bl_perfShowRightBasket &&  -->
  [{oxhasrights ident="TOBASKET"}]
    [{assign var="currency" value=$oView->getActCurrency() }]
<div class="box_cart">
	<h6 class="ym-vlist">[{ oxmultilang ident="INC_RIGHTITEM_BASKET" }]</h6>
	<div class="body">
		<div class="ym-gbox">
			
			[{if $_basket_extended }]
            [{foreach from=$oxcmp_basket->getContents() name=rightlist item=_product}]
            <p id="[{$_basket_testid}]Title_[{$_product->getProductId()}]_[{$smarty.foreach.rightlist.iteration}]">
            [{ assign var="sRightListArtTitle" value=$_product->getTitle() }]
            [{$_product->getAmount()}]&nbsp;x&nbsp;<a id="[{$_basket_testid}]TitleLink_[{$_product->getProductId()}]_[{$smarty.foreach.rightlist.iteration}]" href="[{$_product->getLink()}]">
            	[{ $sRightListArtTitle|strip_tags|truncate:20:"...":true }]
            </a>
            </p>
             [{/foreach}]
			<hr></hr>
            [{/if}]
            <p class="textr">
			<small>
			[{ if $oxcmp_basket->getDeliveryCosts() }]
			<strong>[{ oxmultilang ident="INC_CMP_BASKET_SHIPPING" }]&nbsp;[{ $oxcmp_basket->getFDeliveryCosts() }] [{ $currency->sign}]</strong><br />
			[{ /if}]
		    <strong>[{ oxmultilang ident="INC_CMP_BASKET_TOTALPRODUCTS" }]&nbsp;[{ $oxcmp_basket->getFProductsPrice()}] [{ $currency->sign}]</strong>
			[{ if !$oxcmp_basket->getDeliveryCosts() }]<br /><a rel="nofollow" class="dinfo" href="[{ oxgetseourl ident="oxdeliveryinfo" type="oxcontent" }]">[{ oxmultilang ident="INC_HEADER_INCLTAXPLUSSHIPPING" }]</a>[{ /if}]
			</small>
			</p>

            <form action="[{ $oViewConf->getSelfActionLink() }]" method="post">
            	[{ $oViewConf->getHiddenSid() }]
            	<input type="hidden" name="cl" value="basket">
            	<div class="textc">
            		<input id="[{$_basket_testid}]Open" type="submit" class="ym-button" value="[{ oxmultilang ident="INC_RIGHTITEM_DISPLAYBASKET" }]">
            	</div>
            </form>

        </div>[{* ENDE box_cart.body.ym-gbox *}]
	</div>[{* ENDE box_cart.body *}]
</div>[{* ENDE box_cart *}]

  [{/oxhasrights}]
[{/if}]
