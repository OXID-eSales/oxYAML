[{*
#########################################################################
#	$Id: 53c342b3880442eed6a57bd01b6e189606402cd2 $
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
  <div class="locator compare">
    [{if $pageNavigation->NrOfPages > 1}]
      <div class="lochead">
          <strong class="h4" id="ComparePageXofY">[{ oxmultilang ident="INC_COMPARE_LOCATOR_PAGE" }] [{ $pageNavigation->actPage  }] / [{ $pageNavigation->NrOfPages  }]</strong>
          <div class="right">
           [{ if $pageNavigation->previousPage }]
             <a id="link_prevPage[{$where}]" href="[{$pageNavigation->previousPage}]"><span class="arrow">&laquo;</span></a>
           [{/if}]
              |
           [{foreach key=iPage from=$pageNavigation->changePage item=page}]
             [{if $iPage > ($pageNavigation->actPage - 10) && $iPage < ($pageNavigation->actPage + 10)}]
               <a id="PageNr[{$PageLoc}]_[{$iPage}]" href="[{$page->url}]" [{if $iPage == $pageNavigation->actPage }]class="active"[{/if}]>[{$iPage}]</a>
             [{/if}]
           [{/foreach}]
              |
           [{ if $pageNavigation->nextPage }]
             <a id="link_nextPage[{$where}]" href="[{$pageNavigation->nextPage}]"><span class="arrow">&raquo;</span></a>
           [{/if}]
          </div>
      </div>
    [{/if }]

      <div class="locbody">
          <div class="left">
               <form action="[{ $oViewConf->getSelfActionLink() }]" method="post">
                  <div>
                    <span class="btn"><input type="button" value="[{ oxmultilang ident="INC_COMPARE_LOCATOR_DISPLAYPOPUP" }]" class="btn" onclick="oxid.popup.compare('[{ $oViewConf->getSelfLink() }]cl=[{ $oViewConf->getActiveClassName() }]&amp;fnc=inPopup');"></span>
                  </div>
               </form>
          </div>
      </div>

  </div>
