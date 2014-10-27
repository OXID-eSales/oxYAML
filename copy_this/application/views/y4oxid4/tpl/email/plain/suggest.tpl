[{*
#########################################################################
#	$Id: ee8d7f3e21b0be839f26b0d6cdfcad51a0987cf3 $
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

[{ assign var="shop"     value=$oEmailView->getShop() }]
[{ assign var="oViewConf" value=$oEmailView->getViewConfig() }]
[{ assign var="user"     value=$oEmailView->getUser() }]

[{ oxmultilang ident="EMAIL_SUGGEST_HTML_PRODUCTPOSTCARDFROM" }] [{ $shop->oxshops__oxname->getRawValue() }]

[{ oxmultilang ident="EMAIL_SUGGEST_HTML_FROM" }] [{$userinfo->send_name}]
[{ oxmultilang ident="EMAIL_SUGGEST_HTML_EMAIL" }] [{$userinfo->send_email}]

[{ oxmultilang ident="EMAIL_SUGGEST_HTML_TO" }] [{$userinfo->rec_name}]
[{ oxmultilang ident="EMAIL_SUGGEST_HTML_EMAIL2" }] [{$userinfo->rec_email}]

[{$userinfo->send_message}]

[{ oxmultilang ident="EMAIL_SUGGEST_HTML_MENYGREETINGS" }] [{$userinfo->send_name}]

[{ oxmultilang ident="EMAIL_SUGGEST_PLAIN_RECOMMENDED" }]

[{ $product->oxarticles__oxtitle->getRawValue()|strip_tags }]
[{ $product->oxarticles__oxshortdesc->getRawValue() }]

[{ oxmultilang ident="EMAIL_SUGGEST_PLAIN_CHECK" }] [{ $sArticleUrl }]

[{ oxcontent ident="oxemailfooterplain" }]