[{*
#########################################################################
#	$Id: 72d3dde3660e4684bb3b6226d6f125972a4b83bd $
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
[{if $oView->showZoomPics()}]
    [{assign var="aZoomPics" value=$oView->getZoomPics()}]
    [{assign var="iZoomPic" value=$oView->getActZoomPic()}]
    <div id="zoomModal" class="popupBox corners FXgradGreyLight glowShadow">
        <img src="[{$oViewConf->getImageUrl('close.png')}]" alt="" class="closePop">
        <div class="zoomHead">
            [{oxmultilang ident="PRODUCT_IMAGES"}]
            <a href="#zoom"><span></span></a>
        </div>
        <div class="zoomed">
            <img src="[{$aZoomPics[$iZoomPic].file}]" alt="[{$oPictureProduct->oxarticles__oxtitle->value|strip_tags}] [{$oPictureProduct->oxarticles__oxvarselect->value|default:''}]" id="zoomImg">
        </div>
        [{if $aZoomPics|@count > 1}]
        <div class="otherPictures" id="moreZoomPicsContainer">
            <div class="shadowLine"></div>
            <ul class="zoomPager clear">
            [{foreach from=$aZoomPics key=iPicNr item=_zoomPic}]
                [{assign var="_sZoomPic" value=$aZoomPics[$iPicNr].file}]
                <li>
                    <a class="ox-zoompic ox-picnr-[{$iPicNr}] [{if $iPicNr == $iZoomPic}]selected[{/if}]" href="[{$_sZoomPic}]">
                        <span class="marker"><img src="[{$oViewConf->getImageUrl('marker.png')}]" alt=""></span>
                        [{$_zoomPic.id}]
                    </a>
                </li>
            [{/foreach}]
            </ul>
        </div>
        [{/if}]
    </div>
    [{oxscript include="javascript/widgets/oxzoompictures.js" priority=10}]
    [{oxscript add="$('#moreZoomPicsContainer').oxZoomPictures();"}]
[{/if}]