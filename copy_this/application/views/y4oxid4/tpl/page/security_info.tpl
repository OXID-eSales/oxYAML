[{*
#########################################################################
#	$Id: 46ec792fd8f09c70ddc0b7e980240fe7d4bff933 $
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

[{assign var="template_title" value="SECURITY_INFO_TITLE"|oxmultilangassign}]
[{include file="layout/header.tpl" title=$template_title location=$template_title}]

<h1>[{$template_title}]</h1>
<div class="box error">
  [{ oxcontent ident="oxsecurityinfo" }]
</div>

[{ insert name="oxid_tracker" title=$template_title }]
[{include file="layout/footer.tpl"}]
