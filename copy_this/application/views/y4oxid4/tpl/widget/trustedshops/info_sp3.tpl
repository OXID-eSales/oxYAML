[{*
#########################################################################
#	$Id: 09b24ddef66eb393803fda3d0f3b229f5e6e857a $
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

[{*oxscript add="$('a.js-external').attr('target', '_blank');"*}]
<!-- Trusted Shops Siegel -->
[{if $oView->getTrustedShopId() }]
    [{assign var="tsId" value=$oView->getTrustedShopId() }]
[{/if}]

[{if $oView->getTSExcellenceId() }]
    [{assign var="tsId" value=$oView->getTSExcellenceId() }]
[{/if}]

[{if $tsId && $oViewConf->getViewThemeParam('YAML_Theme_2-3sp') == 'sp3'}]
<div class="box_partners">
	<h6 class="ym-vlist">Partner & Siegel</h6>
    <div class="body">
    	<div id="tsSeal" class="seal_side">
        	<a id="tsCertificate" class="js-external" href="https://www.trustedshops.com/shop/certificate.php?shop_id=[{$tsId}]">
            	<img class="flexible" src="[{$oViewConf->getImageUrl('trustedshops_m.png')}]" title="[{ oxmultilang ident="WIDGET_TRUSTEDSHOPS_ITEM_IMGTITLE" }]">
            </a>
    	</div>
    	<div id="PPSeal" class="seal_side">
    	<!-- Paypal logo includer start -->
        [{include file="inc/paypal_item.tpl"}]
        <!-- Paypal logo includer end -->
    	</div>
    </div>
</div> 
[{/if}]

<!-- / Trusted Shops Siegel -->
