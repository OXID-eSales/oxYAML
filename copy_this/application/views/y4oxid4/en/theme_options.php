<?php
#########################################################################
#	$Id: 480e37d2756d2195d81de33b40fd057bec12b119 $
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

/**
 *    This file is part of OXID eShop Community Edition.
 *
 *    OXID eShop Community Edition is free software: you can redistribute it and/or modify
 *    it under the terms of the GNU General Public License as published by
 *    the Free Software Foundation, either version 3 of the License, or
 *    (at your option) any later version.
 *
 *    OXID eShop Community Edition is distributed in the hope that it will be useful,
 *    but WITHOUT ANY WARRANTY; without even the implied warranty of
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *    GNU General Public License for more details.
 *
 *    You should have received a copy of the GNU General Public License
 *    along with OXID eShop Community Edition.  If not, see <http://www.gnu.org/licenses/>.
 *
 * @link      http://www.oxid-esales.com
 * @package   lang
 * @copyright (C) OXID eSales AG 2003-2011
 * @version OXID eShop CE
 * @version   SVN: $Id: 480e37d2756d2195d81de33b40fd057bec12b119 $
 */

$aLang = array(
'charset'                                    => 'ISO-8859-15',

'SHOP_THEME_GROUP_images'                    => 'Images',
'SHOP_THEME_GROUP_features'                  => 'Features',
'SHOP_THEME_GROUP_display'                   => 'Display',
'SHOP_THEME_GROUP_navigation'                => 'Navigation',

'SHOP_THEME_sIconsize'                       => 'Icon size (width*height)',//SHOP_CONFIG_ICONSIZE
'HELP_SHOP_THEME_sIconsize'                  => 'Icons are the smallest pictures of a product. They are used: <br>' .
                                                '<ul><li>in the shopping cart.</li>' .
                                                '<li>if products are shown in the right menu (e.g. in <span class="filename_filepath_or_italic">TOP of the Shop</span> and <span class="filename_filepath_or_italic">Bargain</span>).</li></ul>' .
                                                'For avoiding design issues caused by too big icons the icons are resized. Enter the maximum size for icons here.',

'SHOP_THEME_sThumbnailsize'                  => 'Thumbnail size (width*height)',//SHOP_CONFIG_THUMBNAILSIZE
'HELP_SHOP_THEME_sThumbnailsize'             => 'Thumbnails are small product pictures. They are used:<br>' .
                                                '<ul><li>in product lists.</li>' .
                                                '<li>in promotions displayed in the middle of the front page, e. g. <span class="filename_filepath_or_italic">Just arrived!</span>.</li></ul>' .
                                                'For avoiding design issues caused by too big thumbnails the thumbnails are resized. Enter the maximum size for thumbnails here.',

'SHOP_THEME_sZoomImageSize'                  => 'Zoom picture size (width*height)',//SHOP_CONFIG_ZOOMIMAGESIZE
'SHOP_THEME_sCatThumbnailsize'               => 'Category picture size (width*height)',//SHOP_CONFIG_CATEGORYTHUMBNAILSIZE
'SHOP_THEME_aDetailImageSizes'               => 'Product picture size (width*height)',//SHOP_CONFIG_DETAILIMAGESIZE

'SHOP_THEME_bl_showOpenId'                        => 'Use Open ID',         //SHOP_CONFIG_SHOWOPENID
'SHOP_THEME_bl_showGiftWrapping'             => 'Use gift wrapping',   //SHOP_CONFIG_SHOWGIFTWRAPPING
'SHOP_THEME_bl_showVouchers'                 => 'Use vouchers',        //SHOP_CONFIG_SHOWVOUCHERS
'SHOP_THEME_bl_showWishlist'                 => 'Use gift registry',   //SHOP_CONFIG_SHOWWISHLIST
'SHOP_THEME_bl_showCompareList'              => 'Use compare list',    //SHOP_CONFIG_SHOWCOMPARELIST
'SHOP_THEME_bl_showListmania'                => 'Use listmania',       //SHOP_CONFIG_SHOWLISTMANIA
'SHOP_THEME_bl_perfShowLeftBasket'           => 'Display cart on left side',//SHOP_PERF_SHOWLEFTBASKET
'SHOP_THEME_bl_perfShowRightBasket'          => 'Display cart on right side',//SHOP_PERF_SHOWRIGHTBASKET
'SHOP_THEME_bl_perfShowTopBasket'            => 'Display cart at top',//SHOP_PERF_SHOWTOPBASKET
'SHOP_THEME_blShowBirthdayFields'            => 'Display input fields for date of birth when users enter their personal data',//SHOP_CONFIG_SHOWBIRTHDAYFIELDS

'SHOP_THEME_blTopNaviLayout'                 => 'Display Navigation at Top',//SHOP_CONFIG_TOPNAVILAYOUT
'HELP_SHOP_THEME_blTopNaviLayout'            => 'If this setting is checked, the navigation for selecting categories is shown at top instead on the left side.',
'SHOP_THEME_blLoadFullTree'                  => 'Load complete Category Tree for Navigation (May cause Performance Problems if much Categories exist)',
'HELP_SHOP_THEME_blLoadFullTree'             => 'If this setting is checked, the complete category tree is shown in the navigation (all categories are expanded). This only works if the navigation is not shown at top.',
'SHOP_THEME_bl_perfLoadTreeForSearch'        => 'Load complete Category Tree for Search',
'HELP_SHOP_THEME_bl_perfLoadTreeForSearch'   => 'If checked, the search can be restricted to categories. A dropdown list of categories appears below the search box.',
'SHOP_THEME_bl_perfLoadCatTree'              => 'Load Categories and display Navigation',
'HELP_SHOP_THEME_bl_perfLoadCatTree'         => 'Must be actived to show the navigation. Categories can be selected via navigation.',

'SHOP_THEME_iTopNaviCatCount'                => 'Amount of categories that is displayed at top',//SHOP_CONFIG_TOPNAVICATCOUNT
'SHOP_THEME_blShowFinalStep'                 => 'Show order confirmation after order is finished (5th Step in Checkout)',//SHOP_SYSTEM_SHOWFINALSTEP
'SHOP_THEME_iNewBasketItemMessage'           => 'Select action when product is added to cart',//SHOP_SYSTEM_SHOWNEWBASKETITEMMESSAGE
'HELP_SHOP_THEME_iNewBasketItemMessage'      => 'When customer adds products to cart, OXID eShop can behave differently. Set up what shall happen to give proper feedback to customer.',//SHOP_SYSTEM_SHOWNEWBASKETITEMMESSAGE
'SHOP_THEME_iNewBasketItemMessage_0'         => 'None',
'SHOP_THEME_iNewBasketItemMessage_1'         => 'Display message',
'SHOP_THEME_iNewBasketItemMessage_2'         => 'Open popup',
'SHOP_THEME_iNewBasketItemMessage_3'         => 'Open basket',
'SHOP_THEME_aNrofCatArticles'                => 'Number of products which can be shown in a product lists (category pages, search results)<br><br>Attention: A large number of products per page (above 100) can cause performance loss!',
'SHOP_THEME_blDisableNavBars'                => 'Don\'t display most Navigation Elements during Checkout',
'HELP_SHOP_THEME_blDisableNavBars'           => 'If this setting is checked, most navigation elements aren\'t shown during checkout. Thereby users aren\'t distracted unnecessarily during checkout.',

);
