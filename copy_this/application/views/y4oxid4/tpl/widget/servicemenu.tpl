[{*
#########################################################################
#	$Id: 89575b05552e91ea3e23b654aad04ccb3e3dbb59 $
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
[{if !$oView->isConnectedWithFb()}]
<div class="box_login">
	<h6 class="ym-vlist">[{ oxmultilang ident="INC_RIGHTITEM_MYACCOUNT" }]</h6>
	<div class="body">
		<div class="ym-gbox">
		[{oxid_include_dynamic file="dyn/cmp_login_right.tpl" type="login" pgnr=$oView->getActPage() tpl=$oViewConf->getActTplName() additional_form_parameters="`$AdditionalFormParameters`"|cat:$oViewConf->getNavFormParams() }]
        [{oxid_include_dynamic file="dyn/cmp_login_links.tpl" type="login_links"}]
		</div>
	</div>
</div>

[{*    [{if $oViewConf->getShowFbConnect()}]
        [{if !$oxcmp_user || ($oxcmp_user && $oView->isConnectedWithFb()) }]
        <strong class="h2"><a id="test_RightSideNewsLetterHeader" rel="nofollow" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account"}]">[{ oxmultilang ident="INC_RIGHTITEM_FBCONNECT" }]</a></strong>
        <div class="box" id="loginboxFbConnect">
            [{include file="inc/facebook/fb_enable.tpl" source="dyn/cmp_fbconnect_right.tpl" ident="#loginboxFbConnect" }]
        </div>
    [{/if}]
*}] 
[{/if}]