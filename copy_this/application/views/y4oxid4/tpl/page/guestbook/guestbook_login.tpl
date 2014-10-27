[{*
#########################################################################
#	$Id: 8f6a15d4cb9a18ff58a92066cf9476f3d6d49e6c $
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

[{assign var="template_title" value="GUESTBOOK_LOGIN_LOGIN"|oxmultilangassign}]
[{include file="layout/header.tpl" title=$template_title location=$template_title}]

[{include file="inc/cmp_login.tpl"}]

[{ insert name="oxid_tracker" title=$template_title }]
[{include file="layout/footer.tpl"}]
