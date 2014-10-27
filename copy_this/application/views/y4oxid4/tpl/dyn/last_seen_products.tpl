[{*
#########################################################################
#	$Id: 5fea3b1186dfeebb6062cae91bb8e7d758a0efe2 $
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
[{assign var="aLastProducts" value=$oView->getLastProducts() }]
[{if $aLastProducts && $aLastProducts->count() > 0 }]
  <strong id="LastSeenHeader" class="head2">[{ oxmultilang ident="DETAILS_LASTSEENPRODUCTS"}]</strong>
  [{foreach from=$aLastProducts item=lastproduct}]
    [{include file="inc/product.tpl" size="small" product=$lastproduct altproduct=$_lastproducts_aid sListType='' testid="LastSeen_"|cat:$lastproduct->oxarticles__oxid->value}]
  [{/foreach}]
[{/if}]