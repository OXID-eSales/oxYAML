[{*
#########################################################################
#	$Id: 73db2ea5f4a62b2dfcfd21965b765a9d944bc0c9 $
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
[{if $oView->isSortingActive() && $oView->getArticleCount()}]
  <!--Native Language-->
  [{assign var="columnnames_oxtitle" value="INC_SORT_TITLE"|oxmultilangassign }]
  [{assign var="columnnames_oxprice" value="INC_SORT_PRICE"|oxmultilangassign }]
  
  [{assign var="columnnames_oxartnum" value="INC_SORT_ARTNUM"|oxmultilangassign }]
  [{assign var="columnnames_oxrating" value="INC_SORT_RATING"|oxmultilangassign }]
  [{assign var="columnnames_oxstock" value="INC_SORT_STOCK"|oxmultilangassign }]
  
  [{assign_adv var="columnnames" value="array
  (
    'oxtitle' => '$columnnames_oxtitle',
    'oxprice' => '$columnnames_oxprice',
    'oxvarminprice' => '$columnnames_oxprice',
    'oxartnum' => '$columnnames_oxartnum',
    'oxrating' => '$columnnames_oxrating',
    'oxstock' => '$columnnames_oxstock'
  )"}]

  <span class="sort_row">
      [{ oxmultilang ident="INC_SORT_SORTBY" }]
      [{foreach from=$oView->getSortColumns() item=sortcolumn}]

        [{assign var="neworder" value="asc"}]
        [{if $oView->getListOrderBy() == $sortcolumn}]
          [{if $oView->getListOrderDirection() == "asc"}]
            [{assign var="sort_order" value="asc active" }]
            [{assign var="neworder" value="desc"}]
          [{else}]
            [{assign var="sort_order" value="desc active" }]
            [{assign var="neworder" value="asc"}]
          [{/if}]
        [{else}]
            [{assign var="sort_order" value="none" }]
        [{/if}]

        &nbsp;
        <a id="sort[{$PageLoc}]_[{$sortcolumn}]_[{$neworder}]" href="[{ $oViewConf->getSelfLink() }]listorderby=[{$sortcolumn}]&amp;listorder=[{$neworder}]&amp;[{$oView->getAdditionalParams()}]" class="[{$sort_order}]" rel="nofollow">[{if $columnnames.$sortcolumn}][{$columnnames.$sortcolumn}][{else}][{$sortcolumn}][{/if}]</a>
      [{/foreach}]
  </span>
[{/if}]