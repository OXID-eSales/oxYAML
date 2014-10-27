[{*
#########################################################################
#	$Id: 6fa524a16c503f02e829380ec0efd91c95eba3f9 $
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

<form action="[{ $oViewConf->getSslSelfLink() }]" method="post">
  <div class="ym-form linearize-form ym-full">
      [{ $oViewConf->getHiddenSid() }]
      <input type="hidden" name="fnc" value="fill">
      <input type="hidden" name="cl" value="newsletter">
      [{if $oView->getProduct()}]
          [{assign var="product" value=$oView->getProduct() }]
          <input type="hidden" name="anid" value="[{ $product->oxarticles__oxnid->value }]">
      [{/if}]
		<div class="ym-fbox-text">
      		<label for="RightNewsLetterUsername">[{ oxmultilang ident="INC_CMP_NEWSLETTER_EMAIL" }]</label>
      		<input id="RightNewsLetterUsername" type="text" name="editval[oxuser__oxusername]" value="" class="txt">
		</div>
      <div class="textc">
      	<input id="RightNewsLetterSubmit" type="submit" name="send" value="[{ oxmultilang ident="INC_CMP_NEWSLETTER_SUBSCRIBE" }]" class="ym-button box_button_s">
      </div>
   </div>
</form>
