[{*
#########################################################################
#	$Id: 604632cd880b015521f3a6bb4de9590d315d79f0 $
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

[{if $oViewConf->getViewThemeParam('bl_perfShowLeftBasket')}]
        [{oxid_include_dynamic file="dyn/mini_basket.tpl" type="basket" extended=true testid="RightBasket"}]
[{/if}]

[{if $oxcmp_categories }]
<div class="box_categories">
<h6 class="ym-vlist">[{ oxmultilang ident="CATEGORIES" }]</h6>
  [{if $oViewConf->getViewThemeParam('blTopNaviLayout')}]
    [{include file="inc/category_tree.tpl" tree=$oxcmp_categories act=$oxcmp_categories->getClickCat() class="tree"}]
  [{else}]
    [{include file="inc/category_tree.tpl" tree=$oxcmp_categories act=$oxcmp_categories->getClickCat() class="tree"}]
  [{/if}]


	[{if $oViewConf->getViewThemeParam('bl_perfLoadVendorTree') && $oView->getVendorlist()}]
    	[{include file="inc/vendor_tree.tpl" tree=$oView->getVendorlist() class="tree"}]
	[{/if}]

	[{if $oViewConf->getViewThemeParam('bl_perfLoadManufacturerTree') && $oView->getManufacturerlist()}]
    	[{include file="inc/manufacturer_tree.tpl" tree=$oView->getManufacturerlist() class="tree"}]
	[{/if}]
</div>
[{/if}]



[{if $oViewConf->getViewThemeParam('YAML_Theme_2-3sp') == 'sp2'}]
[{oxid_include_widget cl="oxwServiceMenu" _parent=$oView->getClassName() blLoginError=$blLoginError nocookie=$blAnon _navurlparams=$oViewConf->getNavUrlParams() anid=$oViewConf->getActArticleId() oxwtemplate="widget/servicemenu.tpl"}]
[{/if}]



[{if count($oView->getBargainArticleList()) > 0 }]
   	[{ include file="widget/boxes/box_specials.tpl" }]  
[{/if}]
[{include file="widget/trustedshops/info_sp3.tpl" }]

[{if $oViewConf->getViewThemeParam('YAML_Theme_2-3sp') == 'sp2'}]
[{include file="widget/trustedshops/ratings.tpl" }]
[{/if}]

[{if $oView->getAlsoBoughtTheseProducts() }]
	[{ include file="widget/boxes/box_alsobought.tpl" }]
[{/if}]

[{*if $oView->getClassName()=='details'}]
	[{ include file="widget/boxes/box_tags.tpl" }]
[{/if*}]

[{if $oView->showNewsletter()}]
   	[{ include file="widget/boxes/box_newsletter.tpl" }]
[{/if}]



[{if $oxcmp_news && count($oxcmp_news) > 0}]
    [{include file="inc/cmp_news.tpl"}]
[{/if}]


