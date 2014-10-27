[{*
#########################################################################
#	$Id: 2463f9bbf3ef0b0b02ee4a01d356ef57fe78fef2 $
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
[{ if $oxcmp_basket->getProductsCount() && $_newitem}]
[{oxhasrights ident="TOBASKET"}]
    [{foreach from=$Errors.basket item=oEr key=key }]
        [{if $oEr->getErrorClassType() == 'oxOutOfStockException'}]
            <div class="error">[{ $oEr->getOxMessage() }]</div>
        [{/if}]
    [{/foreach}]

    <div class="msg">
        [{ oxmultilang ident="INC_NEWBASKETITEM_ADDEDTOBASKET1" }] [{$_newitem->sTitle}] [{ oxmultilang ident="INC_NEWBASKETITEM_ADDEDTOBASKET2" }] <a rel="nofollow" href="[{ oxgetseourl ident=$oViewConf->getBasketLink() }]">[{ oxmultilang ident="INC_NEWBASKETITEM_ADDEDTOBASKET3" }]</a>[{ oxmultilang ident="INC_NEWBASKETITEM_ADDEDTOBASKET4" }]
    </div>
[{/oxhasrights}]
[{/if }]