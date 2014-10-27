[{*
#########################################################################
#	$Id: bf17619c817a124f33d464d7f80a9f123488fb6c $
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
<div class="box_header_nb">
	<h6 class="ym-vlist">[{ oxmultilang ident="SERVICE" }]</h6>
		[{strip}]
<ul class="ym-vlist">
	<li><a id="link_footer_contact" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=contact" }]">[{ oxmultilang ident="INC_FOOTER_CONTACT" }]</a></li>
        	<li><a id="link_footer_help" href="[{ $oViewConf->getHelpPageLink() }]">[{ oxmultilang ident="INC_FOOTER_HELP" }]</a></li>
        	[{*<li><a id="link_footer_guestbook" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=guestbook" }]">[{ oxmultilang ident="INC_FOOTER_GUESTBOOK" }]</a></li>*}]
           <li><a id="link_footer_links" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=links" }]">[{ oxmultilang ident="INC_FOOTER_LINKS" }]</a></li>
            [{oxifcontent ident="oximpressum" object="oCont"}]
            <li><a id="link_footer_impressum" href="[{ $oCont->getLink() }]">[{ $oCont->oxcontents__oxtitle->value }]</a></li>
            [{/oxifcontent}]
            [{oxifcontent ident="oxagb" object="oCont"}]
            <li><a id="link_footer_terms" href="[{ $oCont->getLink() }]" rel="nofollow">[{ $oCont->oxcontents__oxtitle->value }]</a></li>
            [{/oxifcontent}]
            [{oxhasrights ident="TOBASKET"}]
            <li><a id="link_footer_basket" href="[{ oxgetseourl ident=$oViewConf->getBasketLink() }]" rel="nofollow">[{ oxmultilang ident="INC_FOOTER_CART" }]</a></li>
            [{/oxhasrights}]
            <li><a id="link_footer_account" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account" }]" rel="nofollow">[{ oxmultilang ident="INC_FOOTER_MYACCOUNT" }]</a></li>
            <li><a id="link_footer_noticelist" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_noticelist" }]" rel="nofollow"> [{ oxmultilang ident="INC_FOOTER_MYNOTICELIST" }]</a></li>
            [{if $oViewConf->getShowWishlist()}]
            <li><a id="link_footer_wishlist" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_wishlist" }]" rel="nofollow"> [{ oxmultilang ident="INC_FOOTER_MYWISHLIST" }]</a></li>
            <li><a href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=wishlist" params="wishid="|cat:$oView->getWishlistUserId() }]" rel="nofollow">[{ oxmultilang ident="INC_FOOTER_PUBLICWISHLIST" }]</a></li>
            [{/if}]
		</ul>
	[{/strip}]
</div>