[{*
#########################################################################
#	$Id: 3dea8ed29b9cf6c425adb7c57d65e78d73642818 $
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
<!-- ox_mod01 details -->
[{assign var="currency" value=$oView->getActCurrency() }]
[{assign var="product" value=$oView->getProduct() }]

[{* Product title *}]
[{block name="details_productmain_title"}]
<h1 id="product_name" class="fn">[{$product->oxarticles__oxtitle->value}] [{$product->oxarticles__oxvarselect->value}]</h1>
[{ if $product->getDeliveryDate() }]
<div class="box info">
	[{ oxmultilang ident="DETAILS_AVAILABLEON" }] [{ $product->getDeliveryDate() }]
</div>
[{/if}]
[{/block}]
[{*socialbookmark url=$products_link title=$products_name*}]
<div class="ym-grid">
	<div id="pic_cont" class="ym-g50 ym-gl">
		<div class="ym-gbox-left">
		[{* article picture with zoom *}]
		[{block name="details_productmain_zoom"}]
			[{assign var="aZoomPics" value=$oView->getZoomPics() }]
        	[{assign var="iZoomPic" value=$oView->getActZoomPic() }]
			<a href="[{$product->getZoomPictureUrl($iZoomPic)}]" class="jqzoom ym-grid" rel="gal1" >
			<img src="[{ $oView->getActPicture() }]" class="flexible bordered">
			</a>
			<div class="ym-clearfix"></div>
			[{if $oView->showZoomPics() }]
				[{oxscript include="javascript/widgets/oxmodalpopup.js" priority=10 }]
				[{oxscript add="$('#zoomTrigger').oxModalPopup({target:'#zoomModal'});"}]
				<a id="zoomTrigger" rel="nofollow" href="#"><img src="[{$oViewConf->getImageUrl()}]zoom.png" alt="[{$oxcmp_shop->oxshops__oxtitleprefix->value}]"  align="absmiddle" >&nbsp;&nbsp;Zoom</a>
			[{/if}]
    		[{/block}]
    		<div class="ym-clearfix"></div>
    		[{* article more pictures *}]
    		[{block name="details_productmain_morepics"}]
				[{include file="page/details/inc/morepics.tpl"}]
			[{/block}]
	 </div>[{*ende .ym-gbox-left*}]
	</div>[{*ende #pic_cont*}]
	<div id="info_cont" class="ym-g50 ym-gr">
	<div class="ym-gbox-right">
	
	[{*BEGINN RECHTE SEITE*}]
	<form action="[{ $oViewConf->getSelfActionLink() }]" method="post">

    <div>
    [{ $oViewConf->getHiddenSid() }]
    [{ $oViewConf->getNavFormParams() }]
    <input type="hidden" name="cl" value="[{ $oViewConf->getActiveClassName() }]">
    <input type="hidden" name="fnc" value="tobasket">
    <input type="hidden" name="aid" value="[{ $product->oxarticles__oxid->value }]">
    <input type="hidden" name="anid" value="[{ $product->oxarticles__oxnid->value }]">
    </div>
	
	[{oxhasrights ident="SHOWARTICLEPRICE"}]
        <div class="cost bordered">
        [{block name="details_productmain_tprice"}]
            [{if $product->getFTPrice() > $product->getFPrice()}]
                <b class="old">[{ oxmultilang ident="DETAILS_REDUCEDFROM" }] <del>[{ $product->getFTPrice()}] [{ $currency->sign}]</del></b>
            [{/if}]
        [{/block}]
        [{block name="details_productmain_price"}]
            [{if $product->getFPrice() }]
                <h3 id="product_price">
                [{if $product->getFTPrice() > $product->getFPrice()}]
                <small>[{ oxmultilang ident="DETAILS_NOWONLY" }]</small>&nbsp;<span class="darkred">
                [{/if}]
                [{ $product->getFPrice() }] [{ $currency->sign}]
                [{if $product->getFTPrice() > $product->getFPrice()}]</span>
                [{/if}]
                </h3><br />
            [{/if}]
            [{oxifcontent ident="oxdeliveryinfo" object="oCont"}]
            <sup class="dinfo">
                [{assign var="_oPrice" value=$product->getPrice()}]
                [{if $_oPrice && $_oPrice->getVat() > 0 }]
                [{ oxmultilang ident="DETAILS_PLUSSHIPPING" }]
                [{else}]
                [{ oxmultilang ident="DETAILS_PLUSSHIPPING_PLUS" }]
                [{/if}]
                <a href="[{ $oCont->getLink() }]" rel="nofollow">[{ oxmultilang ident="DETAILS_PLUSSHIPPING2" }]</a></sup>
            [{/oxifcontent}]
        [{/block}]
        </div>
    [{/oxhasrights}]
	
	<div id="cont_info_block" class="ym-form ym-columnar">
[{* ARTIKELNUMMER *}]
				[{block name="details_productmain_artnumber"}]
                	<div class="ym-fbox-text">
						<label for="message">[{oxmultilang ident="PRODUCT_NO" suffix="COLON" }]</label>
						<span class="ym-message">[{$oDetailsProduct->oxarticles__oxartnum->value}]</span>
					</div>
				[{/block}]
				[{block name="details_productmain_stockstatus"}]
                    [{if $oDetailsProduct->getStockStatus() == -1}]
                    	<div class="ym-fbox-text">
							<label for="message">[{ oxmultilang ident="LAGERSTATUS" }]</label>
							<span class="ym-message">
								<img src="[{$oViewConf->getImageUrl()}]stockrules/rule_4.gif" ><br /><br />
								<sub>
								[{ if $oDetailsProduct->oxarticles__oxnostocktext->value  }]
									[{ $oDetailsProduct->oxarticles__oxnostocktext->value  }]
								[{elseif $oViewConf->getStockOffDefaultMessage() }]
									[{oxmultilang ident="MESSAGE_NOT_ON_STOCK"}]
									[{if $oDetailsProduct->getDeliveryDate()}]
									<br>
										[{oxmultilang ident="AVAILABLE_ON"}] [{$oDetailsProduct->getDeliveryDate()}]
									[{/if}]
								[{/if}]
								</sub>
							</span>
						</div>
                    [{elseif $oDetailsProduct->getStockStatus() == 1}]
                        <div class="ym-fbox-text">
							<label for="message">[{ oxmultilang ident="LAGERSTATUS" }]</label>
							<span class="ym-message">
								<img src="[{$oViewConf->getImageUrl()}]stockrules/rule_5.gif" ><br /><br />
								<sub>
								[{oxmultilang ident="LOW_STOCK"}]
								</sub>
							</span>
						</div>
                    [{elseif $oDetailsProduct->getStockStatus() == 0}]
                    	<div class="ym-fbox-text">
							<label for="message">[{ oxmultilang ident="LAGERSTATUS" }]</label>
								<span class="ym-message">
									<img src="[{$oViewConf->getImageUrl()}]stockrules/rule_1.gif" ><br /><br />
									<sub>
									[{ if $oDetailsProduct->oxarticles__oxstocktext->value  }]
										[{ $oDetailsProduct->oxarticles__oxstocktext->value  }]
									[{elseif $oViewConf->getStockOnDefaultMessage() }]
										[{oxmultilang ident="READY_FOR_SHIPPING"}]
									[{/if}]
									</sub>
								</span>
							</div>
                    [{/if}]
                [{/block}]
                [{* Lieferzeit *}]
                [{block name="details_productmain_deliverytime"}]
                    [{oxhasrights ident="TOBASKET"}]
                        [{if $oDetailsProduct->isBuyable() }]
                        	[{include file="page/details/inc/deliverytime.tpl"}]
                        [{/if}]
                    [{/oxhasrights}]
                [{/block}]
                [{* Gewicht *}]
                [{block name="details_productmain_weight"}]
                    [{if $oDetailsProduct->oxarticles__oxweight->value}]
                    	<div class="ym-fbox-text">
							<label for="message">[{ oxmultilang ident="LAGERSTATUS" }]</label>
								<span id="productWeight" class="ym-message">[{oxmultilang ident="WEIGHT" suffix="COLON" }] [{$oDetailsProduct->oxarticles__oxweight->value}] [{oxmultilang ident="KG"}]</span>
                    	</div>
                    [{/if}]
                [{/block}]
                [{* VPE *}]
                [{block name="details_productmain_priceperunit"}]
                    [{if $oDetailsProduct->getUnitPrice()}]
                    <div class="ym-fbox-text">
						<label for="message">[{ oxmultilang ident="VPE" }]</label>
                        <span id="productPriceUnit" class="ym-message">[{$oDetailsProduct->getUnitQuantity()}] [{$oDetailsProduct->getUnitName()}] | [{oxprice price=$oDetailsProduct->getUnitPrice() }] [{$currency->sign}]/[{$oDetailsProduct->getUnitName()}] </span>
                    </div>
                    [{/if}]
                [{/block}]
	
		[{if $product->oxarticles__oxexturl->value}]
        <a id="product_exturl" class="details" href="http://[{ $product->oxarticles__oxexturl->value }]"><b>[>]
        [{if $product->oxarticles__oxurldesc->value }]
            [{$product->oxarticles__oxurldesc->value }]
        [{else}]
            [{$product->oxarticles__oxexturl->value }]
        [{/if}]
        </b></a>
        [{oxscript add="oxid.blank('product_exturl');"}]
    [{/if}]
	
    
[{if $oView->ratingIsActive()}]
[{block name="details_productmain_ratings"}]
    <div class="ym-fbox-text">
    <label for="message">[{ oxmultilang ident="BEWERTUNG" }]</label>
    [{ if !$oxcmp_user}]
      [{assign var="_star_title" value="DETAILS_LOGGIN"|oxmultilangassign }]
    [{ elseif !$oView->canRate() }]
      [{assign var="_star_title" value="DETAILS_ALREADYRATED"|oxmultilangassign }]
    [{ else }]
      [{assign var="_star_title" value="DETAILS_RATETHISARTICLE"|oxmultilangassign }]
    [{/if}]
    [{math equation="x*y" x=20 y=$product->getArticleRatingAverage() assign="currentRate" }]
    <span class="ym-message">
    <ul id="star_rate_top" class="rating">
      <li class="current_rate" style="width: [{$currentRate}]%;"><a title="[{$_star_title}]"><b class="average">[{$product->oxarticles__oxrating->value}]</b></a></li>
      [{section name=star start=1 loop=6}]
      <li class="s[{$smarty.section.star.index}]"><a rel="nofollow" [{ if !$oxcmp_user}]href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account" params="anid=`$product->oxarticles__oxnid->value`"|cat:"&amp;sourcecl="|cat:$oViewConf->getActiveClassName()|cat:$oViewConf->getNavUrlParams() }]"[{ elseif $oView->canRate() }]href="#review" onclick="oxid.review.rate([{$smarty.section.star.index}]);"[{/if}] title="[{$_star_title}]"><b>[{$smarty.section.star.index}]</b></a></li>
      [{/section}]
    </ul>

    [{*if $product->oxarticles__oxratingcnt->value}]
    <br />
    <sub>
      <a id="star_rating_text" rel="nofollow" href="#review" onclick="oxid.review.show();" class="fs10 link2"><span class="count">[{$product->oxarticles__oxratingcnt->value}]</span> [{if $product->oxarticles__oxratingcnt->value == 1}][{ oxmultilang ident="DETAILS_RATINGREZULT" }][{else}][{ oxmultilang ident="DETAILS_RATINGREZULTS" }] [{/if}]</a></sub>
    [{else}]
    <br /><sub>
      <a id="star_rating_text" rel="nofollow" href="#review" onclick="oxid.review.show();" class="fs10 link2">[{ oxmultilang ident="DETAILS_NORATINGS" }]</a>
    </sub>[{/if*}]
    </span>
    </div>
    [{/block}]
[{/if}]
[{* Hersteller *}]
				[{ assign var="oManufacturer" value=$oView->getManufacturer()}]
				[{if ($oManufacturer && $oView->getListType()!='manufacturer') }]
					<div class="ym-fbox-text">
					<label for="message">[{ oxmultilang ident="DETAILS_MANUFACTURER" suffix="COLON"}]</label>
						<span class="ym-message">
						[{*if $oManufacturer->oxmanufacturers__oxicon->value}]
							<img src="[{$oManufacturer->getIconUrl()}]" alt="[{ $oManufacturer->oxmanufacturers__oxtitle->value}]" height="22">
						[{/if*}]
						[{if !$oManufacturer->isReadOnly()}]
							<a id="manufacturer_[{$oManufacturer->oxmanufacturers__oxid->value}]" class="brand" href="[{ $oManufacturer->getLink() }]">[{ $oManufacturer->oxmanufacturers__oxtitle->value}]</a>
						[{else}]
							[{ $oManufacturer->oxmanufacturers__oxtitle->value}]
						[{/if}]
						</span>
					</div>
				[{else}]
					[{ assign var="oVendor" value=$oView->getVendor()}]
					[{if ($oVendor && $oView->getListType()!='vendor') }]
						<div class="ym-fbox-text">
							<label for="message">[{ oxmultilang ident="DETAILS_VENDOR" suffix="COLON"}]</label>
							<span class="ym-message">
				            [{*if $oVendor->oxvendor__oxicon->value}]
				                <img src="[{$oVendor->getIconUrl()}]" alt="[{ $oVendor->oxvendor__oxtitle->value}]">
				            [{/if*}]
				            [{if !$oVendor->isReadOnly()}]
				                <a id="vendor_[{$oVendor->oxvendor__oxid->value}]" href="[{ $oVendor->getLink() }]">[{ $oVendor->oxvendor__oxtitle->value}]</a>
				            [{else}]
				                [{ $oVendor->oxvendor__oxtitle->value}]
				            [{/if}]
						</span>
					</div>
					[{/if}]
				[{/if}]
				[{ assign var="oCategory" value=$oView->getCategory()}]
		        [{if $oCategory && $oView->getListType()!='list'}]
		        <div class="ym-fbox-text">
		            <label for="message">[{ oxmultilang ident="DETAILS_CATEGORY" suffix="COLON"}]</label>
		            <span class="ym-message">
		            <a id="category_[{$oCategory->oxcategories__oxid->value }]" class="category" href="[{ $oCategory->getLink() }]">[{ $oCategory->oxcategories__oxtitle->value }]</a>
		            </span>
		        </div>
		        [{/if}]
		        [{*BEGINN FILTER Attribute*}]
		        [{ if $oView->getAttributes() }]
					<h6 id="specsHeader" class="textl">[{ oxmultilang ident="DETAILS_SPECIFICATION" }]</h6>
						[{foreach from=$oView->getAttributes() item=oAttr name=attribute}]
						<div class="ym-fbox-text [{if $smarty.foreach.attribute.last}]last[{/if}]">
							<label for="message" id="attrTitle_[{$smarty.foreach.attribute.iteration}]">[{ $oAttr->title }]:</label>
							<span class="ym-message" id="attrValue_[{$smarty.foreach.attribute.iteration}]">[{ $oAttr->value }]</span>
						</div>
					[{/foreach}]
				[{/if}]
		        [{*ENDE FILTER Attribute*}]    
		        
		        [{*beginn Warenkorb Button*}]
    <div class="ym-fbox-button">
    
    [{*beginn SELECTLISTEN*}]
    [{*
    DEAKTIVIERT SELECTLISTEN SOLLTEN NICHTMEHR BENUTZT WERDEN
	STATTDESSEN LIEBER SINGELVARIANTEN EINSETZEN     
    *}]
    [{* selection lists *}]
        [{*block name="details_productmain_selectlists"}]
            [{if $oViewConf->showSelectLists()}]
                [{assign var="oSelections" value=$oDetailsProduct->getSelections()}]
                [{if $oSelections}]
                    [{foreach from=$oSelections item=oList name=selections}]
                            [{include file="widget/product/selectbox.tpl" oSelectionList=$oList sFieldName="sel" iKey=$smarty.foreach.selections.index blHideDefault=true sSelType="seldrop"}]
                    [{/foreach}]
                [{/if}]
            [{/if}]
        [{/block*}]
    [{*ende SELECTLISTEN*}]
	


[{*BOF Varianten*}]
[{*if $product->getVariants() || $oView->drawParentUrl()*}]
[{if $product->getVariants()}]

    <h6 id="variantHeader" class="textl">
        [{*if $oView->drawParentUrl()}]
            <a id="backToParent" href="[{$oView->getParentUrl()}]">[{oxmultilang ident="INC_PRODUCT_VARIANTS_BACKTOMAINPRODUCT"|oxmultilangassign|cat:" "|cat:$oView->getParentName() }]</a>
        [{else*}]
            [{oxmultilang ident="INC_PRODUCT_VARIANTS_VARIANTSELECTIONOF"|oxmultilangassign|cat:" `$product->oxarticles__oxtitle->value`" }]
        [{*/if*}]
    </h6>
    <div class="variantslist">

    [{* if $oView->drawParentUrl() && count( $oView->getVariantList() ) *}]
      <b id="variantHeader1">[{ oxmultilang ident="INC_PRODUCT_VARIANTS_OTHERVARIANTSOF" }] [{* $oView->getParentName() *}]</b>
      <br>
      <div class="txtseparator inbox"></div>
    [{*/if*}]

    [{include file="inc/variant_selector.tpl"}]
    
 	[{if !$oView->isMdVariantView()}]
      [{ include file="inc/product.tpl" type="singel_variant" product=$product size="thin" head="DETAILS_CURRENTPRODUCT"|oxmultilangassign testid="current"}]
    [{/if}]	
    
</div>

[{/if}]
[{*EOF Varianten*}]

    [{oxhasrights ident="TOBASKET"}]
        [{ if $product->isBuyable() }]
        	
			
			
            <div class="ym-fbox-text cartbtn">
            
            <input id="AmountToBasket" type="text" name="am" value="1" size="3" >
            <input id="toBasket" type="submit" value="[{if $size=='small'}][{oxmultilang ident="INC_PRODUCTITEM_ADDTOCARD3" }][{else}][{oxmultilang ident="INC_PRODUCTITEM_ADDTOCARD2"}][{/if}]" onclick="oxid.popup.load();" class="save">
            </div>
            [{if $oView->isPersParam()}]
        	<div class="ym-clearfix"></div>
            <div class="ym-fbox-text persparam">
                <label>[{ oxmultilang ident="DETAILS_LABEL" }]</label>
                <input type="text" name="persparam[details]" value="[{ $product->aPersistParam.text }]" size="20">
            </div>
            [{/if}]
        [{/if}]
    [{/oxhasrights}]
	
	</div>[{*ende Warenkorb Button*}]
	</div>[{*ende #cont_info_block .ym-form*}]
	</form>[{*ende form*}]
	</div>[{*ende ym-box-right*}]
	</div>[{*ende div info_cont*}]
	
</div>[{*ende div info_cont*}]

<div id="social_details" ></div>
    
<div class="jquery_tabs">
    		[{oxhasrights ident="SHOWLONGDESCRIPTION"}]
				<h4>[{ oxmultilang ident="DESC" }]</h4>
				<div class="tabbody">
					<div class="ym-gbox">
						[{oxeval var=$product->getLongDescription()}]
					</div>
				</div>
			[{/oxhasrights}]
	
	[{ if $oView->getAccessoires() }]
	<h4>[{ oxmultilang ident="INC_RIGHTITEM_ACCESSORIES" }]</h4>
	<div class="tabbody">
			<div class="ym-gbox ym-grid ym-linearize">
				[{foreach from=$oView->getAccessoires() item=accessoiresproduct name=test_accessoireslist}]
				[{cycle values='ym-gl,ym-gl,ym-gr' assign=a name=Accessoires}] 
					<div class="ym-g33 [{$a}] productBox">
						[{include file="inc/product.tpl" type="productlisting" product=$accessoiresproduct test_Type=accessoires}]
					</div>
					[{if $a=='ym-gr'}]
    				<div class="ym-clearfix"></div>
    				[{/if}] 
				[{/foreach}]
			</div>
		</div>
	[{/if}]
	
	[{ if $oView->getCrossSelling() }]
	<h4>[{ oxmultilang ident="INC_RIGHTITEM_HAVEPOUSEEN" }]</h4>
		<div class="tabbody">
			<div class="ym-gbox ym-grid ym-linearize">
				[{foreach from=$oView->getCrossSelling() item=crosssellingproduct name=test_crosssellinglist}]
				[{cycle values='ym-gl,ym-gl,ym-gr' assign=n name=CrossSelling}] 
					<div class="ym-g33 [{$n}] productBox">
						[{include file="inc/product.tpl" type="productlisting" product=$crosssellingproduct test_Type=cross}]
					</div>
					[{if $n=='ym-gr'}]
    				<div class="ym-clearfix"></div>
    				[{/if}] 
				[{/foreach}]
			</div>
		</div>
	[{/if}]

	
	[{if $oView->isReviewActive() }]
    <h4>[{ oxmultilang ident="BEWERTUNGEN" }]</h4>
    <div class="tabbody">
    	<div class="ym-gbox">
		<div id="review">
  [{ if $oxcmp_user }]
    <form action="[{ $oViewConf->getSelfActionLink() }]" method="post" id="rating">
        <div id="write_review">
            [{ if $oView->canRate() }]
            <input type="hidden" name="artrating" value="0">
            <ul id="star_rate" class="rating">
                <li id="current_rate" class="current_rate" style="width: 0px;"><a title="[{$_star_title}]"><b>1</b></a></li>
                [{section name=star start=1 loop=6}]
                <li class="s[{$smarty.section.star.index}]"><a rel="nofollow" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=review" params="anid=`$product->oxarticles__oxnid->value`&amp;"|cat:$oViewConf->getNavUrlParams() }]" onclick="oxid.review.rate([{$smarty.section.star.index}]);return false;" title="[{$smarty.section.star.index}] [{if $smarty.section.star.index==1}][{ oxmultilang ident="DETAILS_STAR" }][{else}][{ oxmultilang ident="DETAILS_STARS" }][{/if}]"><b>[{$smarty.section.star.index}]</b></a></li>
                [{/section}]
            </ul>
            [{/if}]
            [{ $oViewConf->getHiddenSid() }]
            [{ $oViewConf->getNavFormParams() }]
            [{oxid_include_dynamic file="dyn/formparams.tpl" }]
            <input type="hidden" name="fnc" value="savereview">
            <input type="hidden" name="cl" value="[{$oViewConf->getActiveClassName()}]">
            <input type="hidden" name="anid" value="[{ $product->oxarticles__oxid->value }]">
            <textarea cols="102" rows="15" name="rvw_txt" class="fullsize"></textarea><br>
            <input id="reviewSave" type="submit" value="[{ oxmultilang ident="DETAILS_SAVEREVIEW" }]" class="ym-button">
        </div>
    </form>
    <a id="write_new_review" rel="nofollow" class="ym-button ym-add" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=review" params="anid=`$product->oxarticles__oxnid->value`&amp;"|cat:$oViewConf->getNavUrlParams() }]" onclick="oxid.review.show();return false;">[{ oxmultilang ident="DETAILS_WRITEREVIEW" }]</a>
  [{else}]
    <a id="Reviews_login" rel="nofollow" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account" params="anid=`$product->oxarticles__oxnid->value`"|cat:"&amp;sourcecl="|cat:$oViewConf->getActiveClassName()|cat:$oViewConf->getNavUrlParams() }]" class="ym-button ym-add">[{ oxmultilang ident="DETAILS_LOGGINTOWRITEREVIEW" }]</a>
  [{/if}]

  [{if $oView->getReviews() }]
   [{foreach from=$oView->getReviews() item=review name=ReviewsCounter}]

    <dl class="review hreview">
        <dt>
            <span class="left"><b id="ReviewName_[{$smarty.foreach.ReviewsCounter.iteration}]" class="reviewer">[{ $review->oxuser__oxfname->value }]</b> [{ oxmultilang ident="DETAILS_WRITES" }]</span>
            <span class="right param"><b id="ReviewTime_[{$smarty.foreach.ReviewsCounter.iteration}]">[{ oxmultilang ident="DETAILS_TIME" }]</b>&nbsp;[{ $review->oxreviews__oxcreate->value|date_format:"%H:%M" }]</span>
            <span class="right param"><b id="ReviewDate_[{$smarty.foreach.ReviewsCounter.iteration}]">[{ oxmultilang ident="DETAILS_DATE" }]</b>&nbsp;[{ $review->oxreviews__oxcreate->value|date_format:"%d.%m.%Y" }]</span>
            <span class="right param">[{if $review->oxreviews__oxrating->value }]<b id="ReviewRating_[{$smarty.foreach.ReviewsCounter.iteration}]">[{ oxmultilang ident="DETAILS_RATING" }]</b>&nbsp;<span class="rating">[{ $review->oxreviews__oxrating->value }]</span>[{/if}]</span>
        </dt>
        <dd class="item">
            <span class="dtreviewed">[{ $review->oxreviews__oxcreate->value|date_format:"%Y-%m-%d %H:%M:%S" }]</span>
            <span class="fn">[{$product->oxarticles__oxtitle->value}] [{$product->oxarticles__oxvarselect->value}]</span>
            [{if $product->getFPrice() }]
            <span class="pricerange">[{ $product->getFPrice() }] [{ $currency->sign}]</span>
            [{/if}]
        </dd>
        <dd id="ReviewText_[{$smarty.foreach.ReviewsCounter.iteration}]" class="summary">
            [{ $review->oxreviews__oxtext->value }]
        </dd>

    </dl>

   [{/foreach}]
  [{else}]<br /><br />
    [{ oxmultilang ident="DETAILS_REVIEWNOTAVAILABLE" }]
  [{/if}]
</div>
	
		</div>
	</div>
    [{/if}]
    [{*
    <h4>[{ oxmultilang ident="TAGS" }]</h4>
    <div class="tabbody">
    	<div class="ym-gbox">
    [{include file="inc/tags.tpl"}]
    </div>
    </div>
	*}] 
	[{if $product->oxarticles__oxfile->value}]
        <a id="productFile" href="[{$product->getFileUrl()}][{ $product->oxarticles__oxfile->value }]"><b>[>] [{ $product->oxarticles__oxfile->value }]</b></a>
        [{oxscript add="oxid.blank('productFile');"}]
    [{/if}][{*downloads*}]
	
    [{*cross_selling*}]
</div>[{*ende div jquery_tabs*}]

<div>
  [{include file="page/details/inc/zoompopup.tpl"}]
</div>