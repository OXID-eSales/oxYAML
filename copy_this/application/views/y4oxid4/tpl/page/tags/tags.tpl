[{*
#########################################################################
#	$Id: 0053a5d9c2168ef740a0d83a0d08f9cd0fb2b0d5 $
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

[{assign var="template_title" value="TAGS"|oxmultilangassign }]
[{include file="layout/header.tpl" title=$template_title location=$template_title titlepagesuffix=$oView->getTitlePageSuffix()}]

[{oxid_include_widget nocookie=1 cl="oxwTagCloud" blShowBox="1" noscript=1 oxwtemplate="inc/tags.tpl"}]

[{insert name="oxid_tracker" title=$template_title }]
[{include file="layout/footer.tpl" }]