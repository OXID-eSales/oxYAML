[{*
#########################################################################
#	$Id: 04abd7be4afa42979ec9ac80f3b7eace52ce446f $
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

[{assign var="template_title" value="CONTACT_TITLECONTACT"|oxmultilangassign}]
[{include file="layout/header.tpl" title=$template_title location=$template_title}]

<h1 id="contactHeader">[{ oxmultilang ident="CONTACT_CONTACT" }]</h1>

<div class="vcard">
    <a class="org url" href="http://[{$oxcmp_shop->oxshops__oxurl->value }]">[{$oxcmp_shop->oxshops__oxcompany->value }]</a>
    <div class="adr">
   <span class="fn">[{ $oxcmp_shop->oxshops__oxfname->value }] [{ $oxcmp_shop->oxshops__oxlname->value }]</span>
   <div class="street-address">[{ $oxcmp_shop->oxshops__oxstreet->value }]</div>
    <span class="postal-code">[{ $oxcmp_shop->oxshops__oxzip->value }]</span>
    <span class="locality">[{ $oxcmp_shop->oxshops__oxcity->value }]</span>,
    <div class="country-name">[{ $oxcmp_shop->oxshops__oxcountry->value }]</div>
    </div>
    [{ if $oxcmp_shop->oxshops__oxtelefon->value}]
    <div class="tel"> <span class="type">[{ oxmultilang ident="CONTACT_PHONE" }]</span> [{ $oxcmp_shop->oxshops__oxtelefon->value }]</div>
  	[{/if}]
    [{ if $oxcmp_shop->oxshops__oxtelefax->value}]
    <div class="tel"> <span class="type">[{ oxmultilang ident="CONTACT_FAX" }]</span> [{ $oxcmp_shop->oxshops__oxtelefax->value }]</div>
  	[{/if}]
    [{ if $oxcmp_shop->oxshops__oxinfoemail->value}]
    <div>[{ oxmultilang ident="CONTACT_EMAIL" }] <span class="email">[{oxmailto address=$oxcmp_shop->oxshops__oxinfoemail->value encode="javascript"}]</span> </div>
  	[{/if}]
</div>

[{ if !$oView->getContactSendStatus() }]
[{assign var="editval" value=$oView->getUserData() }]
<form action="[{ $oViewConf->getSslSelfLink() }]" method="post" class="ym-form ym-columnar">
	
	[{ $oViewConf->getHiddenSid() }]
	<input type="hidden" name="fnc" value="send"/>
	<input type="hidden" name="cl" value="contact"/>
	[{assign var="oCaptcha" value=$oView->getCaptcha() }]
	<input type="hidden" name="c_mach" value="[{$oCaptcha->getHash()}]"/>
	
	<h6>[{ oxmultilang ident="CONTACT_CONTACT" }]</h6>
	<div class="ym-fbox-text ym-error">
		<span class="ym-message">
		[{ oxmultilang ident="CONTACT_COMPLETEMARKEDFIELDS2" }]
		</span>
	</div>
	<div class="ym-fbox-select">
	  	<label for="editval[oxuser__oxsal]">[{ oxmultilang ident="CONTACT_TITLE" }]</label>
	  	[{include file="inc/salutation.tpl" name="editval[oxuser__oxsal]" value=$editval.oxuser__oxsal }]
	</div>
	<div class="ym-fbox-text">
	 	<label for="editval[oxuser__oxfname]">[{ oxmultilang ident="CONTACT_FIRSTNAME" }]&nbsp;<sup class="ym-required">*</sup></label>
	 	<input type="text" name="editval[oxuser__oxfname]" id="editval[oxuser__oxfname]" maxlength="40" value="[{$editval.oxuser__oxfname}]" required="required">
	</div>
	<div class="ym-fbox-text">
	 	<label for="editval[oxuser__oxlname]">[{ oxmultilang ident="CONTACT_LASTNAME" }]&nbsp;<sup class="ym-required">*</sup></label>
	 	<input type="text" name="editval[oxuser__oxlname]" id="editval[oxuser__oxlname]" maxlength="40" value="[{$editval.oxuser__oxlname}]" required="required">
	</div>
	<div class="ym-fbox-text">
	 	<label for="contactEmail">[{ oxmultilang ident="CONTACT_EMAIL2" }]&nbsp;<sup class="ym-required">*</sup></label>
	 	<input id="contactEmail" type="text" name="editval[oxuser__oxusername]" maxlength="40" value="[{$editval.oxuser__oxusername}]" required="required">
	</div>
	<div class="ym-fbox-text">
	 	<label for="c_subject">[{ oxmultilang ident="CONTACT_SUBJECT" }]&nbsp;<sup class="ym-required">*</sup></label>
	 	<input type="text" name="c_subject" id="c_subject" maxlength="80" value="[{$oView->getContactSubject()}]" required="required">
	</div>
	<div class="ym-fbox-text">
	 	<label for="c_message">[{ oxmultilang ident="CONTACT_MESSAGE" }]</label>
	 	<textarea rows="15" cols="70" name="c_message" id="c_message">[{$oView->getContactMessage()}]</textarea>
	</div>
	<div class="ym-fbox-text">
	 	<label for="verificationCode">&nbsp;</label>
	 	[{assign var="oCaptcha" value=$oView->getCaptcha() }]
		   [{if $oCaptcha->isImageVisible()}]
			 <div><img src="[{$oCaptcha->getImageUrl()}]" alt=""></div>
		   [{else}]
			 <div id="verificationCode" class="verification_code">[{$oCaptcha->getText()}]</div>
		 [{/if}]
	</div>
	<div class="ym-fbox-text">
	 	<label for="c_mac">[{ oxmultilang ident="CONTACT_VERIFICATIONCODE" }]&nbsp;<sup class="ym-required">*</sup></label>
	 	<input type="text" name="c_mac" id="c_mac" value=""/ required="required">
	</div>
	<div class="ym-fbox-button">
  		<input type="submit" class="ym-button" value="[{ oxmultilang ident="CONTACT_SEND" }]" id="contactSend" name="contactSend">
	</div>
  </form>
[{else}]
<div class="ym-form">
	<p>
	[{ oxmultilang ident="CONTACT_THANKYOU1" }] [{ $oxcmp_shop->oxshops__oxname->value }][{ oxmultilang ident="CONTACT_THANKYOU2" }]
	</p>
</div>
[{/if}]

[{ insert name="oxid_tracker" title=$template_title }]
[{include file="_footer.tpl"}]

[{ insert name="oxid_tracker" title=$template_title }]
[{include file="layout/footer.tpl"}]
