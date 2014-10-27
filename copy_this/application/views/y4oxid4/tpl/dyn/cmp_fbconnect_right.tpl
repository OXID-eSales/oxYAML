[{*
#########################################################################
#	$Id: d8b6e991162ec6157afbe07f679368d5d578e379 $
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
[{if $oView->isConnectedWithFb() }]
    <div id="loggedFbUserBox">
        <div style="margin-top: 5px;">[{ oxmultilang ident="INC_CMP_FBCONNECT_YOUARELOGGEDINAS" }]:</div>
        <div style="margin: 10px; 0">
            <fb:profile-pic uid="[{$oView->getFbUserId()}]" linked="true" width="30" height="30" size="square" facebook-logo="true"></fb:profile-pic> <fb:name uid="[{$oView->getFbUserId()}]" useyou="false"></fb:name>
        </div>
        <hr>
    </div>
  [{/if}]
  <div align="center" style="margin: 10px 0 5px 0;">
      <fb:login-button size="medium" autologoutlink="true" length="short">[{if $oView->isConnectedWithFb() }][{ oxmultilang ident="INC_CMP_FBCONNECT_LOGOUTBTNTEXT" }][{else}][{ oxmultilang ident="INC_CMP_FBCONNECT_LOGINBTNTEXT" }][{/if}]</fb:login-button>
  </div>
