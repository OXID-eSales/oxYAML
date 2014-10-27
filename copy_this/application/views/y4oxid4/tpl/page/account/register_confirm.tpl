[{*
#########################################################################
#	$Id: e94ad9b0b90af55632facbe1859d60d502ff9ffb $
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
[{include file="layout/header.tpl" title=$template_title location=$template_title}]

<h1 class="boxhead">[{ oxmultilang ident="REGISTER_SUCCESS_WELCOME" }]</h1>
<div class="ym-form">
<p>
  [{ oxmultilang ident="REGISTER_CONFIRMED" }]
  </p>
</div>


    <form action="[{ $oViewConf->getSelfActionLink() }]" name="order" method="post">
      
          [{ $oViewConf->getHiddenSid() }]
          <input type="hidden" name="cl" value="start">
          <div class="textr">
              <input id="BackToShop" class="ym-form" type="submit" value="[{ oxmultilang ident="ACCOUNT_LOGIN_BACKTOSHOP" }]">
          </div>
     
    </form>
[{ insert name="oxid_tracker" title=$template_title }]
[{include file="layout/footer.tpl"}]
