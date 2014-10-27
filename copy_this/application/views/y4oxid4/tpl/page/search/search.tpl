[{*
#########################################################################
#	$Id: f5191214b0ad5b6700c752963e41bb0c996d8499 $
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

[{assign var="search_title" value="SEARCH_TITLE"|oxmultilangassign}]
[{assign var="searchparamforhtml" value=$oView->getSearchParamForHtml() }]
[{assign var="template_title" value="$search_title - $searchparamforhtml"}]

[{include file="layout/header.tpl" title=$template_title location="SEARCH_LOCATION"|oxmultilangassign }]

[{if $oView->getArticleList() }]
    [{assign var="search_head" value="SEARCH_HITSFOR"|oxmultilangassign}]
    [{assign var="search_head" value=$oView->getArticleCount()|cat:" "|cat:$search_head|cat:" &quot;"|cat:$oView->getSearchParamForHtml()|cat:"&quot;"}]
    [{assign var='rsslinks' value=$oView->getRssLinks() }]
    [{if $rsslinks.searchArticles}]
        [{assign var="search_head" value="`$search_head` <a class=\"rss\" id=\"rssSearchProducts\" href=\"`$rsslinks.searchArticles.link`\" title=\"`$rsslinks.searchArticles.title`\"></a>"}]
        [{oxscript add="oxid.blank('rssSearchProducts');"}]
[{/if}]

<h1>[{$template_title}]</h1>

  <!-- page locator -->
  [{if $oView->getArticleCount() }]
  <p>[{ oxmultilang ident="YOUR_SEARCH_SHOWED_UP" }] [{$search_head}]</p>
  [{include file="inc/list_locator.tpl" PageLoc="Top"}]
  [{else}]
    <div class="box error">[{ oxmultilang ident="SEARCH_NOITEMSFOUND" }]</div>
  [{/if}]

  
    
    

    <div class="ym-clearfix"></div>
	<div id="productlisting_search" class="ym-grid linearize-level-1">
    [{foreach from=$oView->getArticleList() name=search item=product}]
    [{cycle values='ym-gl,ym-gl,ym-gr' assign=n name=productlisting}]
    <div class="ym-g33 [{$n}] productBox">

            
      [{include file="inc/product.tpl" type="productlisting" product=$product size="thin" head=$search_head class=$search_class testid="Search_"|cat:$product->oxarticles__oxid->value test_Cntr=$smarty.foreach.search.iteration}]

      </div>
    [{if $n=='ym-gr'}]
    <div class="ym-clearfix"></div>
    [{/if}]
    [{/foreach}]
	</div>
  [{/if}]


  <!-- page locator -->
  [{if $oView->getArticleCount() }]
    [{include file="inc/list_locator.tpl" PageLoc="Bottom"}]
  [{/if}]

[{ insert name="oxid_tracker" title=$template_title }]
[{include file="layout/footer.tpl"}]
