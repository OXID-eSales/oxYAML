[{*
#########################################################################
#	$Id: 9979ce1e9630ed21bccea3ec072dae34b9605560 $
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

[{include file="layout/header.tpl" tree_path=$oView->getTreePath() titlepagesuffix=$oView->getTitlePageSuffix()}]

    <div class="boxhead">
        <h1 id="catTitle">[{$oView->getTitle()}] <small>[{if $oView->getArticleCount() && $oView->showCategoryArticlesCount()}]&nbsp;([{ $oView->getArticleCount() }])[{/if}]</small></h1>
        
        [{assign var="actCategory" value=$oView->getActiveCategory()}]
        [{if $actCategory && $actCategory->oxcategories__oxdesc->value }]<small id="catDesc">[{$actCategory->oxcategories__oxdesc->value}]</small>[{/if}]
        [{assign var='rsslinks' value=$oView->getRssLinks() }]
        [{if $rsslinks.activeCategory}]
            <a class="rss" id="rssActiveCategory" href="[{$rsslinks.activeCategory.link}]" title="[{$rsslinks.activeCategory.title}]"></a>
            [{oxscript add="oxid.blank('rssActiveCategory');"}]
        [{/if}]
    </div>

    [{capture name=list_details}]

        [{if $actCategory->oxcategories__oxthumb->value }]
            [{assign var="thumbUrl" value=$actCategory->getThumbUrl()}]
            [{if $thumbUrl }]
              <img src="[{ $thumbUrl }]" class="flexible" role="presentation" alt="[{ $actCategory->oxcategories__oxtitle->value }]"><br>
            [{/if}]
        [{/if}]

        [{assign var="oCategoryAttributes" value=$oView->getAttributes()}]
        [{if $oCategoryAttributes }]
            <form method="post" action="[{ $oViewConf->getSelfActionLink() }]" name="_filterlist" id="filterList" class="ym-form linearize-form ym-columnar" role="application">
            
                [{ $oViewConf->getHiddenSid() }]
                [{ $oViewConf->getNavFormParams() }]
                <input type="hidden" name="cl" value="[{ $oViewConf->getActiveClassName() }]">
                <input type="hidden" name="tpl" value="[{$oViewConf->getActTplName()}]">
                <input type="hidden" name="fnc" value="executefilter">
                <h6 class="ym-fbox-heading">[{ oxmultilang ident="CATEGORIESFILTER" }]</h6>
				[{foreach from=$oCategoryAttributes item=oFilterAttr key=sAttrID name=testAttr}]
				<div class="ym-fbox-select">
					<label id="attrfilterTitle_[{$sAttrID}]_[{$smarty.foreach.testAttr.iteration}]">[{ $oFilterAttr->getTitle() }]:</label>
						<select name="attrfilter[[{ $sAttrID }]]" onchange="oxid.form.send('filterList');">
                        	<option value="" selected>[{ oxmultilang ident="LIST_PLEASECHOOSE" }]</option>
                               [{foreach from=$oFilterAttr->getValues() item=sValue}]
                               <option value="[{ $sValue }]" [{ if $oFilterAttr->getActiveValue() == $sValue }]selected[{/if}]>[{ $sValue }]</option>
                               [{/foreach}]
                       	</select>
				</div>
				[{/foreach}]
               <noscript>
               		<div class="ym-fbox-button">
                    	<input type="submit" value="[{ oxmultilang ident="LIST_APPLYFILTER" }]">
               		</div>
               </noscript>
            </form>
        [{/if}]

        [{if $oView->hasVisibleSubCats()}]
            <p>[{ oxmultilang ident="LIST_SELECTOTHERCATS1" }]<b>[{$actCategory->oxcategories__oxtitle->value}]</b> [{ oxmultilang ident="LIST_SELECTOTHERCATS2" }]</p>
            <hr>
            
            [{foreach from=$oView->getSubCatList() item=category name=MoreSubCat}]
                [{if $category->getContentCats() }]
                    [{foreach from=$category->getContentCats() item=ocont name=MoreCms}]
                    <li><a id="MoreSubCms_[{$smarty.foreach.MoreSubCat.iteration}]_[{$smarty.foreach.MoreCms.iteration}]" href="[{$ocont->getLink()}]">[{ $ocont->oxcontents__oxtitle->value }]</a></li>
                    [{/foreach}]
                [{/if}]
                [{if $category->getIsVisible()}]
                    [{assign var="iconUrl" value=$category->getIconUrl()}]
                    [{if $iconUrl}]
                        <a id="MoreSubCatIco_[{$smarty.foreach.MoreSubCat.iteration}]" href="[{ $category->getLink() }]">
                            <img class="flexible bordered" src="[{$category->getIconUrl() }]" alt="[{ $category->oxcategories__oxtitle->value }]">
                        </a>
                    [{else}]
                        <li><a id="MoreSubCat_[{$smarty.foreach.MoreSubCat.iteration}]" href="[{ $category->getLink() }]">[{ $category->oxcategories__oxtitle->value }][{if $oView->showCategoryArticlesCount() && $category->getNrOfArticles() > 0 }] ([{ $category->getNrOfArticles() }])[{/if}]</a></li>
                    [{/if}]
                [{/if}]
            [{/foreach}]
            
        [{/if}]

        [{if $actCategory->oxcategories__oxlongdesc->value}]
            <hr>
            <span id="catLongDesc">[{oxeval var=$actCategory->oxcategories__oxlongdesc}]</span>
        [{/if}]
    [{/capture}]

    <div class="ym-grid linearize-level-1 [{if $smarty.capture.list_details|trim ==''}]empty[{/if}]">
    [{$smarty.capture.list_details}]
    </div>

    [{if $oView->getArticleCount() }]
        [{include file="inc/list_locator.tpl" PageLoc="Top"}]
    [{/if}]
	<div class="ym-clearfix"></div>
	<div id="productlisting" class="ym-grid linearize-level-1">
	[{foreach from=$oView->getArticleList() item=actionproduct name=test_articleList}]
    [{cycle values='ym-gl,ym-gl,ym-gr' assign=n name=productlisting}]
    <div class="ym-g33 [{$n}] productBox">
        [{include file="inc/product.tpl" type="productlisting" product=$actionproduct testid="action_"|cat:$actionproduct->oxarticles__oxid->value test_Cntr=$smarty.foreach.test_articleList.iteration}]
    </div>
    [{if $n=='ym-gr'}]
    <div class="ym-clearfix"></div>
    [{/if}]
    [{/foreach}]
	</div>

    [{if $oView->getArticleCount() }]
        [{include file="inc/list_locator.tpl" PageLoc="Bottom"}]
    [{/if}]

[{insert name="oxid_tracker" title="LIST_CATEGORY"|oxmultilangassign product=""}]
[{include file="layout/footer.tpl" }]
