[{*
#########################################################################
#	$Id: 12471f9903ef40d226da042a3f9aaeb4fde21d85 $
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

<div class="ym-grid">
	[{foreach from=$oView->getBargainArticleList() item=_product name=bargainList}]
	<div class="ym-g38 ym-gl">
	[{ assign var="sBargainArtTitle" value="`$_product->oxarticles__oxtitle->value` `$_product->oxarticles__oxvarselect->value`" }]
		<div class="ym-gbox">
		<a id="picBargain_[{$smarty.foreach.bargainList.iteration}]" href="[{$_product->getMainLink()}]">
        	<img src="[{$_product->getIconUrl()}]" alt="[{ $sBargainArtTitle|strip_tags }]" class="flexible bordered">
    	</a>
    	</div>
	</div>
	<div class="ym-g62 ym-gr">
		<div class="ym-gbox">
			<a id="titleBargain_[{$smarty.foreach.bargainList.iteration}]" href="[{$_product->getMainLink()}]" class="title">[{ $sBargainArtTitle|strip_tags }]</a>
      [{oxhasrights ident="SHOWARTICLEPRICE"}]
      [{if $_product->getFPrice()}]
          [{assign var="currency" value=$oView->getActCurrency() }]
          <br />
          <b id="priceBargain_[{$smarty.foreach.bargainList.iteration}]" class="darkred">[{ $_product->getFPrice() }] [{ $currency->sign}]<a href="#delivery_link" rel="nofollow">*</a></b>
      [{/if}]
      [{/oxhasrights}]
		</div>
	</div>
	<div class="ym-clearfix"></div>
	[{/foreach}]
</div>