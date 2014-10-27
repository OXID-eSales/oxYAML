[{*
#########################################################################
#	$Id: c5ff0ea2a830e5af9293b3e73672e626195f78ac $
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
<div class="box_header_nb">
<h6 class="ym-vlist">[{ oxmultilang ident="INC_LEFTITEM_INFORMATION" }]</h6>
[{strip}]
<ul class="ym-vlist">
    [{oxifcontent ident="oxsecurityinfo" object="oCont"}]
    <li><a id="infoProtection" href="[{ $oCont->getLink() }]" rel="nofollow">[{ $oCont->oxcontents__oxtitle->value }]</a></li>
    [{/oxifcontent}]
    [{oxifcontent ident="oxdeliveryinfo" object="oCont"}]
    <li><a id="infoShipping" href="[{ $oCont->getLink() }]" rel="nofollow">[{ $oCont->oxcontents__oxtitle->value }]</a></li>
    [{/oxifcontent}]
    [{oxifcontent ident="oxrightofwithdrawal" object="oCont"}]
    <li><a id="infoRights" href="[{ $oCont->getLink() }]" rel="nofollow">[{ $oCont->oxcontents__oxtitle->value }]</a></li>
    [{/oxifcontent}]
    [{oxifcontent ident="oxorderinfo" object="oCont"}]
    <li><a id="infoHowToOrder" href="[{ $oCont->getLink() }]" rel="nofollow">[{ $oCont->oxcontents__oxtitle->value }]</a></li>
    [{/oxifcontent}]
    [{oxifcontent ident="oxcredits" object="oCont"}]
    <li><a id="infoCredits" href="[{ $oCont->getLink() }]" rel="nofollow">[{ $oCont->oxcontents__oxtitle->value }]</a></li>
    [{/oxifcontent}]
    <li><a id="infoNewsletter" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=newsletter" }]" rel="nofollow">[{ oxmultilang ident="INC_INFOBOX_NEWSLETTER" }]</a></li>
</ul>
[{/strip}]
</div>