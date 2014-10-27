[{*
#########################################################################
#	$Id: 59629cb23141af0be87d48e476d69adcad4c5983 $
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

[{ assign var="blSep" value=""}]
[{foreach from=$oxcmp_lang item=lang}]
  [{ if $blSep == "y"}]|[{/if}]
    <a id="Lang_[{$lang->name}]" href="[{ $lang->link|oxaddparams:$oView->getDynUrlParams() }]" class="[{if $lang->selected}]lang_active[{else}]lang[{/if}]" hreflang="[{ $lang->abbr }]" title="[{ $lang->name }]">[{ $lang->name }]</a>
  [{ assign var="blSep" value="y"}]
[{/foreach}]
