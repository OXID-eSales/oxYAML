[{*
#########################################################################
#	$Id: cec975cf11a816af228e5fa8d018e3f076495732 $
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
[{assign var="currency" value=$oView->getActCurrency() }]
<div class="ym-grid">
[{foreach from=$list name=rightlist item=_product}]
	<div class="ym-g38 ym-gl">
		<div class="ym-gbox">
			[{ assign var="sRightListArtTitle" value="`$_product->oxarticles__oxtitle->value` `$_product->oxarticles__oxvarselect->value`" }]
      		<a id="[{$test_Type}]_pic_[{$_product->oxarticles__oxid->value}]" href="[{$_product->getMainLink()}]" >
          		<img src="[{$_product->getIconUrl()}]" alt="[{ $sRightListArtTitle|strip_tags }]" class="flexible bordered">
      		</a>
		</div>
	</div>
	<div class="ym-g62 ym-gr">
		<div class="ym-gbox">
			<a id="[{$test_Type}]_Title_[{$_product->oxarticles__oxid->value}]" href="[{$_product->getMainLink()}]" class="arttitle">[{ $sRightListArtTitle|strip_tags }]</a><br />
			[{if $_product->getFPrice()}]
                <b id="[{$test_Type}]_Price_[{$_product->oxarticles__oxid->value}]">[{ $_product->getFPrice() }] [{ $currency->sign}]</b><a href="#delivery_link" rel="nofollow">*</a>
            [{/if}]
		</div>
	</div>
	<div class="ym-clearfix"></div>
  [{/foreach}]
</div>