<div class="ym-fbox-check">
	<div class="dotted">
		<input id="payment_[{$sPaymentID}]" type="radio" name="paymentid" value="[{$sPaymentID}]" [{if $oView->getCheckedPaymentId() == $paymentmethod->oxpayments__oxid->value}]checked[{/if}]>
		<label for="payment_[{$sPaymentID}]"><b>[{ $paymentmethod->oxpayments__oxdesc->value}]</b></label>
	</div>
</div>
<div class="ym-fbox-text ym-error">
<label></label>
<span class="ym-message">
	[{if $paymentmethod->getPrice()}]
		[{assign var="oPaymentPrice" value=$paymentmethod->getPrice() }]
        [{if $oViewConf->isFunctionalityEnabled('blShowVATForPayCharge') }]
        	([{oxprice price=$oPaymentPrice->getNettoPrice() currency=$currency}] [{ oxmultilang ident="PLUS_VAT" }] [{oxprice price=$oPaymentPrice->getVatValue() currency=$currency }])
        [{else}]
            ([{oxprice price=$oPaymentPrice->getBruttoPrice() currency=$currency}])
        [{/if}]
	[{/if}]
    [{ oxmultilang ident="COD_CHARGE" }]
</div>	
[{block name="checkout_payment_longdesc"}]
	[{if $paymentmethod->oxpayments__oxlongdesc->value}]
    	<div class="ym-fbox-text">
			<label></label>
			<br />
	        <span class="ym-message" style="margin-left: 30%">
				[{ $paymentmethod->oxpayments__oxlongdesc->getRawValue()}]
			</span>
        </div>
     [{/if}]
[{/block}]