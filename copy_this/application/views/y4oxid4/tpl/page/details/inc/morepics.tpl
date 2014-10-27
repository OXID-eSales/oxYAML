[{*
#########################################################################
#	$Id: ca68657d24e80d7c185ad929aa13fc4160fe2f70 $
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
[{if $oView->morePics() }]
    <div id="morePicsContainer" class="morepics ">
        [{foreach from=$oView->getIcons() key=picnr item=ArtIcon name=MorePics}]
    		[{cycle values='pic1,pic2,pic3' assign=y name=morepictures}]
    			<div class="ym-g33 ym-gl [{$y}] textc">
    				<div class="ym-gbox">
      					<a href="javascript:void(0);" rel="{gallery: 'gal1', smallimage: '[{$product->getPictureUrl($picnr)}]',largeimage: '[{$product->getZoomPictureUrl($picnr)}]'}" >
      						<img src="[{$product->getIconUrl($picnr)}]" class="bordered flexible">
      					</a>
      				</div>
    			</div>
    [{if $y=='pic3'}]
    <div class="ym-clearfix"></div>
    [{/if}]
	[{/foreach}]
    </div>
    [{/if}]