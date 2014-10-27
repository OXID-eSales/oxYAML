[{*
#########################################################################
#	$Id: cdee3e03d82bbf6216de7d1a0f24ae536b3ee08f $
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
[{if $delivadr }]
    [{if $delivadr->oxaddress__oxcompany->value }] [{ $delivadr->oxaddress__oxcompany->value }]<br>[{/if}]
    [{if $delivadr->oxaddress__oxaddinfo->value }] [{ $delivadr->oxaddress__oxaddinfo->value }]<br>[{/if}]
    [{if $delivadr->oxaddress__oxsal->value || $delivadr->oxaddress__oxfname->value || $delivadr->oxaddress__oxlname->value}][{ $delivadr->oxaddress__oxsal->value|oxmultilangsal}]&nbsp;[{ $delivadr->oxaddress__oxfname->value }]&nbsp;[{ $delivadr->oxaddress__oxlname->value }]<br>[{/if}]
    [{if $delivadr->oxaddress__oxstreet->value || $delivadr->oxaddress__oxstreetnr->value}][{ $delivadr->oxaddress__oxstreet->value }]&nbsp;[{ $delivadr->oxaddress__oxstreetnr->value }]<br>[{/if}]
    [{if $delivadr->oxaddress__oxstateid->value}][{$delivadr->oxaddress__oxstateid->value}] [{/if}]
    [{if $delivadr->oxaddress__oxzip->value || $delivadr->oxaddress__oxcity->value}][{ $delivadr->oxaddress__oxzip->value }]&nbsp;[{ $delivadr->oxaddress__oxcity->value }]<br>[{/if}]
    [{if $delivadr->oxaddress__oxcountry->value }][{ $delivadr->oxaddress__oxcountry->value }]<br><br>[{/if}]
    [{if $delivadr->oxaddress__oxfon->value }][{ oxmultilang ident="PHONE" suffix="COLON" }] [{ $delivadr->oxaddress__oxfon->value }]<br>[{/if}]
    [{if $delivadr->oxaddress__oxfax->value }][{ oxmultilang ident="FAX" suffix="COLON" }] [{ $delivadr->oxaddress__oxfax->value }]<br>[{/if}]
[{/if}]
