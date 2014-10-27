[{*
#########################################################################
#	$Id: 44ec47ac9abf76226d96b03ed3ff7f5a5d8ec00f $
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

[{assign var="template_title" value="WISHLIST_TITLE"|oxmultilangassign}]
[{include file="layout/header.tpl" title=$template_title location=$template_title}]

<h1 id="giftRegistryHeader" class="boxhead">[{$template_title}]</h1>
<div class="ym-form ym-full">
    <form name="wishlist_searchbox" action="[{ $oViewConf->getSelfActionLink() }]" method="post">
        <h6>[{$template_title}]</h6>
            [{ $oViewConf->getHiddenSid() }]
            <input type="hidden" name="cl" value="wishlist">
            <input type="hidden" name="fnc" value="searchforwishlist">
            <div class="ym-fbox-text">
            <label>[{ oxmultilang ident="ACCOUNT_WISHLIST_ENTEREMAILORNAME" }]&nbsp;</label>
                <input type="text" name="search" value="[{ $oView->getWishListSearchParam() }]" size="30">
            </div>
            <div class="ym-fbox-button">
            	<input id="WishlistSearch" type="submit" value="[{ oxmultilang ident="ACCOUNT_WISHLIST_SEARCH" }]" class="btn">
            </div>
            
    </form>
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
    </div>
 </div>   
        [{if $oView->getWishListSearchParam() }]
          <div class="box error">
          	<p>[{ oxmultilang ident="ACCOUNT_WISHLIST_SORRYNOWISHLIST" }]</p>
          </div>
        [{/if }]
    [{/if }]
    
  [{if $oView->getWishUser()}]
      [{assign var="wishuser" value=$oView->getWishUser()}]
      <div class="dot_sep"></div><br>
      [{ oxmultilang ident="WISHLIST_WELCOME" }] [{$wishuser->oxuser__oxfname->value}] [{$wishuser->oxuser__oxlname->value}]
      <div class="dot_sep"></div><br>
      [{if $oView->getWishList()}]
         <div class="wishlist">
            [{foreach from=$oView->getWishList() name=wishlist item=product}]

              [{if $smarty.foreach.wishlist.first}]
                [{assign var="wishlist_class" value="firstinlist"}]
              [{elseif $smarty.foreach.wishlist.last}]
                [{assign var="wishlist_class" value="lastinlist"}]
              [{else}]
                [{assign var="wishlist_class" value="inlist"}]
              [{/if}]

              [{include file="inc/product.tpl" product=$product size="thin" class=$wishlist_class toBasketFunction="wl_tobasket" testid="WishList_`$smarty.foreach.wishlist.iteration`"}]

              [{if !$smarty.foreach.wishlist.last }]
                <div class="separator"></div>
              [{/if}]

            [{/foreach}]

            <br>
            <div class="dot_sep"></div>
            <br>
            [{assign var="wishuser" value=$oView->getWishUser()}]
            [{ oxmultilang ident="WISHLIST_PRODUCTS1" }] [{$wishuser->oxuser__oxfname->value}] [{$wishuser->oxuser__oxlname->value}][{ oxmultilang ident="WISHLIST_PRODUCTS2" }]

         </div>
      [{else }]
      <div class="box error">
      	<p>
         [{ oxmultilang ident="WISHLIST_WISHLISTEMPTY" }]
        </p>
      </div>
      [{/if }]
    [{/if}]


[{ insert name="oxid_tracker" title=$template_title }]
[{include file="layout/footer.tpl"}]
