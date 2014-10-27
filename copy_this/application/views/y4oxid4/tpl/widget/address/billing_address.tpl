[{*
#########################################################################
#	$Id: 393923ab4ad018b91fb2b304364184d1412a1c68 $
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
[{if $oxcmp_user->oxuser__oxusername->value}][{ oxmultilang ident="EMAIL" suffix="COLON" }]&nbsp;[{ $oxcmp_user->oxuser__oxusername->value }]<br>[{/if}]
[{if $oxcmp_user->oxuser__oxcompany->value }] [{ $oxcmp_user->oxuser__oxcompany->value }]<br> [{/if}]
[{if $oxcmp_user->oxuser__oxaddinfo->value }] [{ $oxcmp_user->oxuser__oxaddinfo->value }]<br>[{/if}]
[{if $oxcmp_user->oxuser__oxustid->value }] [{ oxmultilang ident="VAT_ID_NUMBER" suffix="COLON" }] [{ $oxcmp_user->oxuser__oxustid->value }]<br> [{/if}]
[{if $oxcmp_user->oxuser__oxsal->value || $oxcmp_user->oxuser__oxfname->value || $oxcmp_user->oxuser__oxlname->value}][{ $oxcmp_user->oxuser__oxsal->value|oxmultilangsal}]&nbsp;[{ $oxcmp_user->oxuser__oxfname->value }]&nbsp;[{ $oxcmp_user->oxuser__oxlname->value }]<br>[{/if}]
[{if $oxcmp_user->oxuser__oxstreet->value || $oxcmp_user->oxuser__oxstreetnr->value}][{ $oxcmp_user->oxuser__oxstreet->value }]&nbsp;[{ $oxcmp_user->oxuser__oxstreetnr->value }]<br>[{/if}]
[{if $oxcmp_user->oxuser__oxstateid->value}][{$oxcmp_user->oxuser__oxstateid->value}] [{/if}]
[{if $oxcmp_user->oxuser__oxzip->value || $oxcmp_user->oxuser__oxcity->value}][{ $oxcmp_user->oxuser__oxzip->value }]&nbsp;[{ $oxcmp_user->oxuser__oxcity->value }]<br>[{/if}]
[{if $oxcmp_user->oxuser__oxcountry->value }][{ $oxcmp_user->oxuser__oxcountry->value }]<br><br>[{/if}]
[{if $oxcmp_user->oxuser__oxfon->value }] [{ oxmultilang ident="PHONE" suffix="COLON" }] [{ $oxcmp_user->oxuser__oxfon->value }]<br>[{/if}]
[{if $oxcmp_user->oxuser__oxfax->value }] [{ oxmultilang ident="FAX" suffix="COLON" }] [{ $oxcmp_user->oxuser__oxfax->value }]<br>[{/if}]
[{if $oxcmp_user->oxuser__oxmobfon->value }] [{ oxmultilang ident="CELLUAR_PHONE" suffix="COLON" }] [{ $oxcmp_user->oxuser__oxmobfon->value }]<br>[{/if}]
[{if $oxcmp_user->oxuser__oxprivfon->value }] [{ oxmultilang ident="PERSONAL_PHONE" suffix="COLON" }] [{ $oxcmp_user->oxuser__oxprivfon->value }]<br>[{/if}]