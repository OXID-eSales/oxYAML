[{*
#########################################################################
#	$Id: 27be911a03803041b7d2eb783f9bdce7ff90f18f $
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
[{block name="details_relatedproducts_crossselling"}]
    [{if $oView->getCrossSelling()|count}]
        [{capture append="oxidBlock_productbar"}]
            [{include file="widget/product/boxproducts.tpl" _boxId="cross" _oBoxProducts=$oView->getCrossSelling() _sHeaderIdent="HAVE_YOU_SEEN" _sHeaderCssClass="lightHead"}]
        [{/capture}]
    [{/if}]
[{/block}]

[{block name="details_relatedproducts_similarproducts"}]
    [{ if $oView->getSimilarProducts()|count}]
        [{capture append="oxidBlock_productbar" }]
            [{include file="widget/product/boxproducts.tpl" _boxId="similar"  _oBoxProducts=$oView->getSimilarProducts() _sHeaderIdent="SIMILAR_PRODUCTS" _sHeaderCssClass="lightHead"}]
        [{/capture}]
    [{/if }]
[{/block}]

[{block name="details_relatedproducts_accessoires"}]
    [{ if $oView->getAccessoires()|count}]
        [{capture append="oxidBlock_productbar"}]
            [{include file="widget/product/boxproducts.tpl" _boxId="accessories" _oBoxProducts=$oView->getAccessoires() _sHeaderIdent="ACCESSORIES" _sHeaderCssClass="lightHead"}]
        [{/capture}]
    [{/if }]
[{/block}]

[{ if $oxidBlock_productbar}]
    <div id="relProducts" class="relatedProducts">
      [{foreach from=$oxidBlock_productbar item="_block"}]
        [{$_block}]
      [{/foreach}]
    </div>
[{/if }]