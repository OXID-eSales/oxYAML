[{*
#########################################################################
#	$Id: 1a2342d53d739ab93aa4d5b02aed2a1b078a97af $
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
[{if $oView->isActive('FbShare') && $oViewConf->getFbAppId()}]
        <br><br><br>
        <fb:share-button type="button"></fb:share-button>
        [{/if}]

