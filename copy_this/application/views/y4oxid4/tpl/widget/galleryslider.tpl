[{*
#########################################################################
#	$Id: 4acd157e4b8721a6fe34efbbb7ee5c6b2ee2c1cf $
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

[{assign var=oBanners value=$oView->getBanners() }]
[{assign var="currency" value=$oView->getActCurrency()}]
[{if $oBanners}]
[{if $oViewConf->getViewThemeParam('NivoSliderTheme') == 'default'}]
<div class="slider-wrapper theme-default">
[{elseif $oViewConf->getViewThemeParam('NivoSliderTheme') =='bar'}]
<div class="slider-wrapper theme-bar">
[{elseif $oViewConf->getViewThemeParam('NivoSliderTheme') == 'dark'}]
<div class="slider-wrapper theme-dark">
[{elseif $oViewConf->getViewThemeParam('NivoSliderTheme') == 'light'}]
<div class="slider-wrapper theme-light">
[{/if}]
  <div id="slider">
        [{foreach from=$oBanners item=oBanner }]
        [{assign var=oArticle value=$oBanner->getBannerArticle() }]
             [{assign var=sBannerLink value=$oBanner->getBannerLink() }]
            [{if $sBannerLink }]
            <a href="[{ $sBannerLink }]">
            [{/if}]
            [{assign var=sBannerPictureUrl value=$oBanner->getBannerPictureUrl() }]
            [{if $sBannerPictureUrl }]
            <img src="[{ $sBannerPictureUrl }]" class="flexible" alt="[{ $oArticle->oxarticles__oxtitle->value }]">
            [{/if }]
            [{if $sBannerLink }]
            </a>
            [{/if}]
        [{/foreach }]
  </div>
</div>
[{/if }] 