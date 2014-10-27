[{*
#########################################################################
#	$Id: be00b8f6d40b1a91f426902647cedaf7fc5f7a71 $
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

[{assign var="template_title" value="NEWS_TITLE"|oxmultilangassign}]
[{include file="layout/header.tpl" title=$template_title location=$template_title}]

<h1 class="boxhead">[{ oxmultilang ident="NEWS_LATESTNEWSBY" }] [{ $oxcmp_shop->oxshops__oxname->value }]</h1>
<div class="ym-form">
    <dl class="news">
    [{foreach from=$oView->getNews() item=oNews}]
        [{if !empty($oNews) && is_object($oNews)}]
            <dt>
                <a name="[{ $oNews->oxnews__oxid->value}]">[{ $oNews->oxnews__oxdate->value|date_format:"%d.%m.%Y" }] - [{ $oNews->oxnews__oxshortdesc->value}]</a>
            </dt>
            <dd>            
                [{$oNews->getLongDesc() force=1}]
            </dd>
        [{else}]

        [{/if}]
    [{/foreach}]
    </dl>
</div>
[{include file="inc/list_locator.tpl" PageLoc="Bottom"}]

[{ insert name="oxid_tracker" title=$template_title }]
[{include file="layout/footer.tpl"}]
