[{*
#########################################################################
#	$Id: c0efa9af421f73bbd3b508fb623d7564649d1690 $
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

[{assign var="template_title" value="ACCOUNT_MAIN_TITLE"|oxmultilangassign }]
[{include file="layout/header.tpl" title=$template_title location=$template_title}]

[{include file="inc/account_header.tpl" }]<br>
 <form action="[{ $oViewConf->getSelfActionLink() }]" name="order" method="post">
          [{ $oViewConf->getHiddenSid() }]
          <input type="hidden" name="cl" value="start">
          <div class="textr">
              <input class="ym-button" id="BackToShop" type="submit" value="[{ oxmultilang ident="ACCOUNT_LOGIN_BACKTOSHOP" }]">
          </div>
    </form>
[{insert name="oxid_tracker" title=$template_title }]
[{include file="layout/footer.tpl" }]