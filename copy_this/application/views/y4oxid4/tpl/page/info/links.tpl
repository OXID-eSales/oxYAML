[{*
#########################################################################
#	$Id: cff550508cdb71c261ae9915edc1f326220450a8 $
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

[{assign var="template_title" value="LINKS_TITLE"|oxmultilangassign}]
[{include file="layout/header.tpl" title=$template_title location=$template_title}]

<h1 id="linksHeader" class="boxhead">[{ oxmultilang ident="LINKS_LINKS" }]</h1>
<div class="ym-grid">
  [{assign var="isFirst" value=true}]
    <dl class="links">
  [{foreach from=$oView->getLinksList() item=link name=linksList}]
        <dt>[{ $link->oxlinks__oxinsert->value|date_format:"%d.%m.%Y" }] - <a href="[{ $link->oxlinks__oxurl->value }]" class="links_link">[{ $link->oxlinks__oxurl->value }]</a></dt>
        <dd [{if $smarty.foreach.linksList.last}]class="last"[{/if}]>[{ $link->oxlinks__oxurldesc->value }]</dd>
        <div class="dotted"></div>
  [{ /foreach }]
    </dl>
</div>

[{ insert name="oxid_tracker" title=$template_title }]
[{include file="layout/footer.tpl"}]
