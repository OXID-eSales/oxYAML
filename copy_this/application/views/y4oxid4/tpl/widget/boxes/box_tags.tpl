[{*
#########################################################################
#	$Id: 00827e41503a4f07db41975d0933e3028a5a0c39 $
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
[{if $oView->showTags() && ( $oView->getTagCloudManager() || ( ( $oView->getTagCloudManager() || $oxcmp_user) && $product ) ) }]
<div class="box_listings">
	<h6 class="ym-vlist">[{ oxmultilang ident="TAGS"}]</h6>
    <div class="body tags">
        <p class="tags" id="tagsCloud">
          [{assign var="oCloudManager" value=$oView->getTagCloudManager() }]
          [{foreach from=$oCloudManager->getCloudArray() item=iCount key=sTagTitle}]
            <a class="tagitem_[{$oCloudManager->getTagSize($sTagTitle)}]" href="[{$oCloudManager->getTagLink($sTagTitle)}]">[{$oCloudManager->getTagTitle($sTagTitle)}]</a>
          [{/foreach}]
        </p>

        [{if !$product && $oView->isMoreTagsVisible()}]
            <a href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=tags" }]">[{ oxmultilang ident="TAGS_MORE" }]...</a>
        [{/if}]
    </div>
</div>
[{/if}]