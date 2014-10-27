[{*
#########################################################################
#	$Id: caa3cf805c4309a56cafa6b385de822f667b899a $
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
<ul class="ym-skiplinks">
	<li><a href="#nav" class="ym-skip">Skip to navigation (Press Enter)</a></li>
	<li><a href="#content" class="ym-skip">Skip to main content (Press Enter)</a></li>
</ul>

<div class="ym-wrapper"> <!-- BEGINN div.ym-wrapper -->
	<div class="ym-wbox"> <!-- BEGINN div.ym-wbox -->
		<header><!-- Beginn header -->
			<div class="ym-grid">
				<div class="ym-g80 ym-gl">
					<div id="logo"><a href="[{ $oViewConf->getHomeLink() }]"><img src="[{$oViewConf->getImageUrl()}]logo.gif" alt="[{$oxcmp_shop->oxshops__oxtitleprefix->value}]"/></a>
					</div>
					
				</div>
				<div class="ym-g20 ym-gr">
					<div id="languages" class="float-right">
						[{if $oView->isLanguageLoaded() }]
                    		[{foreach from = $oxcmp_lang item = _language}]
                        		<a id="Lang_[{$_language->name}]" class="language[{if $_language->selected}] act[{/if}]" href="[{ $_language->link|oxaddparams:$oView->getDynUrlParams() }]" hreflang="[{ $_language->abbr }]" title="[{ $_language->name }]"><img src="[{$oViewConf->getImageUrl()}]lang/[{ $_language->abbr }].gif" alt="[{$_language->name}]"></a>
                    		[{/foreach}]
                		[{/if}]
                	</div>
                	[{include file="widget/trustedshops/info.tpl" }]
					
                </div>
			</div>
		</header><!-- Ende header -->
			<nav id="nav">
				<div class="topnavi">
					[{include file="inc/box_top_categories.tpl" }]
					[{*oxid_include_widget cl="oxwCategoryTree" cnid=$oView->getCategoryId() sWidgetType="header" _parent=$oView->getClassName() nocookie=1 oxwtemplate="widget/categorylist.tpl"*}]
					[{include file="inc/box_top_search.tpl" }]
				</div>	
			</nav>
		
		<main>
			<div id="breadcrumb">[{ include file="layout/path.tpl" is_start=$isStart}]</div>
			[{strip}]
			<div class="ym-column linearize-level-1">
				
		[{*BEGINN Theme 2 Spalten, oder 3 Spalten*}]
			[{*BEGINN 2 Spalten*}]
				[{if $oViewConf->getViewThemeParam('YAML_Theme_2-3sp') == 'sp2'}]
					[{if $oView->getClassName()=='basket' || $oView->getClassName()== 'user' || $oView->getClassName()== 'payment' || $oView->getClassName()== 'order' || $oView->getClassName()== 'thankyou' }]
			 			<div class="">
			 				<div class="ym-cbox">
								<section id="content">
        			[{else}]
						<div class="ym-col1">
							<div class="ym-cbox">
								<section id="content">
					[{/if}]
        		[{/if}]
        	[{*ENDE 2 Spalten*}]
        	
        	[{*BEGINN 3 Spalten*}]
        		[{if $oViewConf->getViewThemeParam('YAML_Theme_2-3sp') == 'sp3'}]
					[{if $oView->getClassName()=='basket' || $oView->getClassName()== 'user' || $oView->getClassName()== 'payment' || $oView->getClassName()== 'order' || $oView->getClassName()== 'thankyou' }]
			 			<div>
							<div id="content">
        			[{else}]
        				<div class="ym-col1">
        					<div class="ym-cbox">
								<section id="content">
					[{/if}]
        		[{/if}]
        	[{*ENDE 3 Spalten*}]
        [{*ENDE Theme 2 Spalten, oder 3 Spalten Teil 2 in _footer.tpl*}]
        
        			
        			[{include file="inc/error.tpl" Errorlist=$Errors.default}]
        			<!-- ENDE _header.tpl -->
        [{/strip}]