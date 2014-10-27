[{*
#########################################################################
#	$Id: e4d437f971fe3853b210c7e47d8c841874a406e2 $
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
<div class="tags">
        [{if $oView->getEditTags()}]
            <p>[{ oxmultilang ident="TAGS_HIGHLIHGT_INSTRUCTIONS" }]</p>
        [{/if}]

        <p class="tags" id="tagsCloud">
          [{assign var="oCloudManager" value=$oView->getTagCloudManager() }]
          [{foreach from=$oCloudManager->getCloudArray() item=iCount key=sTagTitle}]
            <a class="tagitem_[{$oCloudManager->getTagSize($sTagTitle)}]" href="[{$oCloudManager->getTagLink($sTagTitle)}]">[{$oCloudManager->getTagTitle($sTagTitle)}]</a>
          [{/foreach}]
        </p>

        [{if !$product && $oView->isMoreTagsVisible()}]
            <a href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=tags" }]">[{ oxmultilang ident="TAGS_MORE" }]...</a>
        [{/if}]

        [{ if $product && $oxcmp_user}]
        <form name="basket" action="[{$product->getLink()}]#tags" method="post">
            <div>
            [{ $oViewConf->getHiddenSid() }]
            [{ $oViewConf->getNavFormParams() }]
            <input type="hidden" name="cl" value="[{ $oViewConf->getActiveClassName() }]">
            <input type="hidden" name="aid" value="[{ $product->oxarticles__oxid->value }]">
            <input type="hidden" name="anid" value="[{ $product->oxarticles__oxnid->value }]">
            [{if $oView->getEditTags()}]
                <input type="hidden" id="tagsInput" name="highTags">
                <input type="hidden" name="fnc" value="addTags">
                <label>[{ oxmultilang ident="TAGS_ADD" }]:</label><input type=text name=newTags>
                <input id="saveTag" type="submit" class="ym-button ym-add" value="[{ oxmultilang ident="TAGS_SUBMIT" }]">
                [{oxscript add="oxid.tags.addSelect('tagsCloud','tagsInput');" }]
            [{else}]
                <input type="hidden" name="fnc" value="editTags">
                <input id="editTag" type="submit" class="ym-button ym-add" value="[{ oxmultilang ident="TAGS_EDIT" }]">
            [{/if}]
            </div>
        </form>
        [{/if}]
    </div>