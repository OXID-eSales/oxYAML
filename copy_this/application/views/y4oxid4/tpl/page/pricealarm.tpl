[{*
#########################################################################
#	$Id: 8f0a4ca689c98c2b78bbc61ba169f82a67750dcf $
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

[{assign var="template_title" value="PRICEALARM_TITLE"|oxmultilangassign}]
[{include file="layout/header.tpl" title=$template_title location=$template_title}]
[{assign var="product" value=$oView->getProduct()}]
[{assign var="currency" value=$oView->getActCurrency() }]

<h1>[{$template_title}]</h1>
<div class="box info">
    [{if $oView->getPriceAlarmStatus() == 1}]
      [{ oxmultilang ident="PRICEALARM_THANKYOUMESSAGE1" }] [{ $oxcmp_shop->oxshops__oxname->value }] [{ oxmultilang ident="PRICEALARM_THANKYOUMESSAGE2" }]<br><br>
      [{ oxmultilang ident="PRICEALARM_THANKYOUMESSAGE3" }] [{ $product->oxarticles__oxtitle->value }][{if $product->oxarticles__oxvarselect->value}] [{ $product->oxarticles__oxvarselect->value }][{/if}] [{ oxmultilang ident="PRICEALARM_THANKYOUMESSAGE4" }] [{ $oView->getBidPrice()}] [{ $currency->sign}] [{ oxmultilang ident="PRICEALARM_THANKYOUMESSAGE5" }]<br><br>
    [{elseif $oView->getPriceAlarmStatus() == 2}]
      [{ oxmultilang ident="PRICEALARM_WRONGVERIFICATIONCODE" }]<br><br>
    [{else}]
      [{ oxmultilang ident="PRICEALARM_NOTABLETOSENDEMAIL" }] <br>
      [{ oxmultilang ident="PRICEALARM_VERIFYYOUREMAIL" }]<br><br>
    [{/if}]
    <a href="[{ $product->getLink()|oxaddparams:$oViewConf->getNavUrlParams() }]"><b>[{ oxmultilang ident="PRICEALARM_BACKTOPRODUCT" }]</b></a>
</div>

[{ insert name="oxid_tracker" title=$template_title }]
[{include file="layout/footer.tpl"}]
