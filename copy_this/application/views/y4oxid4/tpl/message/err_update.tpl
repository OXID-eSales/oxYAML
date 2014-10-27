[{*
#########################################################################
#	$Id: 8d53f00cf8bfb384d6014a130a579248da5dc035 $
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

[{assign var="template_title" value="ERR_SETUP_TITLE"|oxmultilangassign}]
[{include file="layout/header_plain.tpl" title=$template_title location=$template_title}]

  <div class="errorbox">
      <div class="errhead">[{ oxmultilang ident="ERR_UPDATE_OXIDESHOPERROR" }]</div>
      <div class="errbody">[{ oxmultilang ident="ERR_UPDATE_DELETEDIRECTORY1" }] [{ $oViewConf->getBaseDir() }][{ oxmultilang ident="ERR_UPDATE_DELETEDIRECTORY2" }]</div>
  </div>

[{include file="layout/footer_plain.tpl"}]
