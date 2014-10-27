[{*
#########################################################################
#	$Id: 16748436f19a1e3a976805788f9fe36f1d961455 $
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

[{ oxmultilang ident="EMAIL_INVITE_HTML_INVITETOSHOP" }] [{$userinfo->send_name}], [{ oxmultilang ident="EMAIL_INVITE_HTML_INVITETOSHOP2" }] [{ $shop->oxshops__oxname->getRawValue() }] [{ oxmultilang ident="EMAIL_INVITE_HTML_INVITETOSHOP3" }]
[{ oxmultilang ident="EMAIL_INVITE_HTML_FROM" }] [{$userinfo->send_name}]
[{ oxmultilang ident="EMAIL_INVITE_HTML_EMAIL" }] [{$userinfo->send_email}]

[{$userinfo->send_message}]

[{ $sHomeUrl }]

[{ oxmultilang ident="EMAIL_INVITE_HTML_MENYGREETINGS" }] [{$userinfo->send_name}]

[{ oxcontent ident="oxemailfooterplain" }]