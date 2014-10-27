[{*
#########################################################################
#	$Id: 48ebf26278673372f984f92641586586474433c8 $
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

[{ assign var="shop"      value=$oEmailView->getShop() }]
[{ assign var="oViewConf" value=$oEmailView->getViewConfig() }]
[{ assign var="user"      value=$oEmailView->getUser() }]


[{ oxmultilang ident="EMAIL_WISHLIST_HTML_MYWISHLISTBY" }] [{ $shop->oxshops__oxname->getRawValue() }]

[{$userinfo->send_message}]

[{ oxmultilang ident="EMAIL_WISHLIST_HTML_TOMYWISHLISTCLICKHERE1" }] [{ oxmultilang ident="EMAIL_WISHLIST_HTML_TOMYWISHLISTCLICKHERE2" }]

[{ $oViewConf->getBaseDir() }]index.php?cl=wishlist&wishid=[{$userinfo->send_id}]

[{ oxmultilang ident="EMAIL_WISHLIST_HTML_WITHLOVE" }]

[{$userinfo->send_name}]

[{ oxcontent ident="oxemailfooterplain" }]