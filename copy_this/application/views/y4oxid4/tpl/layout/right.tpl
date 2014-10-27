[{*
#########################################################################
#	$Id: 0a825d0600ccd2edb1a7ad8b286633a96eac9ea9 $
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
[{if $oViewConf->getViewThemeParam('bl_perfShowRightBasket')}]
        [{oxid_include_dynamic file="dyn/mini_basket.tpl" type="basket" extended=true testid="RightBasket"}]
    [{/if}]

	[{oxid_include_widget cl="oxwServiceMenu" _parent=$oView->getClassName() blLoginError=$blLoginError nocookie=$blAnon _navurlparams=$oViewConf->getNavUrlParams() anid=$oViewConf->getActArticleId() oxwtemplate="widget/servicemenu.tpl"}]
	
	
    [{if $oViewConf->getViewThemeParam('YAML_Theme_2-3sp') == 'sp3'}]
        [{include file="widget/trustedshops/ratings.tpl" }]
    [{/if}]

    [{if $oView->getTop5ArticleList() && $oViewConf->getViewThemeParam('YAML_Theme_2-3sp') == 'sp3'}]
		[{ include file="widget/boxes/box_bestseller.tpl" }]   
	[{/if }]


	[{ if $oView->getSimilarProducts() }]
		[{ include file="widget/boxes/box_similar.tpl" }]
    [{ /if }]

[{if $oView->isActive('FbFacepile') }]
	<strong id="test_facebookFacepileHead" strong class="h2">[{ oxmultilang ident="FACEBOOK_FACEPILE" }]</strong>
    <div class="box" id="productFbFacePile">
    	[{include file="inc/facebook/fb_enable.tpl" source="inc/facebook/fb_facepile.tpl" ident="#productFbFacePile"}]
    </div>	
[{/if}]

