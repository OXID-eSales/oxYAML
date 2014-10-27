[{*
#########################################################################
#	$Id: 1c9257fb3a8333f036f78bc2d4223d7459f0b198 $
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

[{assign var="template_title" value="ERR_404TITLE"|oxmultilangassign}]
[{include file="layout/header.tpl" title=$template_title location=""}]
    <h1 id="errorHeader" class="boxhead">[{$template_title}]</h1>
    <div id="errorBody" class="box">
        [{if $sUrl}]
            [{ oxmultilang ident="ERR_404_PREURL" }] <i><strong>'[{$sUrl|escape}]'</strong></i> [{ oxmultilang ident="ERR_404_POSTURL" }]
        [{else}]
            [{ oxmultilang ident="ERR_404" }]
        [{/if}]
    </div>
[{include file="layout/footer.tpl"}]
