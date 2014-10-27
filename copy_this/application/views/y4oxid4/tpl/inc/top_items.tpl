[{*
#########################################################################
#	$Id: da2ac5c24733165a74476270e088c3ebfde5cb67 $
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
[{assign var="currency" value=$oView->getActCurrency()}]
  <div class="ym-grid">
  [{foreach from=$oView->getTop5ArticleList() item=_product}]
  
  <div class="ym-g38 ym-gl">
  [{ assign var="sTop5ArtTitle" value="`$_product->oxarticles__oxtitle->value` `$_product->oxarticles__oxvarselect->value`" }]
      <div class="ym-gbox">
      <a id="Top5Pic_[{$_product->oxarticles__oxid->value}]" href="[{$_product->getMainLink()}]">
          <img src="[{$_product->getIconUrl()}]" alt="[{ $sTop5ArtTitle|strip_tags }]" class="flexible bordered">
      </a>
      </div>
  </div>
  <div class="ym-g62 ym-gr">
  	<div class="ym-gbox">
  		<a id="Top5Title_[{$_product->oxarticles__oxid->value}]" href="[{$_product->getMainLink()}]">
     			[{ $sTop5ArtTitle|strip_tags}]
     	</a>
      [{oxhasrights ident="SHOWARTICLEPRICE"}]
      [{if $_product->getFPrice()}]
          [{assign var="currency" value=$oView->getActCurrency() }]
          <b id="Top5Price_[{$_product->oxarticles__oxid->value}]">[{ $_product->getFPrice() }] [{ $currency->sign}]<a href="#delivery_link" rel="nofollow">*</a></b>
      [{/if}]
      [{/oxhasrights}]
      </div>
   </div>
   
   <div class="ym-clearfix"></div>
  [{/foreach}]
</div>