[{*
#########################################################################
#	$Id: fc5a63959d16e5c28af69ba0749640b850cc186a $
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

[{assign var="product" value=$oView->getProduct() }]
[{assign var="template_title" value=$product->oxarticles__oxtitle->value|cat:" "|cat:$product->oxarticles__oxvarselect->value}]
[{include file="layout/header.tpl" title=$template_title location=$template_title}]

[{oxid_include_dynamic file="dyn/add_recomm.tpl" testid=""}]

[{ insert name="oxid_tracker" title=$template_title }]
[{include file="layout/footer.tpl"}]
