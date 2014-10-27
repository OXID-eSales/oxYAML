[{*
#########################################################################
#	$Id: 5f09cc7fd99f882989554aad115878edbb9ba238 $
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

[{assign var="oContent" value=$oView->getContent()}]
[{assign var="template_title" value=$oView->getTitle()}]
[{include file="layout/header_plain.tpl" title=$template_title location=$template_title}]

    <h1 class="boxhead">[{$template_title}]</h1>
    <div class="box">[{$oView->getParsedContent()}]</div>

[{insert name="oxid_tracker" title=$template_title }]
[{include file="layout/footer_plain.tpl"}]