[{*
#########################################################################
#	$Id: 3d14e665183c4cd1f0652ae838ffcb8db1e42112 $
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
	<h6 class="ym-vlist">[{ oxmultilang ident="INC_RIGHTITEM_CUSTOMERWHO" }]</h6>
	<div class="body">
		<div class="ym-gbox">
		[{include file="inc/rightlist.tpl" list=$oView->getAlsoBoughtTheseProducts() altproduct=$oView->getProduct() test_Type=customerwho}]
		</div>
	</div>
</div>