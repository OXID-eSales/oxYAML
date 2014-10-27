[{*
#########################################################################
#	$Id: 90f5c8f5c50895da50fde08cd3e4b4e44bd96f3c $
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
[{capture assign=jqZoom}]
[{literal}]
$(document).ready(function(){
	$('.jqzoom').jqzoom({
[{/literal}]
		zoomType: 'standard',
		lens:true,
		preloadImages: false,
		alwaysOn:false,
		title:false,
		[{if $oViewConf->getViewThemeParam('YAML_Theme_2-3sp') == 'sp2'}]
		xOffset: 17,
		yOffset: 20,
		zoomWidth: 341,
		zoomHeight: 341,
		[{elseif $oViewConf->getViewThemeParam('YAML_Theme_2-3sp') == 'sp3'}]
		xOffset: 17,
		yOffset: 20,
		zoomWidth: 455,
		zoomHeight: 260,
		[{/if}]          
        showEffect : 'fadein',  
        hideEffect: 'fadeout'
[{literal}]  
		}); 
					});
[{/literal}]
[{/capture}]
[{oxscript add=$jqZoom}]