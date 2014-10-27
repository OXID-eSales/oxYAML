[{*
#########################################################################
#	$Id: 250539a4ac8d88588c85baeca89a6568a08232d0 $
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
[{ assign var="sOrderId"   value=$order->getId() }]
[{ assign var="oOrderFileList"   value=$oEmailView->getOrderFileList($sOrderId) }]

    [{ oxmultilang ident="EMAIL_SENDDOWNLOADS_GREETING" }], [{ $order->oxorder__oxbillsal->value|oxmultilangsal }] [{ $order->oxorder__oxbillfname->value }] [{ $order->oxorder__oxbilllname->value }],

    [{ oxmultilang ident="EMAIL_SENDEDNOW_HTML_ORDERNOMBER" }] [{ $order->oxorder__oxordernr->value }]

    [{ if $oOrderFileList }]
        [{ oxmultilang ident="EMAIL_SENDDOWNLOADS_DOWNLOADS_DESC" }]
            [{foreach from=$oOrderFileList item="oOrderFile"}]
              [{if $order->oxorder__oxpaid->value || !$oOrderFile->oxorderfiles__oxpurchasedonly->value}]
                [{ oxgetseourl ident=$oViewConf->getBaseDir()|cat:"index.php?cl=download" params="sorderfileid="|cat:$oOrderFile->getId() }] [{$oOrderFile->oxorderfiles__oxfilename->value}]
              [{else}]
                [{$oOrderFile->oxorderfiles__oxfilename->value}] [{ oxmultilang ident="EMAIL_SENDDOWNLOADS_PAYMENT_PENDING" }]
              [{/if}]
            [{/foreach}]
    [{/if}]

    [{ oxmultilang ident="EMAIL_SENDEDNOW_HTML_YUORTEAM1" }] [{ $shop->oxshops__oxname->value }] [{ oxmultilang ident="EMAIL_SENDEDNOW_HTML_YUORTEAM2" }]

[{if $oViewConf->showTs("ORDERCONFEMAIL") && $oViewConf->getTsId() }]
[{ oxmultilang ident="EMAIL_SENDEDNOW_HTML_TS_RATINGS_RATEUS" }]
[{ $oViewConf->getTsRatingUrl() }]
[{/if}]

[{ oxcontent ident="oxemailfooterplain" }]