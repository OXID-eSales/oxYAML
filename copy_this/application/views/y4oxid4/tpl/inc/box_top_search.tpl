[{*
#########################################################################
#	$Id: 9de4a3afad1542d22e3d8b448c7944a9babff30c $
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

<form class="ym-searchform">
	[{*<input class="ym-searchfield" type="search" placeholder="Search..." />*}]
	[{ $oViewConf->getHiddenSid() }]
    <input type="hidden" name="cl" value="search">
    <input type="search" name="searchparam" [{*value="[{$oView->getSearchParamForHtml()}]"*}] id="f.search.param" class="ym-searchfield" onfocus="if(this.value=='[{ oxmultilang ident="SUCHEN" }]') this.value=''" value="[{ oxmultilang ident="SUCHEN" }]">
	<input id="searchGo" type="submit" class="ym-searchbutton" value="GO!">
	
	
</form>