[{*
#########################################################################
#	$Id: adf6cf50a476a3bebf94ffa1c660ffc4889c8737 $
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
<h1>[{ oxmultilang ident="INC_ACCOUNT_HEADER_MYACCOUNT" }]"[{ $oxcmp_user->oxuser__oxusername->value }]"</h1>
  <div class="ym-form">
	<div class="ym-grid linearize-level-1">
		<div class="ym-g50 ym-gl">
			<dl>
                <dt><a id="link_account_password" class="[{if $active_link == 1}]active[{/if}]" href="[{ oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_password" }]" rel="nofollow">[{ oxmultilang ident="INC_ACCOUNT_HEADER_PERSONALSETTINGS" }]</a></dt>
                <dd id="link_account_passwordDesc">[{ oxmultilang ident="INC_ACCOUNT_HEADER_CHANGEPWD" }]</dd>
            </dl>

            <dl>
                <dt><a id="link_account_newsletter" class="[{if $active_link == 2}]active[{/if}]" href="[{ oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_newsletter" }]" rel="nofollow">[{ oxmultilang ident="INC_ACCOUNT_HEADER_NEWSLETTERSETTINGS" }]</a></dt>
                <dd id="link_account_newsletterDesc">[{ oxmultilang ident="INC_ACCOUNT_HEADER_NEWSLETTERSUBSCRIBE" }]</dd>
            </dl>

            <dl>
                <dt><a id="link_account_billship" class="[{if $active_link == 3}]active[{/if}]" href="[{ oxgetseourl ident=$oViewConf->getSslSelfLink()|cat:"cl=account_user" }]" rel="nofollow">[{ oxmultilang ident="INC_ACCOUNT_HEADER_BILLINGSHIPPINGSET" }]</a></dt>
                <dd id="link_account_billshipDesc">[{ oxmultilang ident="INC_ACCOUNT_HEADER_UPDATEYOURBILLINGSHIPPINGSET" }]</dd>
            </dl>

            <dl>
                <dt><a id="link_account_order" class="[{if $active_link == 4}]active[{/if}]" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_order" }]" rel="nofollow">[{ oxmultilang ident="INC_ACCOUNT_HEADER_ORDERHISTORY" }]</a></dt>
                <dd id="link_account_orderDesc">[{ oxmultilang ident="INC_ACCOUNT_HEADER_ORDERS" }] [{ $oView->getOrderCnt() }]</dd>
            </dl>
            [{if $oView->isEnabledDownloadableFiles()}]
            <dl class="lastInCol">
                <dt><a id="link_account_downloads" class="[{if $active_link == 10}]active[{/if}]" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_downloads" }]" rel="nofollow">[{ oxmultilang ident="MY_DOWNLOADS" }]</a></dt>
                <dd id="link_account_downloadsDesc">[{ oxmultilang ident="MY_DOWNLOADS_DESC" }]</dd>
            </dl>
            [{/if}]
		</div>
		<div class="ym-g50 ym-gr">
			<dl>
                <dt><a id="link_account_noticelist" class="[{if $active_link == 5}]active[{/if}]" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_noticelist" }]" rel="nofollow">[{ oxmultilang ident="INC_ACCOUNT_HEADER_MYNOTICELIST" }]</a></dt>
                <dd id="link_account_noticelistDesc">[{ oxmultilang ident="INC_ACCOUNT_HEADER_PRODUCT3" }] [{ if $oxcmp_user }][{ $oxcmp_user->getNoticeListArtCnt() }][{else}]0[{/if}]</dd>
            </dl>
            [{if $oViewConf->getShowWishlist()}]
                <dl>
                    <dt><a id="link_account_wishlist" class="[{if $active_link == 6}]active[{/if}]" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_wishlist" }]" rel="nofollow">[{ oxmultilang ident="INC_ACCOUNT_HEADER_MYWISHLIST" }]</a></dt>
                    <dd id="link_account_wishlistDesc">[{ oxmultilang ident="INC_ACCOUNT_HEADER_PRODUCT3" }] [{ if $oxcmp_user }][{ $oxcmp_user->getWishListArtCnt() }][{else}]0[{/if}]</dd>
                </dl>
            [{/if}]
            [{if $oViewConf->getShowCompareList()}]
                <dl>
                    <dt><a id="link_account_comparelist" class="[{if $active_link == 7}]active[{/if}]" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=compare" }]" rel="nofollow">[{ oxmultilang ident="INC_ACCOUNT_HEADER_MYPRODUCTCOMPARISON" }]</a></dt>
                    <dd id="link_account_comparelistDesc">[{ oxmultilang ident="INC_ACCOUNT_HEADER_PRODUCT3" }] [{ if $oView->getCompareItemsCnt() }][{ $oView->getCompareItemsCnt() }][{else}]0[{/if}]</dd>
                </dl>
            [{/if}]
            [{if $oViewConf->getShowListmania()}]
                <dl>
                    <dt><a id="link_account_recommlist" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_recommlist" }]" class="[{if $active_link == 8}]active[{/if}]">[{ oxmultilang ident="INC_ACCOUNT_HEADER_MYRECOMMLIST" }]</a></dt>
                    <dd id="link_account_recommlistDesc">[{ oxmultilang ident="INC_ACCOUNT_HEADER_LISTS" }] [{ if $oxcmp_user->getRecommListsCount() }][{ $oxcmp_user->getRecommListsCount() }][{else}]0[{/if}]</dd>
                </dl>
            [{/if}]
            <dl class="lastInCol">
                <dt><a id="link_account_logout" href="[{ $oViewConf->getLogoutLink() }]" class="[{if $active_link == 9}]active[{/if}]">[{ oxmultilang ident="INC_ACCOUNT_HEADER_LOGOUT" }]</a></dt>
                <dd id="link_account_logoutDesc">[{ oxmultilang ident="INC_ACCOUNT_HEADER_LOGOUTFROMSHOP" }]&nbsp;</dd>
            </dl>
		
		</div>
	</div>

  </div>
