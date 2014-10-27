[{*
#########################################################################
#	$Id: 1cbe43388360ee170e76dcab2949880ffe198f74 $
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

[{assign var="template_title" value="ACCOUNT_LOGIN_LOGIN"|oxmultilangassign }]
[{include file="layout/header.tpl" title=$template_title location=$template_title}]

[{include file="inc/cmp_login.tpl" }]


    <form action="[{ $oViewConf->getSelfActionLink() }]" name="order" method="post">
      
          [{ $oViewConf->getHiddenSid() }]
          [{ $oViewConf->getNavFormParams() }]
          <input type="hidden" name="cl" value="start">
          <div class="textr">
              <input id="BackToShop" class="ym-button" type="submit" value="[{ oxmultilang ident="ACCOUNT_LOGIN_BACKTOSHOP" }]">
          </div>
    </form>
[{insert name="oxid_tracker" title=$template_title }]
[{include file="layout/footer.tpl" }]