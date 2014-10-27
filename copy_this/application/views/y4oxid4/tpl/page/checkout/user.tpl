[{*
#########################################################################
#	$Id: a2a541362082893535ff2230bfed13feed6aa3e1 $
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

[{assign var="template_title" value="USER_LOGINTITLE"|oxmultilangassign}]
[{include file="layout/header.tpl" title=$template_title location=$template_title}]

<!-- ordering steps -->
[{include file="page/checkout/inc/steps.tpl" active=2}]
[{assign var="_blshownoregopt" value=$oView->getShowNoRegOption()}]

  [{ if !$oxcmp_user && !$oView->getLoginOption() && !$oView->isConnectedWithFb() }]
  	<div class="ym-grid linearize-level-1 cart_login">
    [{if $_blshownoregopt }]
      <div class="ym-g33 ym-gl" style="position: relative">
      	
      		<div class="ym-form cust_new  boxListing">
          <h6>[{ oxmultilang ident="USER_OPTION1" }]<br />[{ oxmultilang ident="USER_ORDERWITHOUTREGISTER1" }]</h6>
          <div class="useroptbox">
              <div class="ym-message">
              <p>[{ oxmultilang ident="USER_ORDERWITHOUTREGISTER2" }]</p>
              [{if $oView->isDownloadableProductWarning() }]
                <p class="errorMsg">[{ oxmultilang ident="MESSAGE_DOWNLOADABLE_PRODUCT" }]</p>
              [{/if}]</div>
              
              <form action="[{ $oViewConf->getSslSelfLink() }]" method="post">
                <div class="buttons ym-grid">
                <div class="ym-fbox-button" style="position:absolute; bottom:2px; max-width: 270px; width: 100%">
                    
                    [{ $oViewConf->getHiddenSid() }]
                    [{ $oViewConf->getNavFormParams() }]
                    <input type="hidden" name="cl" value="user">
                    <input type="hidden" name="fnc" value="">
                    <input type="hidden" name="option" value="1">
                    <input id="UsrOpt1" type="submit" name="send" value="[{ oxmultilang ident="USER_NEXT" }]" class="btn">
                   
                </div></div>
              </form>
          	</div>
          	</div>
          
      </div>
    [{/if}]
      <div class="ym-g33 ym-gl" style="position: relative">
      	<div class="ym-form linearize-form ym-full cust_new  boxListing">
          <h6>[{if !$_blshownoregopt }][{ oxmultilang ident="USER_OPTION1" }][{else}][{ oxmultilang ident="USER_OPTION2" }][{/if}]<br />[{ oxmultilang ident="USER_ALREADYCUSTOMER" }]</h6>
          <div>
              <div class="ym-message">
              <p>[{ oxmultilang ident="USER_PLEASELOGIN" }]</p>
              [{foreach from=$Errors.user item=oEr key=key }]
                  <div class="ym-error">
                  	<div class="ym-message"><p>[{ $oEr->getOxMessage()}]</p></div></div>
              [{/foreach}]
              </div>
              <form action="[{ $oViewConf->getSslSelfLink() }]" method="post">
               
                    [{ $oViewConf->getHiddenSid() }]
                    [{ $oViewConf->getNavFormParams() }]
                    <input type="hidden" name="fnc" value="login_noredirect">
                    <input type="hidden" name="cl" value="user">
                    <input type="hidden" name="option" value="2">
                    <input type="hidden" name="lgn_cook" value="0">
                    <input type="hidden" name="CustomError" value='user'>
                    <div class="ym-fbox-text">
                    <label>[{ oxmultilang ident="USER_EMAIL" }]</label>
                    <input id="UsrOpt2_usr" type="text" name="lgn_usr" value="" >
                    </div>
                    <div class="ym-fbox-text">
                    <label>[{ oxmultilang ident="USER_PWD" }]</label>
                    <input id="UsrOpt2_pwd" type="password" name="lgn_pwd" value="">
                    </div>
                    <div class="buttons ym-grid">
                    	<div class="ym-fbox-button" style="position:absolute; bottom:2px; max-width: 270px; width: 100%">
                    		<input id="UsrOpt2" type="submit" name="send" value="[{ oxmultilang ident="USER_LOGIN" }]" class="btn"><br><br>
                    		<a id="UsrOpt2_forgotPwd" rel="nofollow" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=forgotpwd" }]" class="link">[{ oxmultilang ident="USER_FORGOTPWD" }]</a>
                		</div>
                	</div>
              </form>
          </div>
         </div>
      </div>

      <div class="ym-g33 ym-gr">
      <div class="ym-form  cust_new  boxListing">
          <h6>[{if !$_blshownoregopt }][{ oxmultilang ident="USER_OPTION2" }][{else}][{ oxmultilang ident="USER_OPTION3" }][{/if}]<br />[{ oxmultilang ident="USER_OPENPERSONALACCOUNT1" }]</h6>
          <div>
              <p>[{ oxmultilang ident="USER_OPENPERSONALACCOUNT2" }] [{ oxmultilang ident="USER_OPENPERSONALACCOUNT3" }]<br><br>
              
                  [{ oxmultilang ident="USER_OPENPERSONALACCOUNT4" }]<br>
                  [{ oxmultilang ident="USER_OPENPERSONALACCOUNT5" }]<br>
                  [{ oxmultilang ident="USER_OPENPERSONALACCOUNT6" }]<br>
                  [{ oxmultilang ident="USER_OPENPERSONALACCOUNT7" }]<br>
                  [{ oxmultilang ident="USER_OPENPERSONALACCOUNT8" }]<br>
                  [{ oxmultilang ident="USER_OPENPERSONALACCOUNT9" }]<br>
                  [{ oxmultilang ident="USER_OPENPERSONALACCOUNT10" }]
              </p>
              
              <form action="[{ $oViewConf->getSslSelfLink() }]" method="post">
                
                    [{ $oViewConf->getHiddenSid() }]
                    [{ $oViewConf->getNavFormParams() }]
                    <input type="hidden" name="cl" value="user">
                    <input type="hidden" name="fnc" value="">
                    <input type="hidden" name="option" value="3">
                    <div class="ym-fbox-button">
                    	<input id="UsrOpt3" type="submit" name="send" value="[{ oxmultilang ident="USER_LOGIN2" }]" class="btn">
               		</div>
              </form>
          </div>
      	</div>
      </div>
	</div>

  [{else}]
    [{assign var="invadr" value=$oView->getInvoiceAddress()}]
    [{assign var="currency" value=$oView->getActCurrency() }]

    [{if !$oxcmp_user && $oView->isConnectedWithFb()}]
      
      <div class="ym-form">
          <h6>[{ oxmultilang ident="USER_LOGIN3" }] <br />[{ oxmultilang ident="USER_FB_UPDATEACCOUNTMSG" }]</h6>
          <form action="[{ $oViewConf->getSslSelfLink() }]" method="post">
                [{ $oViewConf->getHiddenSid() }]
                [{ $oViewConf->getNavFormParams() }]
                <input type="hidden" name="fnc" value="">
                <input type="hidden" name="cl" value="user">
                <input type="hidden" name="option" value="2">
                <input type="hidden" name="lgn_cook" value="0">
                <input type="hidden" name="fblogin" value="1">
                <input type="hidden" name="CustomError" value='popup'>
                <div class="ym-fbox-button">
                	<input id="UsrOpt2UpdateAccount" type="submit" name="send" value="[{ oxmultilang ident="USER_UPDATE_ACCOUNT" }]" class="btn">
                </div>
            </form>
      </div>
    [{/if}]


    <form action="[{ $oViewConf->getSslSelfLink() }]" name="order" method="post">
      <div>
          [{ $oViewConf->getHiddenSid() }]
          [{ $oViewConf->getNavFormParams() }]
          <input type="hidden" name="option" value="[{$oView->getLoginOption()}]">
          <input type="hidden" name="cl" value="user">
          <input type="hidden" name="CustomError" value='user'>
          <input type="hidden" name="blhideshipaddress" value="0">
          <input type="hidden" id="reloadAddress" name="reloadaddress" value="">
          [{if !$oxcmp_user->oxuser__oxpassword->value }]
            <input type="hidden" name="fnc" value="createuser">
          [{else}]
            <input type="hidden" name="fnc" value="changeuser">
            <input type="hidden" name="lgn_cook" value="0">
          [{/if}]
      </div>

      [{if $oView->isLowOrderPrice()}]
      <div class="box error">[{ oxmultilang ident="BASKET_MINORDERPRICE" }] [{ $oView->getMinOrderPrice() }] [{ $currency->sign }]</div>
      [{else}]
      <div class="textr">
      	<input id="UserNextStepTop" class="ym-button" name="userform" type="submit" value="[{ oxmultilang ident="USER_NEXTSTEP" }]">
      </div>
      [{/if}]

      [{include file="inc/error.tpl" Errorlist=$Errors.user}]

      [{if $oView->getLoginOption() == 3 || (!$oxcmp_user && $oView->isConnectedWithFb()) }]
        
        <div class="ym-form linearize-form ym-columnar 	 cust_new">
		<h6>[{ oxmultilang ident="USER_LOGIN3" }]</h6>
        	<p>
            [{ oxmultilang ident="USER_ENTEREMAILANDPWD" }]<br>
            [{ oxmultilang ident="USER_RECEIVECONFIRMATION" }]
            </p>
            <div class="ym-fbox-text">
            	<label>[{ oxmultilang ident="USER_EMAILADDRESS" }]<sup class="ym-required">*</sup></label>
            	<input id="userLoginName" type="text" name="lgn_usr" value="[{$oView->getActiveUsername()}]" size="37" required="required">
            </div>
            <div class="ym-fbox-text">
            	<label>[{ oxmultilang ident="USER_PASSWORD" }]<sup class="ym-required">*</sup></label>
            	<input id="userPassword" type="password" name="lgn_pwd" value="[{$lgn_pwd}]" size="37" required="required">
            </div>
            <div class="ym-fbox-text">
            	<label>[{ oxmultilang ident="USER_CONFIRMPWD" }]<sup class="ym-required">*</sup></label>
            	<input id="userPasswordConfirm" type="password" name="lgn_pwd2" value="[{$lgn_pwd2}]" size="37" required="required">
            </div>
        </div>
      [{/if}]

      
      <div class="ym-form linearize-form ym-columnar cust_new">
      <h6 class="boxhead">[{ oxmultilang ident="USER_SEND" }]<br />[{ oxmultilang ident="USER_BILLINDADDRESS" }]</h6>
          <p><small>[{ oxmultilang ident="USER_COMPLETEALLMARKEDFIELDS" }]</small></p>
          
            [{ if !$oxcmp_user->oxuser__oxpassword->value && $oView->getLoginOption() != 3 && !$oView->isConnectedWithFb() }]
            <div class="ym-fbox-text">
                <label>[{ oxmultilang ident="USER_EMAILADDRESS2" }]<sup class="ym-required">*</sup></label>
                <input id="userLoginName" type="text" name="lgn_usr" value="[{$oView->getActiveUsername()}]" size="37" required="required">
            </div>
            [{/if}]
            <div class="ym-fbox-select">
              <label>[{ oxmultilang ident="USER_TITLE" }][{if $oView->isFieldRequired(oxuser__oxsal) }]<sup class="ym-required">*</sup>[{/if}]</label>
              [{include file="inc/salutation.tpl" name="invadr[oxuser__oxsal]" value=$oxcmp_user->oxuser__oxsal->value value2=$invadr.oxuser__oxsal}]
              
            </div>
            <div class="ym-fbox-text">
            <label>[{ oxmultilang ident="USER_FIRSTNAME" }][{if $oView->isFieldRequired(oxuser__oxfname) }]<sup class="ym-required">*</sup>[{/if}]</label>
                <input type="text" size="37" maxlength="255" name="invadr[oxuser__oxfname]" value="[{if isset( $invadr.oxuser__oxfname ) }][{ $invadr.oxuser__oxfname }][{else}][{ $oxcmp_user->oxuser__oxfname->value }][{/if}]" [{if $oView->isFieldRequired(oxuser__oxfname) }]required="required"[{/if}]>
            </div>
            <div class="ym-fbox-text">
            <label>[{ oxmultilang ident="USER_LASTNAME" }][{if $oView->isFieldRequired(oxuser__oxlname) }]<sup class="ym-required">*</sup>[{/if}]</label>
            <input type="text" size="37" maxlength="255" name="invadr[oxuser__oxlname]"  value="[{if isset( $invadr.oxuser__oxlname ) }][{ $invadr.oxuser__oxlname }][{else}][{ $oxcmp_user->oxuser__oxlname->value }][{/if}]" [{if $oView->isFieldRequired(oxuser__oxlname) }]required="required"[{/if}]>
            </div>
            <div class="ym-fbox-text">
            <label>[{ oxmultilang ident="USER_COMPANY" }][{if $oView->isFieldRequired(oxuser__oxcompany) }]<sup class="ym-required">*</sup>[{/if}]</label>
            <input type="text" size="37" maxlength="255" name="invadr[oxuser__oxcompany]" value="[{if isset( $invadr.oxuser__oxcompany ) }][{ $invadr.oxuser__oxcompany }][{else}][{$oxcmp_user->oxuser__oxcompany->value }][{/if}]" [{if $oView->isFieldRequired(oxuser__oxcompany) }]required="required"[{/if}]>
            </div>
            <div class="ym-fbox-text">
            <label>[{ oxmultilang ident="USER_STREET" }][{if $oView->isFieldRequired(oxuser__oxstreet) || $oView->isFieldRequired(oxuser__oxstreetnr) }]<sup class="ym-required">*</sup>[{/if}]</label>
            <input type="text" size="28" maxlength="255" style="width: 55%; float:left;" name="invadr[oxuser__oxstreet]" value="[{if isset( $invadr.oxuser__oxstreet ) }][{$invadr.oxuser__oxstreet }][{else}][{$oxcmp_user->oxuser__oxstreet->value }][{/if}]" [{if $oView->isFieldRequired(oxuser__oxstreet)}]required="required"[{/if}]>
            <input type="text" size="5" maxlength="16" style="width: 10%; margin-left: 5%" name="invadr[oxuser__oxstreetnr]" value="[{if isset( $invadr.oxuser__oxstreetnr ) }][{ $invadr.oxuser__oxstreetnr }][{else}][{ $oxcmp_user->oxuser__oxstreetnr->value }][{/if}]" [{if $oView->isFieldRequired(oxuser__oxstreetnr) }]required="required"[{/if}]>
            </div>
            <div class="ym-fbox-text">
            	<label>[{ oxmultilang ident="USER_PLZANDCITY" }][{if $oView->isFieldRequired(oxuser__oxzip) || $oView->isFieldRequired(oxuser__oxcity) }]<sup class="ym-required">*</sup>[{/if}]</label>
            		<input type="text" size="5" style="width: 15%; float:left;" maxlength="16" name="invadr[oxuser__oxzip]" value="[{if isset( $invadr.oxuser__oxzip ) }][{$invadr.oxuser__oxzip }][{else}][{$oxcmp_user->oxuser__oxzip->value }][{/if}]" [{if $oView->isFieldRequired(oxuser__oxzip)}]required="required"[{/if}]>
            		<input type="text" size="28" maxlength="255" style="width: 50%; margin-left: 5%" name="invadr[oxuser__oxcity]" value="[{if isset( $invadr.oxuser__oxcity ) }][{$invadr.oxuser__oxcity }][{else}][{$oxcmp_user->oxuser__oxcity->value }][{/if}]" [{if $oView->isFieldRequired(oxuser__oxcity) }]required="required"[{/if}]>
            </div>
            <div class="ym-fbox-text">
            	<label>[{ oxmultilang ident="USER_VATID" }][{if $oView->isFieldRequired(oxuser__oxustid) }]<sup class="ym-required">*</sup>[{/if}]</label>
              		<input type="text" size="37" maxlength="255" name="invadr[oxuser__oxustid]" value="[{if isset( $invadr.oxuser__oxustid ) }][{$invadr.oxuser__oxustid }][{else}][{$oxcmp_user->oxuser__oxustid->value }][{/if}]" [{if $oView->isFieldRequired(oxuser__oxustid) }]required="required"[{/if}]>
            </div>
            <div class="ym-fbox-text">
            	<label>[{ oxmultilang ident="USER_ADDITIONALINFO" }][{if $oView->isFieldRequired(oxuser__oxaddinfo) }]<sup class="ym-required">*</sup>[{/if}]</label>
            	<input type="text" size="37" maxlength="255" name="invadr[oxuser__oxaddinfo]" value="[{if isset( $invadr.oxuser__oxaddinfo ) }][{$invadr.oxuser__oxaddinfo }][{else}][{$oxcmp_user->oxuser__oxaddinfo->value }][{/if}]" [{if $oView->isFieldRequired(oxuser__oxaddinfo) }]required="required"[{/if}]>
            </div>
            <div class="ym-fbox-select">
            	<label>[{ oxmultilang ident="USER_COUNTRY" }][{if $oView->isFieldRequired(oxuser__oxcountryid) }]<sup class="ym-required">*</sup>[{/if}]</label>
            	<select id="invCountrySelect" name="invadr[oxuser__oxcountryid]">
                    <option value="">-</option>
                    [{assign var="blCountrySelected" value=false}]
                    [{foreach from=$oViewConf->getCountryList() item=country key=country_id}]
                        [{assign var="sCountrySelect" value=""}]
                        [{if !$blCountrySelected}]
                            [{if (isset($invadr.oxuser__oxcountryid) && $invadr.oxuser__oxcountryid == $country->oxcountry__oxid->value) ||
                                 (!isset($invadr.oxuser__oxcountryid) && $oxcmp_user->oxuser__oxcountryid->value == $country->oxcountry__oxid->value) }]
                                [{assign var="blCountrySelected" value=true}]
                                [{assign var="sCountrySelect" value="selected"}]
                            [{/if}]
                        [{/if}]
                        <option value="[{$country->oxcountry__oxid->value}]" [{$sCountrySelect}]>[{$country->oxcountry__oxtitle->value}]</option>
                    [{/foreach}]
                </select>
            </div>
            [{*
            <div class="ym-fbox-select">
              <label></label>
              [{include file="inc/state_selector.snippet.tpl"
                        countrySelectId="invCountrySelect"
                        stateSelectName="invadr[oxuser__oxstateid]"
                        selectedStateIdPrim=$invadr.oxuser__oxstateid
                        selectedStateId=$oxcmp_user->oxuser__oxstateid
                     }]
            </div>
            *}]
            <div class="ym-fbox-text">
              <label>[{ oxmultilang ident="USER_PHONE" }][{if $oView->isFieldRequired(oxuser__oxfon) }]<sup class="ym-required">*</sup>[{/if}]</label>
              <input type="text" size="37" maxlength="128" name="invadr[oxuser__oxfon]" value="[{if isset( $invadr.oxuser__oxfon ) }][{$invadr.oxuser__oxfon }][{else}][{$oxcmp_user->oxuser__oxfon->value }][{/if}]" [{if $oView->isFieldRequired(oxuser__oxfon) }]required="required"[{/if}]>
            </div>
            <div class="ym-fbox-text">
              <label>[{ oxmultilang ident="USER_FAX" }][{if $oView->isFieldRequired(oxuser__oxfax) }]<sup class="ym-required">*</sup>[{/if}]</label>
              <input type="text" size="37" maxlength="128" name="invadr[oxuser__oxfax]" value="[{if isset( $invadr.oxuser__oxfax ) }][{$invadr.oxuser__oxfax }][{else}][{$oxcmp_user->oxuser__oxfax->value }][{/if}]" [{if $oView->isFieldRequired(oxuser__oxfax) }]required="required"[{/if}]>
            </div>
            <div class="ym-fbox-text">
            <label>[{ oxmultilang ident="USER_MOBIL" }][{if $oView->isFieldRequired(oxuser__oxmobfon) }]<sup class="ym-required">*</sup>[{/if}]</label>
            <input type="text" size="37" maxlength="64" name="invadr[oxuser__oxmobfon]" value="[{if isset( $invadr.oxuser__oxmobfon ) }][{$invadr.oxuser__oxmobfon }][{else}][{$oxcmp_user->oxuser__oxmobfon->value }][{/if}]" [{if $oView->isFieldRequired(oxuser__oxmobfon) }]required="required"[{/if}]>
            </div>
            <div class="ym-fbox-text">
            	<label>[{ oxmultilang ident="USER_PRIVATPHONE" }][{if $oView->isFieldRequired(oxuser__oxprivfon) }]<sup class="ym-required">*</sup>[{/if}]</label>
            		<input type="text" size="37" maxlength="64" name="invadr[oxuser__oxprivfon]" value="[{if isset( $invadr.oxuser__oxprivfon ) }][{$invadr.oxuser__oxprivfon }][{else}][{$oxcmp_user->oxuser__oxprivfon->value }][{/if}]" [{if $oView->isFieldRequired(oxuser__oxprivfon) }]required="required"[{/if}]>
            </div>
            [{if $oViewConf->showBirthdayFields() }]
            <div class="ym-fbox-text">
            <label>[{ oxmultilang ident="USER_BIRTHDATE" }][{if $oView->isFieldRequired(oxuser__oxbirthdate) }]<sup class="ym-required">*</sup>[{/if}]</label>
              <input type="text" style="width: 5%; float: left" size="3" maxlength="2" name="invadr[oxuser__oxbirthdate][day]" value="[{if isset( $invadr.oxuser__oxbirthdate.day ) }][{$invadr.oxuser__oxbirthdate.day }][{elseif $oxcmp_user->oxuser__oxbirthdate->value && $oxcmp_user->oxuser__oxbirthdate->value != "0000-00-00"}][{$oxcmp_user->oxuser__oxbirthdate->value|regex_replace:"/^([0-9]{4})[-]([0-9]{1,2})[-]/":"" }][{/if}]">&nbsp;&nbsp;
                <input type="text" style="width: 5%; float: left; margin-left: 3%;" size="3" maxlength="2" name="invadr[oxuser__oxbirthdate][month]" value="[{if isset( $invadr.oxuser__oxbirthdate.month ) }][{$invadr.oxuser__oxbirthdate.month }][{elseif $oxcmp_user->oxuser__oxbirthdate->value && $oxcmp_user->oxuser__oxbirthdate->value != "0000-00-00" }][{$oxcmp_user->oxuser__oxbirthdate->value|regex_replace:"/^([0-9]{4})[-]/":""|regex_replace:"/[-]([0-9]{1,2})$/":"" }][{/if}]">&nbsp;&nbsp;
                <input type="text" style="width: 10%; margin-left: 3%;" size="8" maxlength="4" name="invadr[oxuser__oxbirthdate][year]" value="[{if isset( $invadr.oxuser__oxbirthdate.year ) }][{$invadr.oxuser__oxbirthdate.year }][{elseif $oxcmp_user->oxuser__oxbirthdate->value && $oxcmp_user->oxuser__oxbirthdate->value != "0000-00-00" }][{$oxcmp_user->oxuser__oxbirthdate->value|regex_replace:"/[-]([0-9]{1,2})[-]([0-9]{1,2})$/":"" }][{/if}]">
                
            </div>
            [{/if}]
            <div class="ym-fbox-check">
            <label>[{ oxmultilang ident="USER_SUBSCRIBENEWSLETTER" }]</label>
              <input type="hidden" name="blnewssubscribed" value="0">
              <input id="newsReg" type="checkbox" name="blnewssubscribed" value="1" [{if $oView->isNewsSubscribed()}]checked[{/if}]>
                <span class="fs10">[{ oxmultilang ident="USER_SUBSCRIBENEWSLETTER_MESSAGE" }]</span>
             
            </div>
            <div class="ym-fbox-text">
              <label>[{ oxmultilang ident="USER_YOURMESSAGE" }]</label>
                [{ if !$oView->getOrderRemark()}]
                  [{assign var="order_remark" value="USER_MESSAGEHERE"|oxmultilangassign}]
                [{else}]
                  [{assign var="order_remark" value=$oView->getOrderRemark()}]
                [{/if}]
                <textarea cols="60" rows="7" name="order_remark">[{$order_remark}]</textarea>
            </div>

          <h6>[{ oxmultilang ident="USER_SHIPPINGADDRESS" }]</h6>
          <p>
          [{if !$oView->showShipAddress()}]
            <input type="submit" name="blshowshipaddress" value="[{ oxmultilang ident="USER_DIFFERENTSHIPPINGADDRESS" }]" class="ym-button ym-add">
          [{else}]
            <input type="submit" name="blhideshipaddress" value="[{ oxmultilang ident="USER_DISABLESHIPPINGADDRESS" }]" class="ym-button ym-add">
          [{/if}]
          </p>

          <p>[{ oxmultilang ident="USER_NOTE" }]</span> [{ oxmultilang ident="USER_DIFFERENTDELIVERYADDRESS" }]</p>
          [{if $oView->showShipAddress()}]
            [{if $oxcmp_user}]
                [{assign var="delivadr" value=$oxcmp_user->getSelectedAddress()}]
            [{/if}]
            [{assign var="deladr" value=$oView->getDeliveryAddress()}]
            
            <div class="ym-fbox-select">
            	<label>[{ oxmultilang ident="USER_ADDRESSES" }]</label>
            	<select name="oxaddressid" onchange="oxid.form.set('reloadAddress', this.value === '-1' ? 1 : 2);oxid.form.reload(this.value === '-1','order','user','');oxid.form.clear(this.value !== '-1','order',/oxaddress__/);">
                    <option value="-1" SELECTED>[{ oxmultilang ident="USER_NEWADDRESS" }]</option>
                    [{if $oxcmp_user}]
                        [{foreach from=$oxcmp_user->getUserAddresses() item=address}]
                            <option value="[{$address->oxaddress__oxid->value}]" [{if $address->isSelected()}]SELECTED[{/if}]>[{$address}]</option>
                        [{/foreach}]
                    [{/if}]
                  </select>
                  <noscript>
                    <input id="accUserReloadAddress" class="btn" type="submit" name="reloadaddress" value="[{ oxmultilang ident="USER_ADDRESSES_SELECT" }]">
                  </noscript>
                </div>
              <div class="ym-fbox-select">
              <label>[{ oxmultilang ident="USER_TITLE2" }][{if $oView->isFieldRequired(oxaddress__oxsal) }]<sup class="ym-required">*</sup>[{/if}]</label>
              	[{include file="inc/salutation.tpl" name="deladr[oxaddress__oxsal]" value=$delivadr->oxaddress__oxsal->value value2=$deladr.oxaddress__oxsal}]
              </div>
              <div class="ym-fbox-text">
                <label>[{ oxmultilang ident="USER_NAME" }][{if $oView->isFieldRequired(oxaddress__oxfname) || $oView->isFieldRequired(oxaddress__oxlname) }]<sup class="ym-required">*</sup>[{/if}]</label>
                  <input type="text" size="15" style="width: 33%; float:left" maxlength="255" name="deladr[oxaddress__oxfname]" value="[{if isset( $deladr.oxaddress__oxfname ) }][{$deladr.oxaddress__oxfname}][{else}][{$delivadr->oxaddress__oxfname->value }][{/if}]">
                  <input type="text" size="18" style="width: 33%; margin-left: 4%;"maxlength="255" name="deladr[oxaddress__oxlname]" value="[{if isset( $deladr.oxaddress__oxlname ) }][{$deladr.oxaddress__oxlname}][{else}][{$delivadr->oxaddress__oxlname->value }][{/if}]">
                  
                </div>
              <div class="ym-fbox-text">
              	<label>[{ oxmultilang ident="USER_COMPANY2" }][{if $oView->isFieldRequired(oxaddress__oxcompany) }]<sup class="ym-required">*</sup>[{/if}]</label>
              	<input type="text" size="37" maxlength="255" name="deladr[oxaddress__oxcompany]" value="[{if isset( $deladr.oxaddress__oxcompany ) }][{$deladr.oxaddress__oxcompany}][{else}][{$delivadr->oxaddress__oxcompany->value }][{/if}]">
              </div>
              <div class="ym-fbox-text">
                <label>[{ oxmultilang ident="USER_STREET2" }][{if $oView->isFieldRequired(oxaddress__oxstreet) || $oView->isFieldRequired(oxaddress__oxstreetnr) }]<sup class="ym-required">*</sup>[{/if}]</label>
                <input type="text" size="28" style="width: 55%; float:left;" maxlength="255" name="deladr[oxaddress__oxstreet]" value="[{if isset( $deladr.oxaddress__oxstreet ) }][{$deladr.oxaddress__oxstreet}][{else}][{$delivadr->oxaddress__oxstreet->value}][{/if}]">
                  <input type="text" size="5" style="width: 10%; margin-left: 5%" maxlength="16" name="deladr[oxaddress__oxstreetnr]" value="[{if isset( $deladr.oxaddress__oxstreetnr ) }][{$deladr.oxaddress__oxstreetnr}][{else}][{$delivadr->oxaddress__oxstreetnr->value }][{/if}]">
              </div>
              <div class="ym-fbox-text">
              	<label>[{ oxmultilang ident="USER_PLZANDCITY2" }][{if $oView->isFieldRequired(oxaddress__oxzip) || $oView->isFieldRequired(oxaddress__oxcity) }]<sup class="ym-required">*</sup>[{/if}]</label>
              	<input type="text" size="5" style="width: 15%; float:left;" maxlength="16" name="deladr[oxaddress__oxzip]" value="[{if isset( $deladr.oxaddress__oxzip ) }][{$deladr.oxaddress__oxzip}][{else}][{$delivadr->oxaddress__oxzip->value }][{/if}]">
              	<input type="text" size="28" style="width: 50%; margin-left: 5%"  maxlength="255" name="deladr[oxaddress__oxcity]" value="[{if isset( $deladr.oxaddress__oxcity ) }][{$deladr.oxaddress__oxcity}][{else}][{$delivadr->oxaddress__oxcity->value }][{/if}]">
              	</div>
              <div class="ym-fbox-text">
                <label>[{ oxmultilang ident="USER_ADDITIONALINFO2" }][{if $oView->isFieldRequired(oxaddress__oxaddinfo) }]<sup class="ym-required">*</sup>[{/if}]</label>
                <input type="text" size="37" maxlength="255" name="deladr[oxaddress__oxaddinfo]" value="[{if isset( $deladr.oxaddress__oxaddinfo ) }][{$deladr.oxaddress__oxaddinfo}][{else}][{$delivadr->oxaddress__oxaddinfo->value }][{/if}]">
                </div>
              <div class="ym-fbox-select">
                <label>[{ oxmultilang ident="USER_COUNTRY2" }][{if $oView->isFieldRequired(oxaddress__oxcountryid) }]<sup class="ym-required">*</sup>[{/if}]</label>
                 <select id="delCountrySelect" name="deladr[oxaddress__oxcountryid]">
                      <option value="">-</option>
                      [{assign var="blCountrySelected" value=false}]
                      [{assign var="sCountrySelect" value=""}]
                      [{foreach from=$oViewConf->getCountryList() item=country key=country_id}]
                          [{assign var="sCountrySelect" value=""}]
                          [{if !$blCountrySelected}]
                              [{if (isset( $deladr.oxaddress__oxcountryid ) && $deladr.oxaddress__oxcountryid == $country->oxcountry__oxid->value) ||
                                   ($delivadr->oxaddress__oxcountryid->value == $country->oxcountry__oxid->value) }]
                                  [{assign var="blCountrySelected" value=true}]
                                  [{assign var="sCountrySelect" value="selected"}]
                              [{/if}]
                          [{/if}]
                          <option value="[{$country->oxcountry__oxid->value}]" [{$sCountrySelect}]>[{$country->oxcountry__oxtitle->value}]</option>
                      [{/foreach}]
                  </select>
                 </div>
              [{*
              <div class="ym-fbox-select">
                <label></label>
                [{include file="inc/state_selector.snippet.tpl"
                        countrySelectId="delCountrySelect"
                        stateSelectName="deladr[oxaddress__oxstateid]"
                        selectedStateIdPrim=$deladr.oxaddress__oxstateid
                        selectedStateId=$delivadr->oxaddress__oxstateid->value
                     }]
                </div>
              *}]
              <div class="ym-fbox-text">
              	<label>[{ oxmultilang ident="USER_PHONE2" }][{if $oView->isFieldRequired(oxaddress__oxfon) }]<sup class="ym-required">*</sup>[{/if}]</label>
              	<input type="text" size="37" maxlength="128" name="deladr[oxaddress__oxfon]" value="[{if isset( $deladr.oxaddress__oxfon ) }][{$deladr.oxaddress__oxfon}][{else}][{$delivadr->oxaddress__oxfon->value }][{/if}]">
              </div>
              <div class="ym-fbox-text">
                  <label>[{ oxmultilang ident="USER_FAX2" }][{if $oView->isFieldRequired(oxaddress__oxfax) }]<sup class="ym-required">*</sup>[{/if}]</label>
                  <input type="text" size="37" maxlength="128" name="deladr[oxaddress__oxfax]" value="[{if isset( $deladr.oxaddress__oxfax ) }][{$deladr.oxaddress__oxfax}][{else}][{$delivadr->oxaddress__oxfax->value }][{/if}]">
              </div>
            
          [{/if}]
      </div>

      [{if $oView->isLowOrderPrice()}]
      	<div class="box error">[{ oxmultilang ident="BASKET_MINORDERPRICE" }] [{ $oView->getMinOrderPrice() }] [{ $currency->sign }]</div>
      [{else}]
        <div class="textr">
           <input id="UserNextStepBottom" class="ym-button" name="userform" type="submit" value="[{ oxmultilang ident="USER_NEXTSTEP" }]">
        </div>
      [{/if}]

    </form>
    &nbsp;

  [{/if}]


[{ insert name="oxid_tracker" title=$template_title }]
[{include file="layout/footer.tpl"}]

[{*assign var="template_title" value="" }]
[{include file="layout/header.tpl" title=$template_title location=$template_title}
    
    [{* ordering steps *}]
    [{*include file="page/checkout/inc/steps.tpl" active=2 }]

    [{block name="checkout_user_main"}]
        [{if !$oxcmp_user && !$oView->getLoginOption() }]
            [{include file="page/checkout/inc/options.tpl"}]
        [{/if}]

        [{block name="checkout_user_noregistration"}]
            [{if !$oxcmp_user && $oView->getLoginOption() == 1}]
                [{include file="form/user_checkout_noregistration.tpl"}]
            [{/if}]
        [{/block}]

        [{block name="checkout_user_registration"}]
            [{if !$oxcmp_user && $oView->getLoginOption() == 3}]
                [{include file="form/user_checkout_registration.tpl"}]
            [{/if}]
        [{/block}]

        [{block name="checkout_user_change"}]
            [{if $oxcmp_user}]
                [{include file="form/user_checkout_change.tpl"}]
            [{/if}]
        [{/block}]
    [{/block}]
[{insert name="oxid_tracker" title=$template_title }]
[{include file="layout/footer.tpl" *}]