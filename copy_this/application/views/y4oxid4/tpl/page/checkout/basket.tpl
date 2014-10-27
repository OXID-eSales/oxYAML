[{*
#########################################################################
#	$Id: 98c3af5b253c39836b245ad2f468fd51521c7484 $
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

[{assign var="template_title" value="BASKET_BASKET"|oxmultilangassign }]
[{include file="layout/header.tpl" title=$template_title location=$template_title}]

    [{* ordering steps *}]
    [{include file="page/checkout/inc/steps.tpl" active=1 }]

    [{block name="checkout_basket_main"}]
        [{assign var="currency" value=$oView->getActCurrency() }]
        [{if !$oxcmp_basket->getProductsCount()  }]
            [{block name="checkout_basket_emptyshippingcart"}]
                <div class="box error">[{ oxmultilang ident="BASKET_EMPTY" }]</div>
            [{/block}]
        [{else }]
            <div class="bar prevnext order">
                [{if $oView->showBackToShop()}]
                    [{block name="checkout_basket_backtoshop_top"}]
                        <div class="backtoshop">
                            <form action="[{$oViewConf->getSslSelfLink()}]" method="post">
                                [{ $oViewConf->getHiddenSid() }]
                                <input type="hidden" name="cl" value="basket">
                                <input type="hidden" name="fnc" value="backtoshop">
                                <button type="submit" class="submitButton largeButton">[{ oxmultilang ident="CONTINUE_SHOPPING" }]</button>
                            </form>
                        </div>
                    [{/block}]
                [{/if}]

                [{if $oView->isLowOrderPrice() }]
                    [{block name="checkout_basket_loworderprice_top"}]
                        <div class="box error">[{ oxmultilang ident="MIN_ORDER_PRICE" }] [{ $oView->getMinOrderPrice() }] [{ $currency->sign }]</div>
                    [{/block}]
                [{else}]
                    [{block name="basket_btn_next_top"}]
                        <form action="[{$oViewConf->getSslSelfLink()}]" method="post">
                            [{ $oViewConf->getHiddenSid() }]
                            <div class="textr">
                            <input type="hidden" name="cl" value="user">
                            <button type="submit" class="submitButton largeButton nextStep">[{ oxmultilang ident="CONTINUE_TO_NEXT_STEP" }]</button>
                            </div>
                        </form>
                    [{/block}]
                [{/if}]
            </div>

            <div class="lineBox">
                [{include file="page/checkout/inc/basketcontents.tpl" editable=true}]

                [{if $oViewConf->getShowVouchers()}]
                    [{block name="checkout_basket_vouchers"}]
                        [{oxscript include="js/widgets/oxinputvalidator.js" priority=10 }]
                        [{oxscript add="$('form.js-oxValidate').oxInputValidator();"}]
                        <div id="basketVoucher" class="ym-form ym-columnar">
                        <h6>Gutschein einlösen</h6>
                            <form name="voucher" action="[{$oViewConf->getSelfActionLink()}]" method="post" class="js-oxValidate">
                                <div class="couponBox ym-fbox ym-fbox-text" id="coupon">
                                    <label>[{ oxmultilang ident="ENTER_COUPON_NUMBER" suffix="COLON" }]</label>
                                    [{ $oViewConf->getHiddenSid() }]
                                    <input type="hidden" name="cl" value="basket">
                                    <input type="hidden" name="fnc" value="addVoucher">
                                    <input type="text" size="20" name="voucherNr" class="textbox js-oxValidate js-oxValidate_notEmpty">
                                </div>
                                [{foreach from=$Errors.basket item=oEr key=key}][{if $oEr->getErrorClassType() == 'oxVoucherException'}]
								<div class="ym-fbox ym-fbox-text ym-error">
	                                <label></label>
		                            <span class="ym-message">
		                            [{ oxmultilang ident="COUPON_NOT_ACCEPTED" args=$oEr->getValue('voucherNr') }]
		                            <strong>[{ oxmultilang ident="REASON" suffix="COLON" }]</strong>
		                            [{ $oEr->getOxMessage() }]
	                                </span>
                                </div>[{/if}][{/foreach}]
								<div class="ym-fbox-button">
									<button type="submit" class="submitButton">[{ oxmultilang ident="SUBMIT_COUPON" }]</button>
                                    <input type="hidden" name="CustomError" value='basket'>
                                </div>
                            </form>
                        </div>
                    [{/block}]
                [{/if}]
            </div>


            <div class="lineBox clear">
                [{if $oView->showBackToShop()}]
                    [{block name="checkout_basket_backtoshop_bottom"}]
                        <form action="[{$oViewConf->getSslSelfLink()}]" method="post">
                            <div class="backtoshop textr">
                                [{ $oViewConf->getHiddenSid() }]
                                <input type="hidden" name="cl" value="basket">
                                <input type="hidden" name="fnc" value="backtoshop">
                                <button type="submit" class="submitButton largeButton ym-button">[{ oxmultilang ident="CONTINUE_SHOPPING" }]</button>
                            </div>
                        </form>
                    [{/block}]
                [{/if}]

                [{if $oView->isLowOrderPrice() }]
                    [{block name="checkout_basket_loworderprice_bottom"}]
                        <div class="box error">[{ oxmultilang ident="MIN_ORDER_PRICE" }] [{ $oView->getMinOrderPrice() }] [{ $currency->sign }]</div>
                    [{/block}]
                [{else}]
                    [{block name="basket_btn_next_bottom"}]
                    	<div class="textr">
                        <form action="[{$oViewConf->getSslSelfLink()}]" method="post">
                            [{ $oViewConf->getHiddenSid() }]
                            <input type="hidden" name="cl" value="user">
                            <button type="submit" class="submitButton largeButton nextStep ym-button">[{ oxmultilang ident="CONTINUE_TO_NEXT_STEP" }]</button>
                        </form>
                    	</div>
                    [{/block}]
                [{/if}]
            </div>
        [{/if}]
        [{if $oView->isWrapping() }]
           [{include file="page/checkout/inc/wrapping.tpl"}]
        [{/if}]
    [{/block}]
[{insert name="oxid_tracker" title=$template_title }]
[{include file="layout/footer.tpl" }]