[{*
#########################################################################
#	$Id: c056c46ce89f0c24a32f2795b0d332671d31e9f7 $
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

[{assign var="template_title" value="REGISTER_SUCCESS_MYACCOUNT"|oxmultilangassign}]
[{if $oView->isActive('PsLogin') }]
    [{include file="layout/header_plain.tpl" title=$template_title location=$template_title cssclass="body"}]
    <div class="psLoginPlainBox">
    [{include file="inc/error.tpl" Errorlist=$Errors.default}]
[{else}]
    [{include file="layout/header.tpl" title=$template_title location=$template_title}]
[{/if}]

<h1 class="boxhead">[{ oxmultilang ident="REGISTER_SUCCESS_WELCOME" }]</h1>

  [{if $oView->getRegistrationStatus() == 1}]
  <div class="ym-form">
  	<p>
    [{ oxmultilang ident="REGISTER_SUCCESS_EMAILCONFIRMATION" }]
    </p>
  </div>
  [{elseif $oView->getRegistrationStatus() == 2}]
  <div class="ym-form">
  	<p>
    [{ oxmultilang ident="REGISTER_SUCCESS_ACTIVATIONEMAIL" }]
  </p>
  </div>
  [{/if}]

  [{if $oView->getRegistrationError() == 4}]
    <div class="box error">
      [{ oxmultilang ident="REGISTER_SUCCESS_NOTABLETOSENDEMAIL" }]
    </div>
  [{/if}]



    <form action="[{ $oViewConf->getSelfActionLink() }]" name="order" method="post">
          [{ $oViewConf->getHiddenSid() }]
          <input type="hidden" name="cl" value="start">
          <div class="textr">
              <input id="BackToShop" class="ym-button" type="submit" value="[{ oxmultilang ident="ACCOUNT_LOGIN_BACKTOSHOP" }]">
          </div>
    </form>
[{if $oView->isActive('PsLogin') }]
    </div>
    [{include file="layout/footer_plain.tpl" }]
[{else}]
    [{ insert name="oxid_tracker" title=$template_title }]
    [{include file="layout/footer.tpl"}]
[{/if}]