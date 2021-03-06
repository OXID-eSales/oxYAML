[{*
#########################################################################
#	$Id: 65c4557a2cab500da3fa1abd1650f02a6cfa1af3 $
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

[{if $oViewConf->getFbAppId()}]
    <div id="fb-root"></div>
    [{oxscript include="libs/jquery.min.js"}]
    [{oxscript include="libs/jquery-ui.min.js"}]
    [{oxscript include="oxmodalpopup.js"}]
    [{oxscript include="oxfacebook.js"}]
    [{if $oView->isActive('FacebookConfirm') && !$oView->isFbWidgetVisible()}]
        <div id="fbinfo" class="fbInfoPopup popupBox corners FXgradGreyLight glowShadow">
            <img src="[{$oViewConf->getImageUrl('x.png')}]" alt="" class="closePop">
            <div class="wrappingIntro clear">
                <h3>[{oxmultilang ident="FACEBOOK_ENABLE_INFOTEXTHEADER"}]</h3>
                [{oxmultilang ident="FACEBOOK_ENABLE_INFOTEXT"}]
            </div>
        </div>
        [{capture name="facebookInit"}]
            [{oxscript include="libs/jquery.cookie.js"}]
            [{assign var="sFbAppId" value=$oViewConf->getFbAppId()}]
            [{assign var="sLocale" value="FACEBOOK_LOCALE"|oxmultilangassign}]
            [{assign var="sLoginUrl" value=$oView->getLink()|oxaddparams:"fblogin=1"}]
            [{assign var="sLogoutUrl" value=$oViewConf->getLogoutLink()}]
            [{oxscript add="$('.oxfbenable').click( function() { oxFacebook.showFbWidgets('`$sFbAppId`','`$sLocale`','`$sLoginUrl`','`$sLogoutUrl`'); return false;});"}]
            [{oxscript add="$('.oxfbinfo').oxModalPopup({ target: '#fbinfo',width: '490px'});"}]
        [{/capture}]
    [{else}]
        [{capture name="facebookInit"}]
            oxFacebook.fbInit("[{$oViewConf->getFbAppId()}]", "[{oxmultilang ident="FACEBOOK_LOCALE"}]", "[{$oView->getLink()|oxaddparams:"fblogin=1"}]", "[{$oViewConf->getLogoutLink()}]");
        [{/capture}]
    [{/if}]
    [{oxscript add="`$smarty.capture.facebookInit`"}]
[{/if}]
