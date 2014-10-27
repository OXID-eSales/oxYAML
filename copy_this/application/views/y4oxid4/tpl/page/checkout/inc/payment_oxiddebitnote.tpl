[{assign var="dynvalue" value=$oView->getDynValue()}]
[{assign var="iPayError" value=$oView->getPaymentError() }]

	<div class="ym-fbox-check">
		<div class="dotted">
		<input id="payment_[{$sPaymentID}]" type="radio" name="paymentid" value="[{$sPaymentID}]" [{if $oView->getCheckedPaymentId() == $paymentmethod->oxpayments__oxid->value}]checked[{/if}]>
        <label for="payment_[{$sPaymentID}]"><b>[{ $paymentmethod->oxpayments__oxdesc->value}]</b></label>
    </div>
	</div>
    <div class="ym-fbox-text">
    	<label>[{ oxmultilang ident="BANK" }]</label>
                <input id="payment_[{$sPaymentID}]_1" class="js-oxValidate js-oxValidate_notEmpty" type="text" size="20" maxlength="64" name="dynvalue[lsbankname]" autocomplete="off" value="[{ $dynvalue.lsbankname }]">
    </div>
    <div class="ym-fbox-text [{if $iPayError == -4}]ym-error[{/if}]">
    	<label>
        	[{if $oView->isOldDebitValidationEnabled()}]
            	[{ oxmultilang ident="BANK_CODE" suffix="COLON" }]
            [{else}]
                [{ oxmultilang ident="BIC" suffix="COLON" }]
            [{/if}]
        </label>
        <input type="text" class="js-oxValidate" size="20" maxlength="64" name="dynvalue[lsblz]" autocomplete="off" value="[{ $dynvalue.lsblz }]">
        [{if $iPayError == -4}]
        <span class="ym-message">[{ oxmultilang ident="ERROR_MESSAGE_INPUT_NOTALLFIELDS" }]</span>
        [{/if}]
    </div>
    <div class="ym-fbox-text [{if $iPayError == -5}]ym-error[{/if}]">
    <label>
                [{if $oView->isOldDebitValidationEnabled()}]
                    [{ oxmultilang ident="BANK_ACCOUNT_NUMBER" suffix="COLON" }]
                [{else}]
                    [{ oxmultilang ident="IBAN" suffix="COLON" }]
                [{/if}]
                </label>
                <input type="text" class="js-oxValidate js-oxValidate_notEmpty" size="20" maxlength="64" name="dynvalue[lsktonr]" autocomplete="off" value="[{ $dynvalue.lsktonr }]">
                [{if $iPayError == -5}]
                    <span class="ym-message">[{ oxmultilang ident="ERROR_MESSAGE_INPUT_NOTALLFIELDS" }]</span>
                [{/if}]    
    </div>
    <div class="ym-fbox-text">
    	<label>[{ oxmultilang ident="BANK_ACCOUNT_HOLDER" suffix="COLON" }]</label>
        <input type="text" class="js-oxValidate js-oxValidate_notEmpty" size="20" maxlength="64" name="dynvalue[lsktoinhaber]" value="[{if $dynvalue.lsktoinhaber}][{$dynvalue.lsktoinhaber}][{else}][{$oxcmp_user->oxuser__oxfname->value}] [{$oxcmp_user->oxuser__oxlname->value}][{/if}]">
    </div>
   
    [{block name="checkout_payment_longdesc"}]
            [{if $paymentmethod->oxpayments__oxlongdesc->value}]
             <div class="ym-fbox-text">
				 <label></label>
				 <br /> <br />
                <span class="ym-message" style="margin-left: 30%">
				 [{ $paymentmethod->oxpayments__oxlongdesc->getRawValue()}]
				 </span>
             </div>
             [{/if}]
        [{/block}]
    
