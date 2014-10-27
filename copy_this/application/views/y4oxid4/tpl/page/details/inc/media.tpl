[{*
#########################################################################
#	$Id: 3a73891196f3e418c476d1d0111c353bad390e73 $
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
[{oxscript add="$('a.js-external').attr('target', '_blank');"}]
[{if $oDetailsProduct->oxarticles__oxfile->value}]
  <a id="productFile" class="js-external" href="[{$oDetailsProduct->getFileUrl()}][{$oDetailsProduct->oxarticles__oxfile->value}]">[{$oDetailsProduct->oxarticles__oxfile->value}]</a>
[{/if}]

[{if $oView->getMediaFiles()}]
  <div>
    [{foreach from=$oView->getMediaFiles() item=oMediaUrl}]
      <p>[{$oMediaUrl->getHtml()}]</p>
    [{/foreach}]
  </div>
[{/if}]