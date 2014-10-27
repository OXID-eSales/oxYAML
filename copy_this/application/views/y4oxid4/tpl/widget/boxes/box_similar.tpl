[{*
#########################################################################
#	$Id: 6c6e124cb6f96a0d2f63a0859eda286f7bf155ac $
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
<div class="box_listings">
	<h6 class="ym-vlist">[{ oxmultilang ident="INC_RIGHTITEM_SIMILARPRODUCTS" }]</h6>
	<div class="body">
		<div class="ym-gbox">
		[{include file="inc/rightlist.tpl" list=$oView->getSimilarProducts() altproduct=$oView->getProduct() test_Type=similarlist}]
		</div>
	</div>
</div>