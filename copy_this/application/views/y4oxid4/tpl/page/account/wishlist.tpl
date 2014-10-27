[{*
#########################################################################
#	$Id: aa1b666904ee155b2a10036879e186e8cb72c7e5 $
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

[{assign var="template_title" value="ACCOUNT_WISHLIST_TITLE"|oxmultilangassign }]
[{include file="layout/header.tpl" title=$template_title location="ACCOUNT_WISHLIST_LOCATION"|oxmultilangassign|cat:$template_title}]

[{include file="inc/account_header.tpl" active_link=6 }]
 
  <div class="ym-form"> 
  <h6 id="wishlistSearchHeader" class="boxhead">[{ oxmultilang ident="ACCOUNT_WISHLIST_SEARCHWISHLIST" }]</h6>
        <form name="wishlist_searchbox" action="[{ $oViewConf->getSelfActionLink() }]" method="post">
            <div>
                [{ $oViewConf->getHiddenSid() }]
                <input type="hidden" name="cl" value="account_wishlist">
                <input type="hidden" name="fnc" value="searchforwishlist">
                <div class="ym-fbox-text">
                <label>[{ oxmultilang ident="ACCOUNT_WISHLIST_ENTEREMAILORNAME" }]&nbsp;</label>
                <input type="text" name="search" value="[{ $oView->getWishListSearchParam() }]" size="30">
                </div>
                <div class="ym-fbox-button">
                <input id="WishlistSearch" type="submit" value="[{ oxmultilang ident="ACCOUNT_WISHLIST_SEARCH" }]" class="btn">
                </div>
            </div>
        </form>
</div>
        <div class="wishsearchresults">
        [{if $oView->getWishListUsers() }]
            [{foreach from=$oView->getWishListUsers() item=wishres }]
                <div class="searchitem">
                    <a href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=wishlist" params="wishid=`$wishres->oxuser__oxid->value`" }]">
                     [{ oxmultilang ident="ACCOUNT_WISHLIST_WISHLISTOFF" }] [{ $wishres->oxuser__oxfname->value }]&nbsp;[{ $wishres->oxuser__oxlname->value }]
                   </a>
                </div>
            [{/foreach }]
        [{else }]
            [{if $oView->getWishListSearchParam() }]
              <div class="box error">[{ oxmultilang ident="ACCOUNT_WISHLIST_SORRYNOWISHLIST" }]</div>
            [{/if }]
        [{/if }]
        </div>
  

  [{if !$oView->showSuggest() }]
    
    <div class="ym-form">
    <h6 id="wishlistHeader" class="boxhead">[{ oxmultilang ident="ACCOUNT_WISHLIST_MYWISHLIST" }]</h6>
      [{if $oView->getWishList() }]
      <form name="wishlist_wishlist_status" action="[{ $oViewConf->getSelfActionLink() }]" method="post">
          <div>
              [{ $oViewConf->getHiddenSid() }]
              <input type="hidden" name="fnc" value="togglepublic">
              <input type="hidden" name="cl" value="account_wishlist">
          </div>
          <table class="form" width="100%">
            <colgroup>
              <col width="70%">
              <col width="15%">
              <col width="15%">
            </colgroup>
            <tr>
              <th colspan="3">[{ oxmultilang ident="ACCOUNT_WISHLIST_PUBLISH" }]</th>
            </tr>
            <tr>
              <td><label>[{ oxmultilang ident="ACCOUNT_WISHLIST_MAKEWISHLISTPUBLISH" }]</label></td>
              <td align="right">
                <select name="blpublic">
                  <option value="0">[{ oxmultilang ident="ACCOUNT_WISHLIST_NO" }]</option>
                  [{assign var="wishlist" value=$oView->getWishList() }]
                  <option value="1"  [{if $wishlist->oxuserbaskets__oxpublic->value }]selected [{/if }] >[{ oxmultilang ident="ACCOUNT_WISHLIST_YES" }]</option>
                </select>
              </td>
              <td align="right">
                <span class="btn"><input id="Wishlist_save" type="submit" value="[{ oxmultilang ident="ACCOUNT_WISHLIST_SAVE" }]" class="btn"></span>
              </td>
            </tr>
          </table>
        </form>
        <form name="basket" action="[{ $oViewConf->getSelfActionLink() }]" method="post">
            <table class="form" width="100%">
                <tr>
                    <th colspan="2">[{ oxmultilang ident="ACCOUNT_WISHLIST_SEND" }]</th>
                </tr>
                <tr>
                    <td>[{ oxmultilang ident="ACCOUNT_WISHLIST_CLICKHERETOSENDWISHLIST" }]</td>
                    <td align="right">
                        [{ $oViewConf->getHiddenSid() }]
                        <input type="hidden" name="cl" value="account_wishlist">
                        <input type="hidden" name="blshowsuggest" value="1">
                        <span class="btn"><input id="Wishlist_send" type="submit" value="[{ oxmultilang ident="ACCOUNT_WISHLIST_BUTTSENDWISHLIST" }]" class="btn"></span>
                    </td>
                </tr>
            </table>
       </form>
      [{/if }]
      [{if $oView->getWishList() }]
        <div class="dot_sep"></div>
        <div class="wishlist">
            [{foreach from=$oView->getWishProductList() name=wishlist item=product}]

              [{if $smarty.foreach.wishlist.first}]
                [{assign var="wishlist_class" value="firstinlist"}]
              [{elseif $smarty.foreach.wishlist.last}]
                [{assign var="wishlist_class" value="lastinlist"}]
              [{else}]
                [{assign var="wishlist_class" value="inlist"}]
              [{/if}]

              [{include file="inc/product.tpl" product=$product size="thin" class=$wishlist_class removeFunction="towishlist" toBasketFunction="tobasket" owishid=$oxcmp_user->oxuser__oxid->value testid="WishList_`$smarty.foreach.wishlist.iteration`" }]

              [{if !$smarty.foreach.wishlist.last }]
                <div class="separator"></div>
              [{/if}]


            [{/foreach}]
         </div>
      [{else }]
        <p>[{ oxmultilang ident="ACCOUNT_WISHLIST_WISHLISTISEMPTY" }]</p>
      [{/if }]
    </div>
  [{/if }]

  [{if $oView->getWishList() && $oView->showSuggest() }]
    <strong id="WishlistSendHeader" class="boxhead">[{ oxmultilang ident="ACCOUNT_WISHLIST_SENDWISHLIST" }]</strong>
    <div class="box info">
      [{if count($Errors.account_whishlist)>0 }]
        <div class="errorbox inbox">
       [{foreach from=$Errors.account_whishlist item=oEr key=key }]
           [{ $oEr->getOxMessage()}]<br>
       [{/foreach}]
        </div>
      [{/if}]

      [{assign var="editval" value=$oView->getEnteredData() }]
      [{if $oView->isWishListEmailSent() }]
        <b>[{ oxmultilang ident="ACCOUNT_WISHLIST_SENDSUCCESSFULLY1" }] [{ $editval->rec_email }] [{ oxmultilang ident="ACCOUNT_WISHLIST_SENDSUCCESSFULLY2" }]</b><br><br>
      [{/if }]
        <form action="[{ $oViewConf->getSelfActionLink() }]" method="post">
            <div>
               [{ $oViewConf->getHiddenSid() }]
               <input type="hidden" name="fnc" value="sendwishlist">
               <input type="hidden" name="cl" value="account_wishlist">
               <input type="hidden" name="blshowsuggest" value="1">
               <input type="hidden" name="editval[send_subject]" value="[{ oxmultilang ident="ACCOUNT_WISHLIST_GIFTREGISTRYAT" }] [{ $oxcmp_shop->oxshops__oxname->value }]">
               <input type="hidden" name="CustomError" value='account_whishlist'>
            </div>
            <table class="form">
              <colgroup>
                <col width="150">
              </colgroup>
              <tr>
                <td valign="top"><label>[{ oxmultilang ident="ACCOUNT_WISHLIST_RECIPIENTSNAME" }]</label></td>
                <td>
                  <input type="Text" name="editval[rec_name]" size="37" maxlength="70" value="[{ $editval->rec_name }]">
                </td>
              </tr>
              <tr>
                <td valign="top"><label>[{ oxmultilang ident="ACCOUNT_WISHLIST_RECIPIENTSEMAIL" }]</label></td>
                <td>
                  <input type="Text" name="editval[rec_email]" size="37" maxlength="70" value="[{ $editval->rec_email }]">
                </td>
              </tr>
              <tr>
                <td valign="top"><label>[{ oxmultilang ident="ACCOUNT_WISHLIST_YUORMESSAGE" }]</label></td>
                <td>
                  <textarea rows="6" cols="68" name="editval[send_message]">[{if $editval->send_message }][{ $editval->send_message }][{else }][{ oxmultilang ident="ACCOUNT_WISHLIST_BUYFORME1" }] [{ $oxcmp_shop->oxshops__oxname->value }] [{ oxmultilang ident="ACCOUNT_WISHLIST_BUYFORME2" }][{/if }]</textarea>
                </td>
              </tr>
              <tr class="sep">
                <td colspan="2"></td>
              </tr>
              <tr>
                <td></td>
                <td align="right">
                  <span class="btn"><input id="WishList_SendMsg" type="submit" value="[{ oxmultilang ident="ACCOUNT_WISHLIST_SEND2" }]" class="btn"></span>
                </td>
              </tr>
            </table>
        </form>
    </div>
  [{/if }]

   
        <form action="[{ $oViewConf->getSelfActionLink() }]" name="back_account_wishlist" method="post">
          
              [{ $oViewConf->getHiddenSid() }]
              <input type="hidden" name="cl" value="start">
              <div class="textr">
                  <input id="BackToShop" class="ym-button" type="submit" value="[{ oxmultilang ident="ACCOUNT_WISHLIST_BACKTOSHOP" }]">
              </div>
        </form>
[{insert name="oxid_tracker" title=$template_title }]
[{include file="layout/footer.tpl" }]
