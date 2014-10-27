[{*
#########################################################################
#	$Id: 8d982261103e6a797ce5f4fdb53495e8848fb81a $
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

[{if $tsId && $oViewConf->getViewThemeParam('YAML_Theme_2-3sp') == 'sp2'}]
    <div id="tsSeal" class="seal_head">
        <a id="tsCertificate" class="js-external" href="https://www.trustedshops.com/shop/certificate.php?shop_id=[{$tsId}]">
            <img class="flexible" src="[{$oViewConf->getImageUrl('trustedshops_m.png')}]" title="[{ oxmultilang ident="WIDGET_TRUSTEDSHOPS_ITEM_IMGTITLE" }]">
        </a>
    </div> 
[{/if}]
<!-- / Trusted Shops Siegel -->
