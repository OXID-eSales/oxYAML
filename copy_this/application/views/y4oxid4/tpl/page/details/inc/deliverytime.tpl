[{*
#########################################################################
#	$Id: a81f0d54be06cbf98e981905a44ed7099c4ef02b $
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
[{if $oDetailsProduct->oxarticles__oxmindeltime->value || $oDetailsProduct->oxarticles__oxmaxdeltime->value}]
<div class="ym-fbox-text">
				<label for="message">[{oxmultilang ident="DELIVERYTIME_DELIVERYTIME" suffix="COLON"}]</label>
<span id="productDeliveryTime" class="ym-message">
[{if $oDetailsProduct->oxarticles__oxmindeltime->value && $oDetailsProduct->oxarticles__oxmindeltime->value != $oDetailsProduct->oxarticles__oxmaxdeltime->value}]
    [{$oDetailsProduct->oxarticles__oxmindeltime->value}] -
[{/if}]
[{if $oDetailsProduct->oxarticles__oxmaxdeltime->value}]
    [{assign var="unit" value=$oDetailsProduct->oxarticles__oxdeltimeunit->value}]
    [{assign var="ident" value=DELIVERYTIME_$unit}]
    [{if $oDetailsProduct->oxarticles__oxmaxdeltime->value > 1}]
        [{assign var="ident" value=$ident|cat:"S"}]
    [{/if}]
    [{oxmultilang ident=$ident args=$oDetailsProduct->oxarticles__oxmaxdeltime->value}]
[{/if}]
</span>
</div>
[{/if}]