[{*
#########################################################################
#	$Id: 0a1ab0b800475f56e4e5355c0688099da073f969 $
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
</div>
[{if $popup}][{include file=$popup}][{/if}]
[{oxid_include_dynamic file="dyn/newbasketitem_popup.tpl"}]

[{*FACEBOOKMODUL VON OXID WIRD NICHT GENUTZT*}]
[{*if $oView->showFbConnectToAccountMsg()}]
[{ insert name="oxid_fblogin"}]
[{/if*}]

[{oxid_include_dynamic file="dyn/popup_scbasketexcl.tpl"}]
[{oxscript include="oxid.js"}]

[{oxscript include="javascript/libs/jquery.min.js" priority=1}]
[{oxscript include="javascript/libs/cookie/jquery.cookie.js" priority=1}]
[{oxscript include="javascript/libs/jquery-ui.min.js" priority=1}]

[{oxscript include="css/yaml/add-ons/syncheight/jquery.syncheight.js"}]
[{oxscript include="javascript/custom.js"}]
[{oxscript include="javascript/superfish/hoverIntent.js"}]
[{oxscript include="javascript/superfish/superfish.js"}]
[{oxscript include="javascript/superfish/menue.js"}]
[{oxscript include='css/yaml/core/js/yaml-focusfix.js'}]
[{oxscript include="javascript/jquery.socialshareprivacy.min.js"}]
[{ include file="widget/socialize.tpl" }]

[{if $oView->getClassName()=='start' || $oView->getClassName()=='details'}]
[{oxscript include="css/yaml/add-ons/accessible-tabs/jquery.tabs.js"}]
[{oxscript include='javascript/tabs.js'}]
[{/if}]

[{if $oView->getClassName()=='start'}]
[{oxscript include='javascript/nivo-slider/jquery.nivo.slider.pack.js'}]
[{ include file="widget/nivo_js.tpl" }]
[{/if}]

[{if $oView->getClassName()=='details'}]
[{oxscript include="javascript/jquery.jqzoom-core.js"}]
[{ include file="widget/jqzoom_js.tpl" }]
 [{*oxscript include="js/libs/cloudzoom.js" priority=10}]
 [{oxscript include="javascript/widgets/oxmodalpopup.js" priority=10 }]
 [{oxscript include="javascript/widgets/oxarticleactionlinksselect.js" priority=10 }]
 [{oxscript include="javascript/widgets/oxajax.js" priority=10 }]
 [{oxscript include="javascript/widgets/oxarticlevariant.js" priority=10 }]
 [{oxscript include="javascript/widgets/oxamountpriceselect.js" priority=10 *}]
[{/if}]



[{*FACEBOOKMODUL VON OXID WIRD NICHT GENUTZT*}]
[{* include file="inc/facebook/fb_init.tpl" *}]

[{oxscript}][{oxid_include_dynamic file="dyn/oxscript.tpl" }]
<!--[if lt IE 7]><script type="text/javascript">oxid.popup.addShim();</script><![endif]-->
[{*DEBUG AKTUELLE VIEW IM FOOTER ANZEIGEN*}]
[{*$oView->getClassName()*}]
</body>
</html>
