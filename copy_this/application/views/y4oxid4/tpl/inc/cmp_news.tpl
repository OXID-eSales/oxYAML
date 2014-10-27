[{*
#########################################################################
#	$Id: 55cd6989f8bc7ff1dc9e6ce263ac5a58a89033cc $
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

<div class="box_header">
  <h6 class="ym-vlist">[{ oxmultilang ident="INC_LEFTITEM_NEWS" }]</h6>
  <ul class="ym-vlist">
    [{foreach from=$oxcmp_news item=oxcmp_news name=newsList}]
     <li>
        <a id="newsTitle_[{$smarty.foreach.newsList.iteration}]" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=news" }]#[{$oxcmp_news->oxnews__oxid->value}]">
          [{oxeval var=$oxcmp_news->oxnews__oxlongdesc assign='_sNewsItem' force=1}]
          [{ $_sNewsItem|strip_tags|oxtruncate:100 }]
        </a>
     </li>
    [{/foreach}]
  </ul>
</div>