[{*
#########################################################################
#	$Id: 85b636568c045c281d6100b8dbbd8bc1a3d8f3f1 $
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

[{oxid_include_widget cl="oxwArticleDetails" _parent=$oView->getClassName() nocookie=1 force_sid=$force_sid _navurlparams=$oViewConf->getNavUrlParams() _object=$oView->getProduct() anid=$oViewConf->getActArticleId() iPriceAlarmStatus=$oView->getPriceAlarmStatus() sorting=$oView->getSortingParameters() skipESIforUser=1}]