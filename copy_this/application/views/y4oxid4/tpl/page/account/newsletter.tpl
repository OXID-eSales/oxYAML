[{*
#########################################################################
#	$Id: 1a42f5ccfed0f9e82ad9497b2b7371bf9fa9fdb3 $
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

[{assign var="template_title" value="ACCOUNT_NEWSLETTER_TITLE"|oxmultilangassign }]
[{include file="layout/header.tpl" title=$template_title location="ACCOUNT_NEWSLETTER_LOCATION"|oxmultilangassign|cat:$template_title}]

[{include file="inc/account_header.tpl" active_link=2 }]<br>

<div class="ym-form ym-columnar linearize-form">
<h6>[{ oxmultilang ident="ACCOUNT_NEWSLETTER_SETTINGS" }]</h6>
    [{if $oView->getSubscriptionStatus() != 0 }]
        [{if $oView->getSubscriptionStatus() == 1 }]
          <p>[{ oxmultilang ident="ACCOUNT_NEWSLETTER_SUBSCRIPTIONSUCCESS" }]</p>
        [{else }]
          <p>[{ oxmultilang ident="ACCOUNT_NEWSLETTER_SUBSCRIPTIONREJECT" }]</p>
        [{/if }]
    [{else }]
        <form action="[{ $oViewConf->getSelfActionLink() }]" name="newsletter" method="post">
          <div>
              [{ $oViewConf->getHiddenSid() }]
              [{ $oViewConf->getNavFormParams() }]
              <input type="hidden" name="fnc" value="subscribe">
              <input type="hidden" name="cl" value="account_newsletter">
              <div class="ym-fbox-select">
              <label>[{ oxmultilang ident="ACCOUNT_NEWSLETTER_SUBSCRIPTION" }]&nbsp;&nbsp;</label>
              <select name="status">
                <option value="1"   [{if $oView->isNewsletter() }]selected[{/if }] >[{ oxmultilang ident="ACCOUNT_NEWSLETTER_YES" }]</option>
                <option value="0"   [{if !$oView->isNewsletter() }]selected[{/if }] >[{ oxmultilang ident="ACCOUNT_NEWSLETTER_NO" }]</option>
              </select>
              </div>
              <p class="ym-message">[{ oxmultilang ident="ACCOUNT_NEWSLETTER_MESSAGE" }]</p>
              
              <div class="ym-fbox-button">
                <input id="newsletterSettingsSave" type="submit" value="[{ oxmultilang ident="ACCOUNT_NEWSLETTER_SAVE" }]" class="btn">
              </div>
          </div>
        </form>
    [{/if }]
</div>


    <form action="[{ $oViewConf->getSelfActionLink() }]" name="order" method="post">
      
          [{ $oViewConf->getHiddenSid() }]
          <input type="hidden" name="cl" value="start">
          <div class="textr">
              <input class="ym-button"id="BackToShop" type="submit" value="[{ oxmultilang ident="ACCOUNT_NEWSLETTER_BACKTOSHOP" }]">
          </div>
      
    </form>



[{insert name="oxid_tracker" title=$template_title }]
[{include file="layout/footer.tpl" }]
