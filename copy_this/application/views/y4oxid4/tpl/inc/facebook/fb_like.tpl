[{*
#########################################################################
#	$Id: 12b957b95d63588b7ad33a832ac1d8949497df35 $
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
[{if $oView->isActive('FbLike') && $oViewConf->getFbAppId()}]
        <br><br>
         <fb:like href="[{$oView->getCanonicalUrl()}]" layout="standard" show_faces="false" width="270" action="like" colorscheme="light"></fb:like>
        [{/if}]