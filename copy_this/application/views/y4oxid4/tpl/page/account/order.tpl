[{*
#########################################################################
#	$Id: 2668689bc9b7ab0322149e4c0d6b7bc22f328f52 $
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

[{assign var="template_title" value="ACCOUNT_ORDER_TITLE"|oxmultilangassign }]
[{include file="layout/header.tpl" title=$template_title location="ACCOUNT_ORDER_LOCATION"|oxmultilangassign|cat:$template_title}]

[{include file="inc/account_header.tpl" active_link=4 }]<br>

<!-- page locator -->
[{include file="inc/list_locator.tpl" sLocatorCaption="INC_LIST_LOCATOR_ORDERSPERPAGE"|oxmultilangassign }]


<div class="ym-form ym-columnar linearize-form">
<h6 id="accOrderHistoryHeader">[{ $template_title }]</h6>
  [{if count($oView->getOrderList()) > 0 }]
  [{assign var=oArticleList value=$oView->getOrderArticleList()}]
  
  [{foreach from=$oView->getOrderList() item=order }]
    [{if $blShowLine }]
      <p class="dotted"></p>
    [{else }]
      [{assign var="blShowLine" value=true }][{/if }]
      <div class="ym-grid ">
      	<div class="ym-g50 ym-gl">
      		
      		<dl>
      			<dt id="accOrderDate_[{$order->oxorder__oxordernr->value}]"><strong>[{ oxmultilang ident="ACCOUNT_ORDER_DATE" }]</strong></dt>
      			<dd>[{ $order->oxorder__oxorderdate->value }]</dd>
      		</dl>
      		<dl>
      			<dt id="accOrderStatus_[{$order->oxorder__oxordernr->value}]"><strong><b>[{ oxmultilang ident="ACCOUNT_ORDER_STATUS" }]</b></strong></dt>
      			<dd>[{if $order->oxorder__oxstorno->value}]
                  <span class="inlineSuccess">[{ oxmultilang ident="ACCOUNT_ORDER_STORNO" }]</span>
                [{elseif $order->oxorder__oxsenddate->value !="-" }]
                  <span class="done">[{ oxmultilang ident="ACCOUNT_ORDER_SHIPPED" }]</span>
                [{else }]
                  <span>[{ oxmultilang ident="ACCOUNT_ORDER_NOTSHIPPED" }]</span>
                [{/if }] </dd>
      		</dl>
      		<dl>
      			<dt id="accOrderNo_[{$order->oxorder__oxordernr->value}]"><strong><b>[{ oxmultilang ident="ACCOUNT_ORDER_ORDERNO" }]</b></strong></dt>
      			<dd>[{ $order->oxorder__oxordernr->value }]</dd>
      		</dl>
      		[{if $order->getShipmentTrackingUrl()}]
      		<dl>
      			<dt id="accOrderTrack_[{$order->oxorder__oxordernr->value}]"><strong><b>[{ oxmultilang ident="ACCOUNT_ORDER_TRACKINGID" }]</b></strong></dt>
      			<dd><a href="[{$order->getShipmentTrackingUrl()}]">[{ oxmultilang ident="ACCOUNT_ORDER_TRACKSHIPMENT" }]</a></dd>
      		</dl>
      		[{/if}]
      		<dl>
      			<dt id="accOrderName_[{$order->oxorder__oxordernr->value}]"><strong><b>[{ oxmultilang ident="ACCOUNT_ORDER_SHIPMENTTO" }]</b></strong></dt>
      			<dd>[{if $order->oxorder__oxdellname->value }]
                  [{ $order->oxorder__oxdelfname->value }]
                  [{ $order->oxorder__oxdellname->value }]
                [{else }]
                  [{ $order->oxorder__oxbillfname->value }]
                  [{ $order->oxorder__oxbilllname->value }]
                [{/if }]</dd>
      		</dl>
      		
      		
      		
      	</div>
      	<div class="ym-g50 ym-gr">
      		<dl>
      			<dt><strong>[{ oxmultilang ident="ACCOUNT_ORDER_CART" }]</strong></dt>
      			<dd>
      				[{foreach from=$order->getOrderArticles(true) item=orderitem name=testOrderItem}]
            		[{assign var=sArticleId value=$orderitem->oxorderarticles__oxartid->value }]
            		[{assign var=oArticle value=$oArticleList[$sArticleId] }]
            <span  class="amount" id="accOrderAmount_[{$order->oxorder__oxordernr->value}]_[{$smarty.foreach.testOrderItem.iteration}]">[{ $orderitem->oxorderarticles__oxamount->value }]</span> &nbsp;
              
                [{ if $oArticle->oxarticles__oxid->value && $oArticle->isVisible() }]<a id="accOrderLink_[{$order->oxorder__oxordernr->value}]_[{$smarty.foreach.testOrderItem.iteration}]" href="[{ $oArticle->getLink() }]" class="artlink">[{/if }]
                [{ $orderitem->oxorderarticles__oxtitle->value }] [{ $orderitem->oxorderarticles__oxselvariant->value }]
                [{ if $oArticle->oxarticles__oxid->value && $oArticle->isVisible() }]</a>[{/if }] <br />

                [{foreach key=sVar from=$orderitem->getPersParams() item=aParam}]
                    [{if $aParam }]
                    <small>[{ oxmultilang ident="ORDER_DETAILS" }]: [{$aParam}]</small><br />
                    [{/if }]
                [{/foreach}]

            	[{*
              <td align="right"> 
              *}]
                [{* Commented due to Trusted Shops precertification. Enable if needed *}]
                [{*
                [{oxhasrights ident="TOBASKET"}]
                [{if $oArticle->isBuyable() }]
                  [{if $oArticle->oxarticles__oxid->value }]
                    <a  id="accOrderToBasket_[{$order->oxorder__oxordernr->value}]_[{$smarty.foreach.testOrderItem.iteration}]" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_order" params="fnc=tobasket&amp;aid=`$oArticle->oxarticles__oxid->value`&amp;am=1" }]" class="tocart" rel="nofollow"></a>
                  [{/if }]
                [{/if }]
                [{/oxhasrights}]
                
              </td>
            *}]

          [{/foreach }]
      			</dd>
      		</dl>
      		
      	</div>
      </div>

  [{/foreach }]
 
  [{/if }]
  [{if !$blShowLine }][{ oxmultilang ident="ACCOUNT_ORDER_EMPTYHISTORY" }][{/if }]
</div>

<!-- page locator -->
[{include file="inc/list_locator.tpl" sLocatorCaption="INC_LIST_LOCATOR_ORDERSPERPAGE"|oxmultilangassign }]


    <form action="[{ $oViewConf->getSelfActionLink() }]" name="order" method="post">
      
          [{ $oViewConf->getHiddenSid() }]
          <input type="hidden" name="cl" value="start">
          <div class="textr">
              <input id="BackToShop" class="ym-button" type="submit" value="[{ oxmultilang ident="ACCOUNT_ORDER_BACKTOSHOP" }]">
          </div>
      
    </form>

[{insert name="oxid_tracker" title=$template_title }]
[{include file="layout/footer.tpl" }]
