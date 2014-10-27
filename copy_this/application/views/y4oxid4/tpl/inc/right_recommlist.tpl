[{*
#########################################################################
#	$Id: 5815ae2d2175834008046e93702e885a7fcc6b35 $
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
[{foreach from=$list item=listitem name="testRecommlist"}]
  [{assign var="product" value=$listitem->getFirstArticle()}]
  <div class="listitem">
      [{ assign var="sBargainArtTitle" value="`$product->oxarticles__oxtitle->value` `$product->oxarticles__oxvarselect->value`" }]
      <a id="RightSideRecommlistPic_[{$smarty.foreach.testRecommlist.iteration}]" href="[{$product->getMainLink()}]" class="picture">
          <img src="[{$product->getIconUrl()}]" alt="[{ $sBargainArtTitle|strip_tags }]">
      </a>
      
      <a id="RightSideRecommlistTitle_[{$smarty.foreach.testRecommlist.iteration}]" href="[{ $listitem->getLink() }]"><b>[{ $listitem->oxrecommlists__oxtitle->value|strip_tags }]</b></a><br>
      <div id="RightSideRecommlistNo_[{$smarty.foreach.testRecommlist.iteration}]">[{ oxmultilang ident="INC_RIGHT_RECOMMLIST_LISTBY" }]: [{ $listitem->oxrecommlists__oxauthor->value|strip_tags }]</div>
   </div>
  [{/foreach}]