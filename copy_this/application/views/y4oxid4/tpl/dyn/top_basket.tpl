[{*
#########################################################################
#	$Id: 82d8f8ddedf4780f707c431970b8725b291dc5e2 $
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
[{oxhasrights ident="TOBASKET"}]
[{if $oxcmp_basket->getContents()}]
[{assign var="currency" value=$oView->getActCurrency() }]
<dl id="top_basket" class="box basket">
    <dt id="tm.basket.dt">
        <a id="TopBasketHeader" rel="nofollow" href="[{ oxgetseourl ident=$oViewConf->getBasketLink() }]">[{ oxmultilang ident="INC_HEADER_CART" }]</a>
    </dt>
    <dd id="tm.basket.dd" class="dropdown">
        
        <ul id="basket_menu" class="menue vertical">
            <li><a href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=basket" }]" rel="nofollow">[{ oxmultilang ident="INC_ACCOUNT_HEADER_TOBASKET" }]</a></li>
            [{if $oxcmp_user->oxuser__oxpassword->value && $oView->isLowOrderPrice()}]
            <li><a href="[{ oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=payment" }]" rel="nofollow">[{ oxmultilang ident="INC_ACCOUNT_HEADER_TOPAYMENT" }]</a></li>
            [{/if}]
        </ul>
        
    </dd>
    <dd>
         <table summary="[{ oxmultilang ident="INC_HEADER_CART" }]">
          <tr>
             <th>[{ oxmultilang ident="INC_CMP_BASKET_PRODUCT" }]</th>
             <td id="TopBasketProducts">[{ $oxcmp_basket->getProductsCount()}]</td>
          </tr>
          <tr>
             <th>[{ oxmultilang ident="INC_CMP_BASKET_QUANTITY" }]</th>
             <td id="TopBasketItems">[{ $oxcmp_basket->getItemsCount()}]</td>
          </tr>
          [{if $oxcmp_basket->getDeliveryCosts() }]
          <tr>
             <th>[{ oxmultilang ident="INC_CMP_BASKET_SHIPPING" }]</th>
             <td id="TopBasketShipping">[{ $oxcmp_basket->getFDeliveryCosts() }] [{ $currency->sign}]</td>
          </tr>
          [{/if}]
          <tr>
             <th>[{ oxmultilang ident="INC_CMP_BASKET_TOTALPRODUCTS" }]</th>
             <td id="TopBasketTotal">[{ $oxcmp_basket->getFProductsPrice()}] [{ $currency->sign}]</td>
          </tr>
          [{if $oViewConf->getShowBasketTimeout()}]
          <tr>
              <th>[{ oxmultilang ident="INC_CMP_BASKET_TIMEOUT" }]</th>
              <td class="countdown">[{$oViewConf->getBasketTimeLeft()|oxformattime}]</td>
              [{oxscript include="jquery.min.js"}]
              [{oxscript include="countdown.jquery.js"}]
              [{oxscript add='$(document).ready(
                  function(){
                      $("#top_basket .countdown").countdown(
                          function(count, element, container) {
                              if (count <= 1) {
                                  $("#top_basket").hide();
                                  return $("");
                              }
                          }
                      );
                  }
              );'
              }]
          </tr>
          [{/if}]
         </table>
    </dd>
</dl>
[{oxscript add="oxid.topnav('tm.basket.dt','tm.basket.dd');" }]
[{/if}]
[{/oxhasrights}]