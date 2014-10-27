[{*
#########################################################################
#	$Id: 5bc61e95bc8cb3c82a17fde9727f7287a89c2797 $
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
[{if $oView->isMdVariantView()}]
    [{oxvariantselect value=$product->getMdVariants() separator=" " artid=$product->getId() parentVarName=$product->oxarticles__oxvarname->rawValue}]
  
  <div style="display: none">
  [{foreach from=$oView->getVariantList() name=variants item=variant_product}]
    <div id=mdVariant_[{$variant_product->getId()}]>
      [{include file="inc/product.tpl" type="details_variant" product=$variant_product altproduct=$product->getId() class=lastinlist testid="Variant_"|cat:$variant_product->oxarticles__oxid->value}]
    </div>
  [{/foreach}]
    <div id=mdVariant_[{$product->getId()}]>
      [{include file="inc/product.tpl" type="details_variant" product=$product altproduct=$product->getId() class=lastinlist testid="Variant_"|cat:$variant_product->oxarticles__oxid->value}]
    </div>
  </div>

  <div id="mdVariantBox"></div>

  
    
  [{oxscript add="oxid.mdVariants.mdAttachAll();"}]
  [{oxscript add="oxid.mdVariants.showMdRealVariant();"}]

[{/if}]