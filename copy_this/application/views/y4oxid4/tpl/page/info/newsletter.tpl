[{*
#########################################################################
#	$Id: 310dffa449cb48ac4115444c7f6506f092e47e5f $
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

[{assign var="template_title" value="NEWSLETTER_NEWSLWTTERTITLE"|oxmultilangassign}]
[{include file="layout/header.tpl" title=$template_title location=$template_title}]

[{if $oView->getNewsletterStatus() == 4 || !$oView->getNewsletterStatus()}]
<h1 id="stayInformedHeader" class="boxhead">[{ oxmultilang ident="NEWSLETTER_STAYINFORMED" }]</h1>
<div class="ym-form ym-columnar linearize-form">
	<div class="form_txt">
  [{oxifcontent ident="oxnewstlerinfo" object="oCont"}]
      [{ $oCont->oxcontents__oxcontent->value }]
  [{/oxifcontent}]
  </div>
  [{assign var="aRegParams" value=$oView->getRegParams()}]
    <form action="[{ $oViewConf->getSslSelfLink() }]" method="post">
      <div>
          [{ $oViewConf->getHiddenSid() }]
          <input type="hidden" name="fnc" value="send">
          <input type="hidden" name="cl" value="newsletter">
          <input type="hidden" name="editval[oxuser__oxcountryid]" value="[{$oView->getHomeCountryId()}]">
      </div>
      <div class="ym-fbox-select">
      <label>[{ oxmultilang ident="NEWSLETTER_TITLE" }]</label>
      [{include file="inc/salutation.tpl" name="editval[oxuser__oxsal]" value=$aRegParams.oxuser__oxsal class="newsletter_text"}]
      </div>
      <div class="ym-fbox-text">
      <label>[{ oxmultilang ident="NEWSLETTER_FIRSTNAME" }]</label>
      <input id="newsletterFname" type="text" name="editval[oxuser__oxfname]" size=40 maxlength=40 value="[{if $aRegParams.oxuser__oxfname}][{$aRegParams.oxuser__oxfname}][{/if}]">
      </div>
      <div class="ym-fbox-text">
      <label>[{ oxmultilang ident="NEWSLETTER_LASTNAME" }]</label>
      <input id="newsletterLname" type="text" name="editval[oxuser__oxlname]" size=40 maxlength=40 value="[{if $aRegParams.oxuser__oxlname}][{$aRegParams.oxuser__oxlname}][{/if}]">
      </div>
      <div class="ym-fbox-text">
      <label>[{ oxmultilang ident="NEWSLETTER_EMAIL" }]<sup class="ym-required">*</sup></label>
      <input id="newsletterUserName" type="text" name="editval[oxuser__oxusername]" size=40 maxlength=40 value="[{if $aRegParams.oxuser__oxusername}][{$aRegParams.oxuser__oxusername}][{/if}]">&nbsp;
      </div>
          <div class="ym-fbox-check">
          <input id="newsletterSubscribeOn" type="radio" name="subscribeStatus" value="1" checked><label for="test_newsletterSubscribeOn">&nbsp;[{ oxmultilang ident="NEWSLETTER_SUBSCRIBE" }]</label>
          </div>
          <div class="ym-fbox-check">
          <input id="newsletterSubscribeOff" type="radio" name="subscribeStatus" value="0"><label for="test_newsletterSubscribeOff">&nbsp;[{ oxmultilang ident="NEWSLETTER_UNSUBSCRIBE" }]</label>
          </div>   
          <div class="ym-fbox-text ym-error">
          <label></label>
          <span class="ym-message">[{ oxmultilang ident="NEWSLETTER_COMPLETEMARKEDFIELEDS" }]</span>
          </div>
          <div class="ym-fbox-button">
          <input id="newsLetterSubmit" class="btn" type="submit" value="[{ oxmultilang ident="NEWSLETTER_SUBSCRIBE" }]">
          </div>
    </form>
</div>
[{elseif $oView->getNewsletterStatus() == 1}]
  <h1 id="stayInformedHeader" class="boxhead">[{ oxmultilang ident="NEWSLETTER_STAYINFORMED" }]</h1>
  <div class="ym-form">
  <h6 class="boxhead">[{ oxmultilang ident="NEWSLETTER_THANKYOU" }]</h6>
  	<div class="ym-fbox-text">
    	[{ oxmultilang ident="NEWSLETTER_YOUHAVEBEENSENTCONFIRMATION" }]
  	</div>
  </div>
[{elseif $oView->getNewsletterStatus() == 2}]
  <h1 id="stayInformedHeader" class="boxhead">[{ oxmultilang ident="NEWSLETTER_STAYINFORMED" }]</h1>
  <div class="ym-form">
  <h6 class="boxhead">[{ oxmultilang ident="NEWSLETTER_CONGRATULATIONS" }]</h6>
  	<div class="ym-fbox-text">
    	[{ oxmultilang ident="NEWSLETTER_SUBSCRIPTIONACTIVATED" }]
    </div>
  </div>
[{elseif $oView->getNewsletterStatus() == 3}]
  <h1 id="stayInformedHeader" class="boxhead">[{ oxmultilang ident="NEWSLETTER_STAYINFORMED" }]</h1>
  <div class="ym-form">
  <h6 class="boxhead">[{ oxmultilang ident="NEWSLETTER_SECCESS" }]</h6>
  	<div class="ym-fbox-text">
    	[{ oxmultilang ident="NEWSLETTER_SUBSCRIPTIONCANCELED" }]
  	</div>
  </div>
[{/if}]

[{ insert name="oxid_tracker" title=$template_title }]
[{include file="layout/footer.tpl" }]
