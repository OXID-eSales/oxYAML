[{*
#########################################################################
#	$Id: a6fb4ef90c1f2ff9fb0f296c47f475a7014800bd $
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

[{assign var="template_title" value="ACCOUNT_PASSWORD_TITLE"|oxmultilangassign }]
[{include file="layout/header.tpl" title=$template_title location="ACCOUNT_PASSWORD_LOCATION"|oxmultilangassign|cat:$template_title}]

[{include file="inc/account_header.tpl" active_link=1 }]<br>
<div class="ym-form ym-columnar linearize-form">
<h6>[{ oxmultilang ident="ACCOUNT_PASSWORD_PERSONALSETTINGS" }]</h6>
    [{if $oView->isPasswordChanged() }]
     <p>
      [{ oxmultilang ident="ACCOUNT_PASSWORD_PASSWORDCHANGED" }]
     </p>
    [{else}]
      <form action="[{ $oViewConf->getSelfActionLink() }]" name="changepassword" method="post">
        <div class="account">
            [{ $oViewConf->getHiddenSid() }]
            [{ $oViewConf->getNavFormParams() }]
            <input type="hidden" name="fnc" value="changePassword">
            <input type="hidden" name="cl" value="account_password">
            <input type="hidden" name="CustomError" value='user'>
            <p>
            <strong>[{ oxmultilang ident="ACCOUNT_PASSWORD_TOCHANGEPASSWORD" }]</strong>
            [{include file="inc/error.tpl" Errorlist=$Errors.user errdisplay="inbox"}]<br />
             <small><span class="note">[{ oxmultilang ident="ACCOUNT_PASSWORD_NOTE" }]</span><span class="def_color_1">[{ oxmultilang ident="ACCOUNT_PASSWORD_PASSWORDMINLENGTH" }]</span></small>
            </p>
            <div class="ym-fbox-text">
            <label>[{ oxmultilang ident="ACCOUNT_PASSWORD_OLDPASSWORD" }]</label>
            <input type="password" name="password_old">
            </div>
            <div class="ym-fbox-text">
            <label>[{ oxmultilang ident="ACCOUNT_PASSWORD_NEWPASSWORD" }]</label>
            <input type="password" name="password_new">
            </div>
            <div class="ym-fbox-text">
            <label>[{ oxmultilang ident="ACCOUNT_PASSWORD_CONFIRMPASSWORD" }]&nbsp;&nbsp;&nbsp;</label>
            <input type="password" name="password_new_confirm">
            </div>
            <div class="ym-fbox-button">
               <span class="btn"><input id="savePass" type="submit" value="[{ oxmultilang ident="ACCOUNT_PASSWORD_SAVE" }]" class="btn"></span>
             </div>
        </div>
       </form>
    [{/if }]
</div>


    <form action="[{ $oViewConf->getSelfActionLink() }]" name="order" method="post">
      [{ $oViewConf->getHiddenSid() }]
      	<input type="hidden" name="cl" value="start">
        <div class="textr">
        	<input class="ym-button" id="BackToShop" type="submit" value="[{ oxmultilang ident="ACCOUNT_PASSWORD_BACKTOSHOP" }]">
        </div>
    </form>


[{insert name="oxid_tracker" title=$template_title }]
[{include file="layout/footer.tpl" }]
