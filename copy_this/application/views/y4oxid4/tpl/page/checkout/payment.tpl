[{assign var="template_title" value="USER_LOGINTITLE"|oxmultilangassign}]
[{include file="layout/header.tpl" title=$template_title location=$template_title}]

<!-- ordering steps -->
[{include file="page/checkout/inc/steps.tpl" active=3 }]

    [{block name="checkout_payment_main"}]
        [{assign var="currency" value=$oView->getActCurrency() }]
        [{block name="change_shipping"}]
        	[{if $oView->getAllSets()}]
        		<form class="ym-form linearize-form ym-columnar cust_new" action="[{ $oViewConf->getSslSelfLink() }]" name="shipping" id="shipping" method="post">
          <h6>[{ oxmultilang ident="CHECKOUT_VERSAND" }]</h6>
              [{ $oViewConf->getHiddenSid() }]
              [{ $oViewConf->getNavFormParams() }]
              <input type="hidden" name="cl" value="[{ $oViewConf->getActiveClassName() }]">
              <input type="hidden" name="fnc" value="changeshipping">

              <div class="ym-fbox-select">
              	<label>[{ if $oView->getAllSetsCnt() > 1 }][{ oxmultilang ident="PAYMENT_SELECTSHIPPING" }][{else}][{ oxmultilang ident="PAYMENT_SELECTEDSHIPPING" }][{/if}]</label>
                <select name="sShipSet" onChange="JavaScript:document.forms.shipping.submit();">
                  [{foreach key=sShipID from=$oView->getAllSets() item=oShippingSet name=ShipSetSelect}]
                    <option value="[{$sShipID}]" [{if $oShippingSet->blSelected}]SELECTED[{/if}]>[{ $oShippingSet->oxdeliveryset__oxtitle->value }]</option>
                  [{/foreach}]
                </select>
                <noscript>
                	<input class="ym-button" type="submit" value="[{ oxmultilang ident="PAYMENT_UPDATESHIPPING" }]" >
                </noscript>
              </div>
              [{ if $oxcmp_basket->getDeliveryCosts() }]
              <div class="ym-fbox-text ym-error">
                    	<span class="ym-message">[{ oxmultilang ident="PAYMENT_CHARGE" }] [{ $oxcmp_basket->getFDeliveryCosts() }] [{ $currency->sign}]</span>
              </div>
              [{ /if}]
        </form>
        	[{/if}]
        [{/block}]

        [{block name="checkout_payment_errors"}]
            [{assign var="iPayError" value=$oView->getPaymentError() }]
            [{if $iPayError == 1}]
                <div class="status error">[{ oxmultilang ident="ERROR_MESSAGE_COMPLETE_FIELDS_CORRECTLY" }]</div>
            [{elseif $iPayError == 2}]
                <div class="status error">[{ oxmultilang ident="MESSAGE_PAYMENT_AUTHORIZATION_FAILED" }]</div>
            [{elseif $iPayError == 4}]
                <div class="status error">[{ oxmultilang ident="MESSAGE_UNAVAILABLE_SHIPPING_METHOD" }]</div>
            [{elseif $iPayError == 5}]
                <div class="status error">[{ oxmultilang ident="MESSAGE_PAYMENT_UNAVAILABLE_PAYMENT" }]</div>
            [{elseif $iPayError == 6}]
                <div class="status error">[{ oxmultilang ident="TRUSTED_SHOP_UNAVAILABLE_PROTECTION" }]</div>
            [{elseif $iPayError > 6}]
                <!--Add custom error message here-->
                <div class="status error">[{ oxmultilang ident="MESSAGE_PAYMENT_UNAVAILABLE_PAYMENT" }]</div>
            [{elseif $iPayError == -1}]
                <div class="status error">[{ oxmultilang ident="MESSAGE_PAYMENT_UNAVAILABLE_PAYMENT_ERROR" suffix="COLON" }] "[{ $oView->getPaymentErrorText() }]").</div>
            [{elseif $iPayError == -2}]
                <div class="status error">[{ oxmultilang ident="MESSAGE_NO_SHIPPING_METHOD_FOUND" }]</div>
            [{elseif $iPayError == -3}]
                <div class="status error">[{ oxmultilang ident="MESSAGE_PAYMENT_SELECT_ANOTHER_PAYMENT" }]</div>
            [{elseif $iPayError == -4}]
                <div class="status error">[{ oxmultilang ident="MESSAGE_PAYMENT_BANK_CODE_INVALID" }]</div>
            [{elseif $iPayError == -5}]
                <div class="status error">[{ oxmultilang ident="MESSAGE_PAYMENT_ACCOUNT_NUMBER_INVALID" }]</div>
            [{/if}]
        [{/block}]

        [{block name="change_payment"}]
            [{oxscript include="js/widgets/oxpayment.js" priority=10 }]
            [{oxscript add="$( '#payment' ).oxPayment();"}]
            [{oxscript include="js/widgets/oxinputvalidator.js" priority=10 }]
            [{oxscript add="$('form.js-oxValidate').oxInputValidator();"}]
            <form action="[{$oViewConf->getSslSelfLink()}]" class="js-oxValidate payment" id="payment" name="order" method="post">
            	<div class="ym-form linearize-form ym-columnar cust_new">
            
                <div>
                    [{ $oViewConf->getHiddenSid() }]
                    [{ $oViewConf->getNavFormParams() }]
                    <input type="hidden" name="cl" value="[{ $oViewConf->getActiveClassName() }]">
                    <input type="hidden" name="fnc" value="validatepayment">
                </div>

                [{if $oView->getPaymentList()}]
                    <h6 id="paymentHeader" class="blockHead">[{ oxmultilang ident="PAYMENT_METHOD" }]</h6>
                    [{ assign var="inptcounter" value="-1"}]
                    [{foreach key=sPaymentID from=$oView->getPaymentList() item=paymentmethod name=PaymentSelect}]
                        [{ assign var="inptcounter" value="`$inptcounter+1`"}]
                        [{block name="select_payment"}]
                            [{if $sPaymentID == "oxidcashondel"}]
                                [{include file="page/checkout/inc/payment_oxidcashondel.tpl"}]
                            [{elseif $sPaymentID == "oxidcreditcard"}]
                                [{include file="page/checkout/inc/payment_oxidcreditcard.tpl"}]
                            [{elseif $sPaymentID == "oxiddebitnote"}]
                                [{include file="page/checkout/inc/payment_oxiddebitnote.tpl"}]
                            [{else}]
                                [{include file="page/checkout/inc/payment_other.tpl"}]
                            [{/if}]
                        [{/block}]
                    [{/foreach}]
					</div>[{* ende ym-form *}]
                    
                    [{* TRUSTED SHOPS BEGIN *}]
                    [{include file="page/checkout/inc/trustedshops.tpl"}]
                    [{* TRUSTED SHOPS END *}]

                    [{block name="checkout_payment_nextstep"}]
                        [{if $oView->isLowOrderPrice()}]
                            <div class="lineBox clear">
                            <div class="box error"><b>[{ oxmultilang ident="MIN_ORDER_PRICE" }] [{oxprice price=$oxcmp_basket->getMinOrderPrice() currency=$currency}]</b></div>
                            </div>
                        [{else}]
                            <div class="lineBox clear">
                                <a href="[{oxgetseourl ident=$oViewConf->getOrderLink()}]" class="prevStep submitButton largeButton ym-button" id="paymentBackStepBottom">[{ oxmultilang ident="PREVIOUS_STEP" }]</a>
                                <button type="submit" name="userform" class="submitButton nextStep largeButton ym-button" id="paymentNextStepBottom"  style="float:right">[{ oxmultilang ident="CONTINUE_TO_NEXT_STEP" }]</button>
                            </div>
                        [{/if}]
                    [{/block}]

                [{elseif $oView->getEmptyPayment()}]
                    [{block name="checkout_payment_nopaymentsfound"}]
                        <div class="lineBlock"></div>
                        <h6 id="paymentHeader" class="blockHead">[{ oxmultilang ident="PAYMENT_INFORMATION" }]</h6>
                        [{oxifcontent ident="oxnopaymentmethod" object="oCont"}]
                            [{$oCont->oxcontents__oxcontent->value}]
                        [{/oxifcontent}]
                        <input type="hidden" name="paymentid" value="oxempty">
                        <div class="lineBox clear">
                            <a href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=user"}]" class="prevStep submitButton largeButton ym-button">[{ oxmultilang ident="PREVIOUS_STEP" }]</a>
                            <button type="submit" name="userform" class="submitButton nextStep largeButton ym-button" id="paymentNextStepBottom" style="float:right">[{ oxmultilang ident="CONTINUE_TO_NEXT_STEP" }]</button>
                        </div>
                    [{/block}]
                [{/if}]
            
            	
            </form>
        [{/block}]
    [{/block}]
   
[{ insert name="oxid_tracker" title=$template_title }]
[{include file="layout/footer.tpl"}]