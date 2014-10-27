[{*
#########################################################################
#	$Id: d7a6d829cf0ced050e3ebfbce2ed9252a0403c56 $
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

[{include file="layout/header_plain.tpl"}]
    <div class="errorBox" style="width: auto;">
          [{if count($Errors)>0 && count($Errors.default) > 0}]
              [{foreach from=$Errors.default item=oEr key=key }]
                  <div class="errhead">[{ $oEr->getOxMessage()}]<div>
                  <div class="errbody">[{ $oEr->getStackTrace()|nl2br }];</div>
              [{/foreach}]
          [{/if}]
    </div>
[{include file="layout/footer_plain.tpl"}]