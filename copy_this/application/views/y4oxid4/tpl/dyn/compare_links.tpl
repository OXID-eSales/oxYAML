[{*
#########################################################################
#	$Id: a60ba76e2c4ada2853faf68b10ca950fa1dc8e2b $
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
[{ if $_compare_in_list}]
  <a id="removeCmp[{$_compare_testid}]" class="[{$_compare_class}]" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl="|cat:$oViewConf->getActiveClassName() params="am=1&amp;removecompare=1&amp;fnc=tocomparelist&amp;aid=`$_compare_aid`&amp;anid=`$_compare_anid`&amp;pgNr=`$_compare_page`"|cat:$oViewConf->getNavUrlParams() }]" rel="nofollow">[{ oxmultilang ident=$_compare_text_from_id }]</a>
[{ else }]
  <a id="toCmp[{$_compare_testid}]" class="[{$_compare_class}]" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl="|cat:$oViewConf->getActiveClassName() params="am=1&amp;addcompare=1&amp;fnc=tocomparelist&aid=`$_compare_aid`&amp;anid=`$_compare_anid`&amp;pgNr=`$_compare_page`"|cat:$oViewConf->getNavUrlParams() }]" rel="nofollow">[{ oxmultilang ident=$_compare_text_to_id }]</a>
[{ /if }]