[{*
#########################################################################
#	$Id: 8a16e55cc5121cfe3d82f8c89a192c80b0135be8 $
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
[{foreach from=$oView->getArticleList() name=recommlist item=product}]

  [{if $smarty.foreach.recommlist.first && $smarty.foreach.recommlist.last }]
    [{assign var="recommlist_class" value=""}]
  [{elseif $smarty.foreach.recommlist.first && !$smarty.foreach.recommlist.last }]
    [{assign var="recommlist_class" value="firstinlist"}]
  [{elseif $smarty.foreach.recommlist.last}]
    [{assign var="recommlist_class" value="lastinlist"}]
  [{else}]
    [{assign var="recommlist_class" value="inlist"}]
  [{/if}]

  [{include file="inc/product.tpl" product=$product size="thin" class=$recommlist_class removeFunction=$removeFunction recommid=$recommid testid=$smarty.foreach.recommlist.iteration }]

  [{if !$smarty.foreach.recommlist.last }]
    <div class="separator"></div>
  [{/if}]

[{/foreach}]
