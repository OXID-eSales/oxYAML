[{*
#########################################################################
#	$Id: bd5035c0b14f38595c58e857e350e631740e643a $
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
[{foreach from=$Errors.dyn_cmp_login_right item=oEr key=key }]
  <p class="ym-error">[{ $oEr->getOxMessage()}]</p>
[{/foreach}]
[{if !$oxcmp_user->oxuser__oxpassword->value}]
  <form name="rlogin" action="[{ $oViewConf->getSslSelfLink() }]" method="post" class="ym-form ym-full">
	[{ $oViewConf->getHiddenSid() }]
        [{$_login_additional_form_parameters}]
        <input type="hidden" name="fnc" value="login_noredirect">
        <input type="hidden" name="cl" value="account">
        <input type="hidden" name="pgNr" value="">
        <input type="hidden" name="tpl" value="">
        <input type="hidden" name="CustomError" value='dyn_cmp_login_right'>
        [{if $oView->getProduct()}]
          [{assign var="product" value=$oView->getProduct() }]
          <input type="hidden" name="anid" value="[{ $product->oxarticles__oxnid->value }]">
        [{/if}]
		<div class="ym-fbox-text">
        <label for="RightLogin_Email">[{ oxmultilang ident="INC_CMP_LOGIN_RIGHT_EMAIL" }]</label>
        	<input id="RightLogin_Email" type="text" name="lgn_usr" value="" class="txt">
		</div>
		<div class="ym-fbox-text">
        <label for="RightLogin_Pwd">[{ oxmultilang ident="INC_CMP_LOGIN_RIGHT_PWD" }]</label>
        <input id="RightLogin_Pwd" type="password" name="lgn_pwd" value="" class="txt">
		</div>
        [{if $oView->showRememberMe()}]
        <div class="ym-fbox-check">
        <input id="RightLogin_KeepLogggedIn" type="checkbox" name="lgn_cook" value="1" class="chk">
        <label for="RightLogin_KeepLogggedIn">    
            [{ oxmultilang ident="INC_CMP_LOGIN_RIGHT_KEEPLOGGEDIN" }]
        </label>
        </div>
        [{/if}]
        <div class="textc" >
		<input id="RightLogin_Login" type="submit" name="send" value="[{ oxmultilang ident="INC_CMP_LOGIN_RIGHT_LOGIN" }]" class="ym-button box_button_s">
		</div>
		<ul>
		<li>
			<small><a id="RightLogin_LostPwd" class="link" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=forgotpwd" params=$oViewConf->getNavUrlParams() }]" rel="nofollow">[{ oxmultilang ident="INC_CMP_LOGIN_RIGHT_FORGOTPWD" }]</a></small>
		</li>
		</ul>
    </form>
[{else}]

      <div id="LoginUser">
        [{ oxmultilang ident="INC_CMP_LOGIN_RIGHT_LOGGEDINAS" }]<br>
        [{assign var="fullname" value=$oxcmp_user->oxuser__oxfname->value|cat:" "|cat:$oxcmp_user->oxuser__oxlname->value }]
        <b>&quot;[{ $oxcmp_user->oxuser__oxusername->value|oxtruncate:25:"...":true }]&quot;</b> <br>
        ([{ $fullname|oxtruncate:25:"...":true }])
      </div>

      <form action="[{ $oViewConf->getSelfActionLink() }]" method="post">
        <div class="form">
          [{ $oViewConf->getHiddenSid() }]
          [{$_login_additional_form_parameters}]
          <input type="hidden" name="fnc" value="logout">
          <input type="hidden" name="redirect" value="1">
          <input type="hidden" name="cl" value="account">
          <input type="hidden" name="lang" value="[{ $oViewConf->getActLanguageId() }]">
          <input type="hidden" name="pgNr" value="">
          <input type="hidden" name="tpl" value="">
          [{if $oView->getProduct()}]
              [{assign var="product" value=$oView->getProduct() }]
              <input type="hidden" name="anid" value="[{ $product->oxarticles__oxnid->value }]">
          [{/if}]
          [{if $oViewConf->getShowListmania() && $oView->getActiveRecommList()}]
              [{assign var="actvrecommlist" value=$oView->getActiveRecommList() }]
            <input type="hidden" name="recommid" value="[{ $actvrecommlist->oxrecommlists__oxid->value }]">
          [{/if}]

        <div class="textc">
        	<input id="RightLogout" type="submit" name="send" value="[{ oxmultilang ident="INC_CMP_LOGIN_RIGHT_LOGOUT" }]" class="ym-button box_button_s">
        </div>
        </div>
      </form>
[{/if }]
