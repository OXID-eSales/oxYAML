[{*
#########################################################################
#	$Id: 152c33491b37b48e4a4567b163f2049019b0beaf $
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

[{assign var="template_title" value="MY_DOWNLOADS"|oxmultilangassign }]
[{include file="layout/header.tpl" title=$template_title location="MY_DOWNLOADS"|oxmultilangassign}]

[{include file="inc/account_header.tpl" active_link=10 }]<br>

<!-- page locator -->
[{include file="inc/list_locator.tpl" sLocatorCaption="PRODUCTS_PER_PAGE"|oxmultilangassign }]



<div class="ym-form ym-columnar linearize-form">
<h6 class="boxhead" id="accOrderHistoryHeader">[{ $template_title }]</h6>
[{if $oView->getOrderFilesList()|count }]
            [{foreach from=$oView->getOrderFilesList() item="oOrderArticle"}]
                              <dl>
                    <dt>
                        <strong>[{ $oOrderArticle.oxarticletitle }] - [{ oxmultilang ident="ORDER_NUMBER" }]: [{ $oOrderArticle.oxordernr }], [{ $oOrderArticle.oxorderdate}]</strong>
                    </dt>
                    [{foreach from=$oOrderArticle.oxorderfiles item="oOrderFile"}]
                    <dd>
                           [{if $oOrderFile->isPaid() || !$oOrderFile->oxorderfiles__oxpurchasedonly->value }]
                             [{if $oOrderFile->isValid() }]
                                   <a href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=download" params="sorderfileid="|cat:$oOrderFile->getId() }]" rel="nofollow">[{$oOrderFile->oxorderfiles__oxfilename->value}]</a>
                                   
                                   [{include file="page/account/inc/file_attributes.tpl"}]
                                
                            [{else}]
                                [{$oOrderFile->oxorderfiles__oxfilename->value}]
                                [{oxmultilang ident="DOWNLOAD_LINK_EXPIRED_OR_MAX_COUNT_RECEIVED"}]
                            [{/if}]
                          [{else}]
                            <span>[{$oOrderFile->oxorderfiles__oxfilename->value}]</span>
                            <strong>[{ oxmultilang ident="DOWNLOADS_PAYMENT_PENDING" }]</strong>
                          [{/if}]
                    </dd>
                    [{/foreach}]
                  </dl>
           
        [{/foreach}]
   [{else}]
    <p>
        [{ oxmultilang ident="DOWNLOADS_EMPTY" }]
      </p>
[{/if}]
</div>

<!-- page locator -->
[{include file="inc/list_locator.tpl" sLocatorCaption="PRODUCTS_PER_PAGE"|oxmultilangassign }]

    <form action="[{ $oViewConf->getSelfActionLink() }]" name="order" method="post">
      [{ $oViewConf->getHiddenSid() }]
          <input type="hidden" name="cl" value="start">
          <div class="textr">
              <input id="BackToShop" class="ym-button" type="submit" value="[{ oxmultilang ident="ACCOUNT_ORDER_BACKTOSHOP" }]">
          </div>
     </form>
</div>

[{insert name="oxid_tracker" title=$template_title }]
[{include file="layout/footer.tpl" }]