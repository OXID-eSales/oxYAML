[{*
#########################################################################
#	$Id: 89104da0a47f5901ee2f83bead005f93bbb5a705 $
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
[{assign var="pageNavigation" value=$oView->getPageNavigation()}]
  <div class="locator">
    [{if $pageNavigation->NrOfPages > 1}]
      <div class="lochead ym-grid linearize-level-1">
      	<div class="ym-g50 ym-gl">
      	<small>
          <strong id="listXofY_[{$PageLoc}]">[{ oxmultilang ident="INC_LIST_LOCATOR_PAGE" }] [{ $pageNavigation->actPage  }] / [{ $pageNavigation->NrOfPages  }]</strong>
        </small>
        </div>
        <div class="ym-g50 ym-gr textr">
        	<small>
           [{ if $pageNavigation->previousPage }]
             <a id="PrevPage[{$PageLoc}]" href="[{$pageNavigation->previousPage}]"><span class="arrow">&laquo;</span></a>
           [{/if}]
              
           [{foreach key=iPage from=$pageNavigation->changePage item=page}]
             [{if $iPage > ($pageNavigation->actPage - 10) && $iPage < ($pageNavigation->actPage + 10)}]
               <a id="PageNr[{$PageLoc}]_[{$iPage}]" href="[{$page->url}]" [{if $iPage == $pageNavigation->actPage }]class="active"[{/if}]>[{$iPage}]</a>
             [{/if}]
           [{/foreach}]
              
           [{ if $pageNavigation->nextPage }]
             <a id="NextPage[{$PageLoc}]" href="[{$pageNavigation->nextPage}]"><span class="arrow">&raquo;</span></a>
           [{/if}]
         </small>
</div>
      </div>
    [{/if }]
      <div class="locbody  ym-grid linearize-level-1">
           <div class="ym-g50 ym-gl">
      	<small>
               [{ oxmultilang ident=$sLocatorCaption|default:"INC_LIST_LOCATOR_ARTICLESPERPAGE" }]
               [{foreach from=$oViewConf->getNrOfCatArticles() item=iArtPerPage}]
                 <a id="ArtPerPage[{$PageLoc}]_[{$iArtPerPage}]" href="[{ $oViewConf->getSelfLink() }]tpl=[{$oViewConf->getActTplName()}]&amp;_artperpage=[{$iArtPerPage}]&amp;[{$oView->getAdditionalParams()}]" class="[{if $oViewConf->getArtPerPageCount() == $iArtPerPage }]active[{/if}]" rel="nofollow">[{$iArtPerPage}]</a>
               [{/foreach}]
              </small>
           </div>
           <div class="ym-g50 ym-gr textr">
           <small>
               [{include file="inc/sort.snippet.tpl"}]
           </small>
           </div>
      </div>
  </div>