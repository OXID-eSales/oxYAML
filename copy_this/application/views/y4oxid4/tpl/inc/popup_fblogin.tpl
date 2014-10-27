[{*
#########################################################################
#	$Id: 99ccc9f986389d2a5b9d885b69be768d7ebe0afe $
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
<div id="popup" class="popup fbMsg">
    <strong>[{ oxmultilang ident="FACEBOOK_POPUP_HEADER" }]</strong>

    <div class="popupMsg">

        [{if $Errors.popup}]
            [{foreach from=$Errors.popup item=oEr }]
                <strong class="err">[{ $oEr->getOxMessage() }]</strong>
            [{/foreach}]
        [{/if}]

        [{ oxmultilang ident="FACEBOOK_POPUP_UPDATETEXT" }]
    </div>

    <form action="[{ $oViewConf->getCurrentHomeDir() }]index.php" method="post">
    <div>
        [{ $oViewConf->getHiddenSid() }]
        [{ $oViewConf->getNavFormParams() }]
        <input type="hidden" name="fnc" value="login_updateFbId">
        <input type="hidden" name="cl" value="[{ $oViewConf->getActiveClassName() }]">
        <input type="hidden" name="pgNr" value="[{$_login_pgnr-1}]">
        <input type="hidden" name="tpl" value="[{$_login_tpl}]">
        <input type="hidden" name="CustomError" value='popup'>
        <input type="hidden" name="fblogin" value="1">
        [{if $oView->getArticleId()}]
          <input type="hidden" name="aid" value="[{$oView->getArticleId()}]">
        [{/if}]
        [{if $oView->getProduct()}]
          [{assign var="product" value=$oView->getProduct() }]
          <input type="hidden" name="anid" value="[{ $product->oxarticles__oxnid->value }]">
        [{/if}]

         <table class="form" style="width: 1%">
            <tr>
              <td><label>[{ oxmultilang ident="INC_CMP_LOGIN_EMAIL" }]</td>
              <td><label>[{ oxmultilang ident="INC_CMP_LOGIN_PWD" }]</td>
            </tr>
            <tr>
              <td><input id="LoginEmail" type="text" name="lgn_usr" value="" size="25">&nbsp;&nbsp;</td>
              <td><input id="LoginPwd" type="password" name="lgn_pwd" value="" size="25">&nbsp;&nbsp;</td>
            </tr>
          </table>

          <div class="popupFooter">
            <span class="btn"><input id="Login" type="submit" class="btn" name="send" value="[{ oxmultilang ident="FACEBOOK_POPUP_UPDATEBTN" }]"></span>
            <span class="btn"><input id="Login" type="button" class="btn" name="cancel_send" value="[{ oxmultilang ident="FACEBOOK_POPUP_CANCELBTN" }]" onClick = "oxid.popup.hide();"></span>
          </div>
    </div>
    </form>
</div>

[{oxscript add="oxid.popup.showFbMsg();" }]

