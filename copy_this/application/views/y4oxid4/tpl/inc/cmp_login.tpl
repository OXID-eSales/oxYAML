[{*
#########################################################################
#	$Id: 37ddd6efd63e9ddba7a025ffac0d006211af7503 $
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

<h1 id="LoginHeader" class="boxhead">[{ oxmultilang ident="INC_CMP_LOGIN_LOGIN2" }]</h1>
<div class="ym-form ym-columnar linearize-form" id="selID_LoginBox">
  <p>[{ oxmultilang ident="INC_CMP_LOGIN_ALREADYCUSTOMER" }]</p>
  
  <form name="login" action="[{ $oViewConf->getSslSelfLink() }]" method="post">
    
        [{ $oViewConf->getHiddenSid() }]
        [{ $oViewConf->getNavFormParams() }]
        <input type="hidden" name="fnc" value="login_noredirect">
        <input type="hidden" name="cl" value="[{ $oViewConf->getActiveClassName() }]">
        <input type="hidden" name="tpl" value="[{$oViewConf->getActTplName()}]">
        [{if $oView->getArticleId()}]
          <input type="hidden" name="aid" value="[{$oView->getArticleId()}]">
        [{/if}]
        [{if $oView->getProduct()}]
          [{assign var="product" value=$oView->getProduct() }]
          <input type="hidden" name="anid" value="[{ $product->oxarticles__oxnid->value }]">
        [{/if}]
         <div class="ym-fbox-text">
         <label>[{ oxmultilang ident="INC_CMP_LOGIN_EMAIL" }]</label>
         <input id="LoginEmail" type="text" name="lgn_usr" value="" size="25">
         </div>
         <div class="ym-fbox-text">
         <label>[{ oxmultilang ident="INC_CMP_LOGIN_PWD" }]</label>
         <input id="LoginPwd" type="password" name="lgn_pwd" value="" size="25">
         </div>
         [{if $oView->showRememberMe()}]
         <div class="ym-fbox-check">
         <input id="LoginKeepLoggedIn" class="chbox" type="checkbox" name="lgn_cook" value="1"> &nbsp<label>[{ oxmultilang ident="INC_CMP_LOGIN_KEEPLOGGEDIN" }]</label>
         </div>
         [{else}]
         &nbsp;
         [{/if}]
         <div class="ym-fbox-text ym-error">
         <label></label>
         <span class="ym-message">
         <a id="LoginRegister" href="[{ oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=register" }]" class="link" rel="nofollow">[{ oxmultilang ident="INC_CMP_LOGIN_OPENACCOUNT" }]</a><br />
         <a id="LoginLostPwd" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=forgotpwd" }]" class="link" rel="nofollow">[{ oxmultilang ident="INC_CMP_LOGIN_FORGOTPWD" }]</a>
         </span>
         </div>
         <div class="ym-fbox-button">
			<input id="Login" type="submit" class="btn" name="send" value="[{ oxmultilang ident="INC_CMP_LOGIN_LOGIN" }]">
   		</div>
    
  </form>
</div>
