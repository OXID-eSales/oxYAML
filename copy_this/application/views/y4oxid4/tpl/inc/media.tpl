[{*
#########################################################################
#	$Id: 5701a3e6bf21be2ed7e5e8d40e05c60c73d669f0 $
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
[{if $oView->getMediaFiles()}]
<strong class="boxhead">[{ oxmultilang ident="MEDIA"}]</strong>
<div class="box media">
    [{foreach from=$oView->getMediaFiles() item=oMediaUrl}]
    <p>[{$oMediaUrl->getHtml()}]</p>
    [{/foreach}]
</div>
[{/if}]