[{*
#########################################################################
#	$Id: 588b437a6811203a51ead91a27a6444c876e46a0 $
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

[{assign var="template_title" value="ACCOUNT_NOTICELIST_TITLE"|oxmultilangassign }]

[{include file="layout/header.tpl" title=$template_title location="ACCOUNT_NOTICELIST_LOCATION"|oxmultilangassign|cat:$template_title}]

[{include file="inc/account_header.tpl" active_link=5 }]

    <br>
    [{if $oView->getNoticeProductList() }]

        [{assign var="noticelist_head" value="ACCOUNT_NOTICELIST_MYWISHLIST"|oxmultilangassign}]

        [{foreach from=$oView->getNoticeProductList() name=noticelist item=product}]

          [{if $smarty.foreach.noticelist.first && !$smarty.foreach.noticelist.last }]
            [{assign var="noticelist_class" value="firstinlist"}]
          [{elseif $smarty.foreach.noticelist.last}]
            [{assign var="noticelist_class" value="lastinlist"}]
          [{else}]
            [{assign var="noticelist_class" value="inlist"}]
          [{/if}]
			
		<div id="productlisting_notice" class="ym-grid">
	[{foreach from=$oView->getAlsoBoughtTheseProducts() item=actionproduct}]
    [{cycle values='ym-gl,ym-gl,ym-gr' assign=n name=productlisting}]
    <div class="ym-g33 [{$n}]  productBox">
    [{include file="inc/product.tpl" type="productlisting" product=$product size="thin" head=$noticelist_head class=$noticelist_class removeFunction="tonoticelist" owishid=$oxcmp_user->oxuser__oxid->value testid="NoticeList_`$smarty.foreach.noticelist.iteration`"}]
        
    </div>
    [{if $n=='ym-gr'}]
    <div class="ym-clearfix"></div>
    [{/if}]
    [{/foreach}]
	</div>	
          

          [{assign var="noticelist_head" value=""}]
          [{if !$smarty.foreach.noticelist.last }]
            <div class="separator"></div>
          [{/if}]


        [{/foreach}]

    [{else }]
        
        <div class="ym-form ym-columnar linearize-form">
        <h6 id="smallHeader" class="boxhead">[{ oxmultilang ident="ACCOUNT_NOTICELIST_MYWISHLIST" }]</h6>
          <p>[{ oxmultilang ident="ACCOUNT_NOTICELIST_EMPTYWISHLIST" }]</p>
        </div>
    [{/if }]

   
        <form action="[{ $oViewConf->getSelfActionLink() }]" name="order" method="post">
          
              [{ $oViewConf->getHiddenSid() }]
              <input type="hidden" name="cl" value="start">
              <div class="textr">
                  <input id="BackToShop" class="ym-button" type="submit" value="[{ oxmultilang ident="ACCOUNT_NOTICELIST_BACKTOSHOP" }]">
              </div>
        </form>
[{insert name="oxid_tracker" title=$template_title }]
[{include file="layout/footer.tpl" }]
