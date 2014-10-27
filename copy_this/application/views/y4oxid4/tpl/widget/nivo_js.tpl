[{*
#########################################################################
#	$Id: 77c4a08ac2690dbf5f78e81986eb40ff085cac61 $
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
[{capture assign=nivoSlider}]
[{literal}]
$(document).ready(function()
{
    var IE = /*@cc_on!@*/false;
    /* init events in content */
    var thisParent = thisParent || $("content");
    if(IE == false);
    initEvents(thisParent);

});
/* Init basic events and effects */
function initEvents(thisParent)
{
  initNivoSlider();
}
function initNivoSlider(){
  $('#slider').nivoSlider({
[{/literal}]
          effect: '[{$oViewConf->getViewThemeParam('NivoSliderEffekt')}]',
          slices: [{$oViewConf->getViewThemeParam('NivoSliderSlices')}],
      	  boxCols: [{$oViewConf->getViewThemeParam('NivoSliderboxCols')}], // For box animations
          boxRows: [{$oViewConf->getViewThemeParam('NivoSliderboxRows')}], // For box animations          
          animSpeed: [{$oViewConf->getViewThemeParam('NivoSlideranimSpeed')}],
          pauseTime: [{$oViewConf->getViewThemeParam('NivoSliderpauseTime')}],
          startSlide: 0, //Set starting Slide (0 index)
          directionNav: [{$oViewConf->getViewThemeParam('NivoSliderdirectionNav')}], //Next & Prev
          directionNavHide: [{$oViewConf->getViewThemeParam('NivoSliderdirectionNavHide')}], //Only show on hover
          controlNav: [{$oViewConf->getViewThemeParam('NivoSlidercontrolNav')}], //1,2,3...
          controlNavThumbs: false, //Use thumbnails for Control Nav
          controlNavThumbsSearch: '.jpg', //Replace this with...
          controlNavThumbsReplace: '_thumb.jpg', //...this in thumb Image src
          keyboardNav: false, //Use left & right arrows
          pauseOnHover: false, //Stop animation while hovering
          manualAdvance: false, //Force manual transitions
          captionOpacity: 0.8, //Universal caption opacity
[{literal}]
          beforeChange: function(){},
          afterChange: function(){},
          slideshowEnd: function(){} //Triggers after all slides have been shown
      });
}  
[{/literal}]
[{/capture}]
[{oxscript add=$nivoSlider}]