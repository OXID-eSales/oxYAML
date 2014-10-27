[{*
#########################################################################
#	$Id: 78801d71a2521a83069126fd7dc9c61dbc49388c $
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
[{assign var="oDetailsProduct" value=$oView->getProduct()}]
[{assign var="oPictureProduct" value=$oView->getPicturesProduct()}]
[{assign var="currency" value=$oView->getActCurrency()}]
[{assign var="sPageHeadTitle" value=$oDetailsProduct->oxarticles__oxtitle->value|cat:' '|cat:$oDetailsProduct->oxarticles__oxvarselect->value}]

[{if $oView->getPriceAlarmStatus() == 1}]
[{assign var="shop_name" value=$oxcmp_shop->oxshops__oxname->value}]
[{assign var="bid_price" value=$oView->getBidPrice()}]
[{assign var="currency_sign" value=$currency->sign}]
[{assign_adv var="message_vars" value="array
    (
     '0' => '$shop_name',
     '1' => '$bid_price',
     '2' => '$currency_sign'
    )"}]
[{assign var="_statusMessage" value="PRICE_ALERT_THANK_YOU_MESSAGE"|oxmultilangassign:$message_vars}]
[{include file="message/success.tpl" statusMessage=`$_statusMessage`}]
[{elseif $oView->getPriceAlarmStatus() == 2}]
[{assign var="_statusMessage" value="MESSAGE_WRONG_VERIFICATION_CODE"|oxmultilangassign}]
[{include file="message/error.tpl" statusMessage=$_statusMessage}]
[{elseif $oView->getPriceAlarmStatus() === 0}]
[{assign var="_statusMessage1" value="MESSAGE_NOT_ABLE_TO_SEND_EMAIL"|oxmultilangassign|cat:"<br> "}]
[{assign var="_statusMessage2" value="MESSAGE_VERIFY_YOUR_EMAIL"|oxmultilangassign}]
[{include file="message/error.tpl" statusMessage=`$_statusMessage1``$_statusMessage2`}]
[{/if}]

[{if $oView->getSearchTitle() }]
  [{ assign var="template_location" value=$oView->getSearchTitle()}]
[{else}]
  [{ assign var="template_location" value=""}]
  [{ assign var="blSep" value=""}]
  [{foreach from=$oView->getCatTreePath() item=oCatPath}]
    [{ if $blSep == "y"}]
      [{ assign var="template_location" value=$template_location|cat:" / "}]
    [{/if}]
    [{ assign var="template_location" value=$template_location|cat:"<a href=\""|cat:$oCatPath->getLink()|cat:"\">"|cat:$oCatPath->oxcategories__oxtitle->value|cat:"</a>"}]
    [{ assign var="blSep" value="y"}]
  [{/foreach}]
[{/if}]

[{assign var="aVariantSelections" value=$oView->getVariantSelections()}]

[{if $aVariantSelections && $aVariantSelections.rawselections}]
    [{assign var="_sSelectionHashCollection" value=""}]
    [{foreach from=$aVariantSelections.rawselections item=oSelectionList key=iKey}]
        [{assign var="_sSelectionHash" value=""}]
        [{foreach from=$oSelectionList item=oListItem key=iPos}]
            [{assign var="_sSelectionHash" value=$_sSelectionHash|cat:$iPos|cat:":"|cat:$oListItem.hash|cat:"|"}]
        [{/foreach}]
        [{if $_sSelectionHash}]
            [{if $_sSelectionHashCollection}][{assign var="_sSelectionHashCollection" value=$_sSelectionHashCollection|cat:","}][{/if}]
            [{assign var="_sSelectionHashCollection" value=$_sSelectionHashCollection|cat:"'`$_sSelectionHash`'"}]
        [{/if}]
    [{/foreach}]
    [{oxscript add="var oxVariantSelections  = [`$_sSelectionHashCollection`];"}]
[{/if}]

[{if $oxcmp_user}]
        [{assign var="force_sid" value=$oView->getSidForWidget()}]
[{/if}]


[{include file="layout/header.tpl" location=$template_location }]

[{*<div id="details">*}]
[{include file="page/details/inc/fullproductinfo.tpl"}]
[{*</div>*}]

[{include file="inc/details_locator.tpl" where="Bottom"}]
[{ insert name="oxid_tracker" title="PRODUCT_DETAILS"|oxmultilangassign product=$oDetailsProduct cpath=$oView->getCatTreePath() }]

[{ include file="layout/footer.tpl" popup=$sZoomPopup }]

[{oxscript widget=$oView->getClassName()}]