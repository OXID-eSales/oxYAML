[{*
#########################################################################
#   $Id: 7913fb02d1be26c34546ecc6e25d55baece1129a $
#   Project:    YAML4 OXID eSales 4 Template 4.8.x
#   ProjectId:  oxYaml 
#   Copyright:  Rene Ettling (r.ettling@eshop-source.com)
#               (http://www.eshop-source.com)
#               Some parts based on YAML4, Copyright 2005-2012, Dirk Jesse
#
#   Lizenz:     CC BY 3.0
#   Deutsch:    http://creativecommons.org/licenses/by/3.0/de/
#   Schweiz:    http://creativecommons.org/licenses/by/3.0/ch/
#   Englisch:   http://creativecommons.org/licenses/by/3.0/de/deed.en
#
#########################################################################
*}]
[{assign var="template_title" value="REVIEW_YOUR_ORDER"|oxmultilangassign}]
[{include file="layout/header.tpl" title=$template_title location=$template_title}]

    [{block name="checkout_order_errors"}]
        [{if $oView->isConfirmAGBActive() && $oView->isConfirmAGBError() == 1}]
        <div class="box error">
            [{include file="message/error.tpl" statusMessage="READ_AND_CONFIRM_TERMS"|oxmultilangassign}]
        </div>
        [{/if}]
        [{assign var="iError" value=$oView->getAddressError()}]
        [{if $iError == 1}]
        <div class="box error">
           [{include file="message/error.tpl" statusMessage="ERROR_DELIVERY_ADDRESS_WAS_CHANGED_DURING_CHECKOUT"|oxmultilangassign}]
        </div>
        [{/if}]
    [{/block}]

    [{* ordering steps *}]
    [{include file="page/checkout/inc/steps.tpl" active=4}]

    [{block name="checkout_order_main"}]
        [{if !$oView->showOrderButtonOnTop()}]
            <div class="lineBox clear">
                <span>&nbsp;</span>
                <span class="title"><strong>[{oxmultilang ident="MESSAGE_SUBMIT_BOTTOM"}]</strong></span>
            </div>
        [{/if}]

        [{block name="checkout_order_details"}]
            [{if !$oxcmp_basket->getProductsCount()}]
                [{block name="checkout_order_emptyshippingcart"}]
                <div class="box error">[{oxmultilang ident="BASKET_EMPTY"}]</div>
                [{/block}]
            [{else}]
                [{assign var="currency" value=$oView->getActCurrency()}]

                [{if $oView->isLowOrderPrice()}]
                    [{block name="checkout_order_loworderprice_top"}]
                        <div class="box error">[{oxmultilang ident="MIN_ORDER_PRICE"}] [{$oView->getMinOrderPrice()}] [{$currency->sign}]</div>
                    [{/block}]
                [{else}]

                    <div class="box info" id="orderAgbTop">
                        <form action="[{$oViewConf->getSslSelfLink()}]" method="post" id="orderConfirmAgbTop">
                            [{$oViewConf->getHiddenSid()}]
                            [{$oViewConf->getNavFormParams()}]
                            <input type="hidden" name="cl" value="order">
                            <input type="hidden" name="fnc" value="[{$oView->getExecuteFnc()}]">
                            <input type="hidden" name="challenge" value="[{$challenge}]">
                            <input type="hidden" name="sDeliveryAddressMD5" value="[{$oView->getDeliveryAddressMD5()}]">
                            <div class="agb">
                                [{if $oView->isActive('PsLogin')}]
                                    <input type="hidden" name="ord_agb" value="1">
                                [{else}]
                                    [{if $oView->isConfirmAGBActive()}]
                                        [{oxifcontent ident="oxrighttocancellegend" object="oContent"}]
                                            <strong>[{$oContent->oxcontents__oxtitle->value}]</strong><br><br>
                                            <div class="ym-fbox-check">
                                            <input type="hidden" name="ord_agb" value="0">
                                            <input id="checkAgbTop" class="checkbox" type="checkbox" name="ord_agb" value="1">
                                            <label>[{$oContent->oxcontents__oxcontent->value}]</label>
                                            </div>
                                        [{/oxifcontent}]
                                    [{else}]
                                        [{oxifcontent ident="oxrighttocancellegend2" object="oContent"}]
                                            
                                                <strong>[{$oContent->oxcontents__oxtitle->value}]</strong>
                                            
                                            <input type="hidden" name="ord_agb" value="1">
                                            <p>[{$oContent->oxcontents__oxcontent->value}]</p>
                                        [{/oxifcontent}]
                                    [{/if}]
                                [{/if}]
                            </div>

                            [{oxscript add="$('#checkAgbTop').click(function(){ $('input[name=ord_agb]').val(parseInt($('input[name=ord_agb]').val())^1);});"}]

                            [{if $oView->showOrderButtonOnTop()}]
                                <div class="lineBox clear">
                                    <a href="[{oxgetseourl ident=$oViewConf->getPaymentLink()}]" class="prevStep submitButton largeButton ym-button">[{oxmultilang ident="PREVIOUS_STEP"}]</a>
                                    <button type="submit" class="submitButton nextStep largeButton  ym-button" style="float:right">[{oxmultilang ident="SUBMIT_ORDER"}]</button>
                                </div>
                            [{/if}]
                        </form>
                    </div>
                [{/if}]

                [{block name="checkout_order_vouchers"}]
                    [{if $oViewConf->getShowVouchers() && $oxcmp_basket->getVouchers()}]
                        <div class="box info">
                        	<strong>[{oxmultilang ident="USED_COUPONS"}]</strong><br>
                        
                            [{foreach from=$Errors.basket item=oEr key=key}]
                                [{if $oEr->getErrorClassType() == 'oxVoucherException'}]
                                    [{oxmultilang ident="COUPON_NOT_ACCEPTED" args=$oEr->getValue('voucherNr')}]<br>
                                    [{oxmultilang ident="REASON" suffix="COLON"}]
                                    [{$oEr->getOxMessage()}]<br>
                                [{/if}]
                            [{/foreach}]
                            [{foreach from=$oxcmp_basket->getVouchers() item=sVoucher key=key name=aVouchers}]
                                [{$sVoucher->sVoucherNr}]<br>
                            [{/foreach}]
                        </div>
                    [{/if}]
                [{/block}]

                [{block name="checkout_order_address"}]
                <div id="orderAddress">
                        <form action="[{$oViewConf->getSslSelfLink()}]" method="post">
                            <h4 class="section">
                            <strong>[{oxmultilang ident="ADDRESSES"}]</strong>
                            [{$oViewConf->getHiddenSid()}]
                            <input type="hidden" name="cl" value="user">
                            <input type="hidden" name="fnc" value="">
                            <button type="submit" class="submitButton largeButton">[{oxmultilang ident="EDIT"}]</button>
                            </h4>
                        </form>
						<div class="ym-grid ym-equalize">
                          	<div class="ym-g50 ym-gl">
	                          	<div class="ym-gbox-left">
	                          		<div class="box info boxHeight">
	                          		<strong>[{oxmultilang ident="BILLING_ADDRESS"}]:</strong><br><br>
	                          		[{include file="widget/address/billing_address.tpl"}]
	                          		</div>
	                          	</div>
                          	</div>
						  	<div class="ym-g50 ym-gr">
						  		<div class="ym-gbox-right">
						  		[{assign var="oDelAdress" value=$oView->getDelAddress()}]
						  		[{if $oDelAdress}]
						  			<div class="box info boxHeight">
						  			<strong>[{oxmultilang ident="SHIPPING_ADDRESS"}]</strong><br><br>
						  			[{include file="widget/address/shipping_address.tpl" delivadr=$oDelAdress}]
						  			</div>
						  		[{/if}]
						  		</div>
						  	</div>
						</div> 
                       

                        [{if $oView->getOrderRemark()}]
                            <div class="box info">
                                <strong>[{oxmultilang ident="WHAT_I_WANTED_TO_SAY"}]</strong><br><br>
                                [{$oView->getOrderRemark()}]
                            </div>
                        [{/if}]
                    </div>
                    <div style="clear:both;"></div>
                [{/block}]

                [{block name="shippingAndPayment"}]
                <div class="ym-grid ym-equalize">
                    <div class="ym-g50 ym-gl">
                    	<div class="ym-gbox-left">
                    		<div id="orderShipping">
                    			
                    <form action="[{$oViewConf->getSslSelfLink()}]" method="post">
                        <h4 class="section">
                            <strong>[{oxmultilang ident="SHIPPING_CARRIER"}]</strong>
                            [{$oViewConf->getHiddenSid()}]
                            <input type="hidden" name="cl" value="payment">
                            <input type="hidden" name="fnc" value="">
                            <button type="submit" class="submitButton largeButton">[{oxmultilang ident="EDIT"}]</button>
                        </h4>
                    </form>
                    [{assign var="oShipSet" value=$oView->getShipSet()}]
                    <div class="box info">[{$oShipSet->oxdeliveryset__oxtitle->value}]</div>
                    </div>
                    	</div>
                    </div>
                    <div class="ym-g50 ym-gr">
                    	<div class="ym-gbox-right">
							<div id="orderPayment">
                        <form action="[{$oViewConf->getSslSelfLink()}]" method="post">
                            <h4 class="section">
                                <strong>[{oxmultilang ident="PAYMENT_METHOD"}]</strong>
                                [{$oViewConf->getHiddenSid()}]
                                <input type="hidden" name="cl" value="payment">
                                <input type="hidden" name="fnc" value="">
                                <button type="submit" class="submitButton largeButton">[{oxmultilang ident="EDIT"}]</button>
                            </h4>
                        </form>
                        [{assign var="payment" value=$oView->getPayment()}]
                        <div class="box info">[{$payment->oxpayments__oxdesc->value}]</div>
                    </div>
                    	</div>
                    </div>
                </div>
                [{/block}]

                <div id="orderEditCart">
                    <form action="[{$oViewConf->getSslSelfLink()}]" method="post">
                        <h4 class="section">
                            <strong>[{oxmultilang ident="CART"}]</strong>
                            [{$oViewConf->getHiddenSid()}]
                            <input type="hidden" name="cl" value="basket">
                            <input type="hidden" name="fnc" value="">
                            <button type="submit" class="submitButton largeButton">[{oxmultilang ident="EDIT"}]</button>
                        </h4>
                    </form>
                </div>

                [{block name="order_basket"}]
                    <div class="lineBox">
                        [{include file="page/checkout/inc/basketcontents.tpl" editable=false}]
                    </div>
                [{/block}]

                [{if $oView->isLowOrderPrice()}]
                    [{block name="checkout_order_loworderprice_bottom"}]
                        <div class="lineBox clear">
                            <div class="box error">[{oxmultilang ident="MIN_ORDER_PRICE"}] [{$oView->getMinOrderPrice()}] [{$currency->sign}]</div>
                        </div>
                    [{/block}]
                [{else}]
                    [{block name="checkout_order_btn_confirm_bottom"}]
                        <form action="[{$oViewConf->getSslSelfLink()}]" method="post" id="orderConfirmAgbBottom">
                            [{$oViewConf->getHiddenSid()}]
                            [{$oViewConf->getNavFormParams()}]
                            <input type="hidden" name="cl" value="order">
                            <input type="hidden" name="fnc" value="[{$oView->getExecuteFnc()}]">
                            <input type="hidden" name="challenge" value="[{$challenge}]">
                            <input type="hidden" name="sDeliveryAddressMD5" value="[{$oView->getDeliveryAddressMD5()}]">

                            <div class="agb">
                                [{if $oView->isActive('PsLogin')}]
                                    <input type="hidden" name="ord_agb" value="1">
                                [{else}]
                                    [{if $oView->isConfirmAGBActive()}]
                                            <input type="hidden" name="ord_agb" value="0">
                                    [{/if}]
                                [{/if}]
                            </div>

                            [{if $oViewConf->isFunctionalityEnabled("blShowTSInternationalFeesMessage")}]
                                [{oxifcontent ident="oxtsinternationalfees" object="oTSIFContent"}]
                                    <div class="box warning">
                                        <span class="title">[{$oTSIFContent->oxcontents__oxcontent->value}]</span>
                                    </div>
                                [{/oxifcontent}]
                            [{/if}]

                            [{if $payment->oxpayments__oxid->value eq "oxidcashondel" && $oViewConf->isFunctionalityEnabled("blShowTSCODMessage")}]
                                [{oxifcontent ident="oxtscodmessage" object="oTSCODContent"}]
                                    <div class="box warning">
                                        <span class="title">[{$oTSCODContent->oxcontents__oxcontent->value}]</span>
                                    </div>
                                [{/oxifcontent}]
                            [{/if}]

                            <div class="lineBox clear">
                                <a href="[{oxgetseourl ident=$oViewConf->getPaymentLink()}]" class="prevStep submitButton largeButton ym-button">[{oxmultilang ident="PREVIOUS_STEP"}]</a>
                                <button type="submit" class="submitButton nextStep largeButton ym-button" style="float:right">[{oxmultilang ident="SUBMIT_ORDER"}]</button>
                            </div>
                        </form>
                    [{/block}]
                [{/if}]
            [{/if}]
        [{/block}]
    [{/block}]
    [{insert name="oxid_tracker" title=$template_title}]



[{include file="layout/footer.tpl" }]
[{* include file="layout/page.tpl" title=$template_title location=$template_title *}]