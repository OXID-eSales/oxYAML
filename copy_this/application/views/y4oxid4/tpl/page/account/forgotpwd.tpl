[{*
#########################################################################
#	$Id: 10368589e31efad3f32145c8c14c8e0725a175b4 $
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

[{if $oView->showUpdateScreen() }]
  [{assign var="template_title" value="FORGOTPWD_UPDATETITLE"|oxmultilangassign}]
[{elseif $oView->updateSuccess() }]
  [{assign var="template_title" value="FORGOTPWD_UPDATESUCCESSTITLE"|oxmultilangassign}]
[{else}]
  [{assign var="template_title" value="FORGOTPWD_TITLE"|oxmultilangassign}]
[{/if}]

[{if $oView->isActive('PsLogin') }]
    [{include file="layout/header_plain.tpl" title=$template_title location=$template_title cssclass="body"}]
    <div class="psLoginPlainBox">
    [{include file="inc/error.tpl" Errorlist=$Errors.default}]
[{else}]
    [{include file="layout/header.tpl" title=$template_title location=$template_title}]
[{/if}]

[{if $oView->isExpiredLink() }]

  <h1>[{$template_title}]</h1>
  <div class="box error">
    [{ oxmultilang ident="FORGOTPWD_ERRLINKEXPIRED" }]
  </div>

[{elseif $oView->showUpdateScreen() }]

  <h1>[{$template_title}]</h1>
  <div class="ym-form yum-full">
  	<p>
    [{ oxmultilang ident="FORGOTPWD_ENTERNEWPASSWORD" }]
    </p>
    <form action="[{ $oViewConf->getSelfActionLink() }]" name="order" method="post">
      <div>
          [{ $oViewConf->getHiddenSid() }]
          [{ $oViewConf->getNavFormParams() }]
          <input type="hidden" name="fnc" value="updatePassword">
          <input type="hidden" name="uid" value="[{ $oView->getUpdateId() }]">
          <input type="hidden" name="cl" value="forgotpwd">
      </div>
      <div class="ym-fbox-text">
      	<label>[{ oxmultilang ident="FORGOTPWD_NEWPASSWORD" }]</label>
      	<input type="password" name="password_new" size="45" >
      </div>
      <div class="ym-fbox-text">
      <label>[{ oxmultilang ident="FORGOTPWD_CONFIRMPASSWORD" }]</label>
      <input type="password" name="password_new_confirm" size="45" >
      </div>
      <div class="ym-fbox-button">
      <input type="submit" name="save" value="[{ oxmultilang ident="FORGOTPWD_UPDATEPASSWORD" }]" class="ym-button">
      </div>
    </form>
  </div>

[{elseif $oView->updateSuccess() }]

  <h1>[{$template_title}]</h1>
  <div class="box success">
    [{ oxmultilang ident="FORGOTPWD_UPDATE_SUCCESS" }]
  </div>

  
    <form action="[{ $oViewConf->getSelfActionLink() }]" name="order" method="post">
      
        [{ $oViewConf->getHiddenSid() }]
        <input type="hidden" name="cl" value="start">
        <div class="textr">
          <input id="BackToShop" type="submit" value="[{ oxmultilang ident="FORGOTPWD_BACKTOSHOP" }]">
        </div>
      
    </form>
  
[{else}]

  <h1>[{$template_title}]</h1>
  [{ if $oView->getForgotEmail()}]
    <div class="box warning">
    <p>
      [{ oxmultilang ident="FORGOTPWD_PWDWASSEND" }] [{$oView->getForgotEmail()}]
    </p>
    </div>
    
      <form action="[{ $oViewConf->getSelfActionLink() }]" name="order" method="post">
      
          [{ $oViewConf->getHiddenSid() }]
          <input type="hidden" name="cl" value="start">
          <div class="textr">
            <input class="ym-button" id="BackToShop" type="submit" value="[{ oxmultilang ident="FORGOTPWD_BACKTOSHOP" }]">
          </div>
      </form>
  [{else}]
    <div class="ym-form ym-full">
    	<p>[{ oxmultilang ident="FORGOTPWD_FORGOTPWD" }]</p>
      <p>[{ oxmultilang ident="FORGOTPWD_WEWILLSENDITTOYOU" }]</p>
      
      <form action="[{ $oViewConf->getSelfActionLink() }]" name="order" method="post">
        <div>
          [{ $oViewConf->getHiddenSid() }]
          [{ $oViewConf->getNavFormParams() }]
          <input type="hidden" name="fnc" value="forgotpassword">
          <input type="hidden" name="cl" value="forgotpwd">
        </div>
        <div class="ym-fbox-text"><label>[{ oxmultilang ident="FORGOTPWD_YOUREMAIL" }]</label>
         <input id="lgn_usr" type="text" name="lgn_usr" value="[{$oView->getActiveUsername()}]" size="45" >
         </div>
         <div class="textc"><input type="submit" name="save" value="[{ oxmultilang ident="FORGOTPWD_REQUESTPWD" }]" class="ym-button"></div>
      </form>
      <p>
      [{ oxmultilang ident="FORGOTPWD_AFTERCLICK" }]
      </p>
      <p>
      [{ oxcontent ident="oxforgotpwd" }]
      </p>
    </div>
  [{ /if}]

[{/if}]

[{if $oView->isActive('PsLogin') }]
    </div>
    [{include file="layout/footer_plain.tpl" }]
[{else}]
    [{ insert name="oxid_tracker" title=$template_title }]
    [{include file="layout/footer.tpl" }]
[{/if}]