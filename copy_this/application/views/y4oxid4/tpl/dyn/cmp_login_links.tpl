[{*
#########################################################################
#	$Id: 40abbefaaf7ea92f29b566fc9adb9de3f0c3a768 $
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
[{if $oxcmp_user && $oxcmp_user->getNoticeListArtCnt() }]
<dl class="actionslist">
    <dt>[{ oxmultilang ident="INC_CMP_LOGIN_RIGHT_NOTICELIST" }]</dt>
    <dd>
        <tt>[{ oxmultilang ident="INC_CMP_LOGIN_RIGHT_PRODUCT" }]</tt>
        <span id="AccNoticeListAm">[{ if $oxcmp_user }][{ $oxcmp_user->getNoticeListArtCnt() }][{else}]0[{/if}]</span>
        <a id="AccNoticeList" rel="nofollow" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_noticelist" }]" class="link">[{ oxmultilang ident="INC_CMP_LOGIN_RIGHT_DETAILS" }]</a>
    </dd>
</dl>
[{/if}]

[{if $oxcmp_user && $oxcmp_user->getWishListArtCnt() && $oViewConf->getShowWishlist() }]
<dl class="actionslist">
    <dt>[{ oxmultilang ident="INC_CMP_LOGIN_RIGHT_WISHLISTE" }]</dt>
    <dd>
        <tt>[{ oxmultilang ident="INC_CMP_LOGIN_RIGHT_PRODUCT2" }]</tt>
        <span id="AccWishListAm">[{ if $oxcmp_user }][{ $oxcmp_user->getWishListArtCnt() }][{else}]0[{/if}]</span>
        <a id="AccWishList" rel="nofollow" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_wishlist" }]" class="link">[{ oxmultilang ident="INC_CMP_LOGIN_RIGHT_DETAILS2" }]</a>
    </dd>
</dl>
[{/if}]

[{ if $oViewConf->getShowCompareList() && $oView->getCompareItemsCnt() }]
<dl class="actionslist">
    <dt>[{ oxmultilang ident="INC_CMP_LOGIN_RIGHT_MYPRODUCTCOMPARISON" }]</dt>
    <dd>
        <tt>[{ oxmultilang ident="INC_CMP_LOGIN_RIGHT_PRODUCT3" }]</tt>
        <span id="AccComparisonAm">[{ if $oView->getCompareItemsCnt() }][{ $oView->getCompareItemsCnt() }][{else}]0[{/if}]</span>
        <a id="AccComparison" rel="nofollow" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=compare" }]" class="link">[{ oxmultilang ident="INC_CMP_LOGIN_RIGHT_DETAILS3" }]</a>
    </dd>
</dl>
[{/if}]
