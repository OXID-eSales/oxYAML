[{*
#########################################################################
#	$Id: 334234980e7ad804e410cc6eb63405b07ac9136d $
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
<!DOCTYPE HTML>
<html[{if $oView->getActiveLangAbbr()}] lang="[{ $oView->getActiveLangAbbr() }]"[{/if}] [{if $oViewConf->getFbAppId()}]xmlns:fb="http://www.facebook.com/2008/fbml"[{/if}]>
<head>
    [{assign var="_titlesuffix" value=$_titlesuffix|default:$oView->getTitleSuffix()}]
    [{assign var="_titleprefix" value=$_titleprefix|default:$oView->getTitlePrefix() }]
    [{assign var="title" value=$title|default:$oView->getTitle() }]
    <title>[{ $_titleprefix }][{if $title&& $_titleprefix }] | [{/if}][{$title|strip_tags}][{if $_titlesuffix}] | [{$_titlesuffix}][{/if}][{if $titlepagesuffix}] | [{$titlepagesuffix}][{/if}]</title>
    [{if $oViewConf->getViewThemeParam('YAML_Theme_mobile') == 'true'}]
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    [{/if}]
    <meta http-equiv="Content-Type" content="text/html; charset=[{$oView->getCharSet()}]">
    [{if $oView->noIndex() == 1 }]
    <meta name="ROBOTS" content="NOINDEX, NOFOLLOW">
    [{elseif $oView->noIndex() == 2 }]
    <meta name="ROBOTS" content="NOINDEX, FOLLOW">
    [{/if}]
    [{if $oView->getMetaDescription()}]<meta name="description" content="[{$oView->getMetaDescription()}]">[{/if}]
    [{if $oView->getMetaKeywords()}]<meta name="keywords" content="[{$oView->getMetaKeywords()}]">[{/if}]
    [{if $oViewConf->getFbAppId()}]        
        [{if $oViewConf->getActiveClassName() == 'details' }]   
            <meta property="og:type" content="product">            
            <meta property="og:image" content="[{$oView->getActPicture()}]">
            <meta property="og:url" content="[{$oView->getCanonicalUrl()}]">
	        <meta property="og:site_name" content="[{$oViewConf->getCurrentHomeDir()}]">
	        <meta property="fb:app_id" content="[{$oViewConf->getFbAppId()}]">
            <meta property="og:title" content="[{ $_titleprefix }][{if $title&& $_titleprefix }] | [{/if}][{$title|strip_tags}][{if $_titlesuffix}] | [{$_titlesuffix}][{/if}][{if $titlepagesuffix}] | [{$titlepagesuffix}][{/if}]">
        [{/if}] 
    [{/if}]
    
    [{assign var="canonical_url" value=$oView->getCanonicalUrl()}]
    [{if $canonical_url }]<link rel="canonical" href="[{ $canonical_url }]">[{/if}]
    <link rel="shortcut icon" href="[{ $oViewConf->getImageUrl() }]favicon.ico">
    
    
    <link href="[{ $oViewConf->getResourceUrl() }]css/y4oxid4.css" rel="stylesheet" type="text/css" />
    [{if $oViewConf->getViewThemeParam('YAML_Theme_2-3sp') == 'sp2'}]
    <link href="[{ $oViewConf->getResourceUrl() }]css/2spalten.css" rel="stylesheet" type="text/css" />
    [{/if}]
    [{if $oViewConf->getViewThemeParam('YAML_Theme_2-3sp') == 'sp3'}]
    <link href="[{ $oViewConf->getResourceUrl() }]css/3spalten.css" rel="stylesheet" type="text/css" />
    [{/if}]
    <link href="[{ $oViewConf->getResourceUrl() }]css/socialshareprivacy.css" rel="stylesheet" type="text/css" />
    [{if $oView->getClassName() =='contact'}]
    <link href="[{ $oViewConf->getResourceUrl() }]css/yaml/add-ons/microformats/microformats.css" rel="stylesheet" type="text/css" />
    [{/if}]
		
	[{if $oViewConf->getViewThemeParam('NivoSliderTheme') =='bar'}]
	<link href="[{ $oViewConf->getResourceUrl() }]javascript/nivo-slider/themes/bar/bar.css" rel="stylesheet" type="text/css" />
	[{elseif $oViewConf->getViewThemeParam('NivoSliderTheme') == 'dark'}]
	<link href="[{ $oViewConf->getResourceUrl() }]javascript/nivo-slider/themes/dark/dark.css" rel="stylesheet" type="text/css" />
	[{elseif $oViewConf->getViewThemeParam('NivoSliderTheme') == 'light'}]
	<link href="[{ $oViewConf->getResourceUrl() }]javascript/nivo-slider/themes/light/light.css" rel="stylesheet" type="text/css" />
	[{elseif $oViewConf->getViewThemeParam('NivoSliderTheme') == 'default'}]
	<link href="[{ $oViewConf->getResourceUrl() }]javascript/nivo-slider/themes/default/default.css" rel="stylesheet" type="text/css" />
	[{/if}]
	<link href="[{ $oViewConf->getResourceUrl() }]css/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />


	<!--[if lte IE 7]>
	<link href="[{ $oViewConf->getResourceUrl() }]css/yaml/core/iehacks.min.css" rel="stylesheet" type="text/css" />
	<link href="[{ $oViewConf->getResourceUrl() }]css/font-awesome/css/font-awesome-ie7.min.css" rel="stylesheet" type="text/css" />
	<![endif]-->
	<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

    [{assign var='rsslinks' value=$oView->getRssLinks() }]
    [{if $rsslinks}]
      [{foreach from=$rsslinks item='rssentry'}]
        <link rel="alternate" type="application/rss+xml" title="[{$rssentry.title|strip_tags}]" href="[{$rssentry.link}]">
      [{/foreach}]
    [{/if}]
</head>
<body>
   <div id="body" class="[{$cssclass|default:"plain"}]">

