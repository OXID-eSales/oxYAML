[{*
#########################################################################
#	$Id: 4dd9f6bbd2cd60d2685c2e1921283e671993ca9a $
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

[{assign var="template_title" value="IMPRESUSUM_TITLE"|oxmultilangassign}]
[{include file="layout/header.tpl" title=$template_title location=$template_title}]

<h1 id="impressumHeader" class="boxhead">[{ oxmultilang ident="IMPRESUSUM_IMPRESUSUM" }]</h1>
<div class="ym-form"><p>[{ oxcontent ident="oximpressum" }]</p></div>

[{ insert name="oxid_tracker" title=$template_title }]
[{include file="layout/footer.tpl"}]
