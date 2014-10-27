[{*
#########################################################################
#	$Id: 568a9eb394d3d986bc3041ef8c6d8be707e509ac $
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

[{assign var="template_title" value="MOREDETAILS_POPUP_TITLE"|oxmultilangassign}]
[{include file="layout/header_plain.tpl" title=$template_title location=$template_title}]


[{include file="inc/popup_zoom.tpl" aZoomPics=$oView->getArtZoomPics() iZoomPic=$oView->getActPictureId() popup=false product=$oView->getProduct()}]


[{insert name="oxid_tracker" title=$template_title }]
[{include file="layout/footer_plain.tpl"}]
