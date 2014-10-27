<?php
#########################################################################
#	$Id: 5424bf8a24bbf4875cb8acbab75fd661c6ad7ad2 $
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
 * @version   SVN: $Id: 5424bf8a24bbf4875cb8acbab75fd661c6ad7ad2 $
 */

$aLang = array(
'charset'                                    => 'ISO-8859-15',


'SHOP_THEME_GROUP_images'                    => 'Bilder',
'SHOP_THEME_GROUP_features'                  => 'Funktionen',
'SHOP_THEME_GROUP_display'                   => 'Anzeige',
'SHOP_THEME_GROUP_navigation'                => 'Navigation',
'SHOP_THEME_GROUP_yaml'                => 'YAML 4 Theme Einstellungen',
'SHOP_THEME_GROUP_nivo'                => 'YAML 4 Nivo Slider Einstellungen',



'SHOP_THEME_sIconsize'                       => 'Größe des Icons in Pixeln (Breite*Höhe)',//SHOP_CONFIG_ICONSIZE
'HELP_SHOP_THEME_sIconsize'                  => 'Icons sind die kleinsten Bilder eines Artikels. Sie werden z. B. <br>' .
                                                '<ul><li>im Warenkorb angezeigt</li>' .
                                                '<li>angezeigt, wenn Artikel in der Seitenleiste aufgelistet werden (z.B. bei den Aktionen <span class="filename_filepath_or_italic">Top of the Shop</span> und <span class="filename_filepath_or_italic">Schnäppchen</span>).</li></ul>' .
                                                'Damit die Harmonie des eShops nicht durch zu große Icons gestört wird, werden zu große Icons automatisch verkleinert. Die maximale Größe können Sie hier eingeben.<br>' ,

'SHOP_THEME_sThumbnailsize'                  => 'Größe des Thumbnails in Pixeln (Breite*Höhe)',//SHOP_CONFIG_THUMBNAILSIZE
'HELP_SHOP_THEME_sThumbnailsize'             => 'Thumbnails sind kleine Bilder eines Artikels. Sie werden z. B. <br>' .
                                                '<ul><li>in Artikellisten angezeigt. Artikellisten sind z. B. Kategorieansichten (alle Artikel in einer Kategorie werden aufgelistet) und die Suchergebnisse.</li>' .
                                                '<li>in Aktionen angezeigt, die in der Mitte der Startseite angezeigt werden, z. B. <span class="filename_filepath_or_italic">Die Dauerbrenner</span> und <span class="filename_filepath_or_italic">Frisch eingetroffen!</span>.</li></ul>' .
                                                'Damit das Design des eShops nicht durch zu große Thumbnails gestört wird, werden zu große Thumbnails automatisch verkleinert. Die maximale Größe können Sie hier eingeben.',

'SHOP_THEME_sZoomImageSize'                  => 'Größe der Zoom-Bilder (Zoom 1-4) in Pixeln (Breite*Höhe)',//SHOP_CONFIG_ZOOMIMAGESIZE
'SHOP_THEME_sCatThumbnailsize'               => 'Größe des Kategoriebildes in Pixeln (Breite*Höhe)',//SHOP_CONFIG_CATEGORYTHUMBNAILSIZE
'SHOP_THEME_aDetailImageSizes'               => 'Größe der Artikelbilder  (Bild 1-12) in Pixeln (Breite*Höhe)',//SHOP_CONFIG_DETAILIMAGESIZE
'SHOP_THEME_bl_showOpenId'                        => 'Open ID Login aktivieren',//SHOP_CONFIG_SHOWOPENID
'SHOP_THEME_bl_showGiftWrapping'             => 'Geschenkverpackungen aktivieren',//SHOP_CONFIG_SHOWGIFTWRAPPING
'SHOP_THEME_bl_showVouchers'                 => 'Gutscheine aktivieren',//SHOP_CONFIG_SHOWVOUCHERS
'SHOP_THEME_bl_showWishlist'                 => 'Wunschzettel aktivieren',//SHOP_CONFIG_SHOWWISHLIST
'SHOP_THEME_bl_showCompareList'              => 'Artikelvergleich aktivieren',//SHOP_CONFIG_SHOWCOMPARELIST
'SHOP_THEME_bl_showListmania'                => 'Lieblingslisten aktivieren',//SHOP_CONFIG_SHOWLISTMANIA
'SHOP_THEME_bl_perfShowLeftBasket'           => 'Warenkorb links anzeigen',//SHOP_PERF_SHOWLEFTBASKET
'SHOP_THEME_bl_perfShowRightBasket'          => 'Warenkorb rechts anzeigen',//SHOP_PERF_SHOWRIGHTBASKET
'SHOP_THEME_bl_perfShowTopBasket'            => 'Warenkorb oben anzeigen',//SHOP_PERF_SHOWTOPBASKET
'SHOP_THEME_blShowBirthdayFields'            => 'Eingabefeld für das Geburtsdatum anzeigen, wenn Benutzer ihre Daten eingeben',//SHOP_CONFIG_SHOWBIRTHDAYFIELDS

'SHOP_THEME_blTopNaviLayout'                 => 'Navigation oben anzeigen',//SHOP_CONFIG_TOPNAVILAYOUT
'HELP_SHOP_THEME_blTopNaviLayout'            => 'Wenn Sie diese Einstellung aktivieren, wird die Navigation zur Auswahl der Kategorien oben anstatt links angezeigt.',
'SHOP_THEME_blLoadFullTree'                  => 'Den kompletten Kategoriebaum für die Navigation laden (belastet die Performance, wenn viele Kategorien vorhanden sind)',
'HELP_SHOP_THEME_blLoadFullTree'             => 'Wenn die Einstellung aktiv ist, wird in der Navigation der komplette Kategoriebaum angezeigt (alle Kategorien sind \'ausgeklappt\'). Diese Einstellung funktioniert nur, wenn die Navigation nicht oben angezeigt wird.',
'SHOP_THEME_bl_perfLoadTreeForSearch'        => 'Kategoriebaum für die Suche laden',
'HELP_SHOP_THEME_bl_perfLoadTreeForSearch'   => 'Ist diese Einstellung aktiv, kann die Suche auf Kategorien eingeschränkt werden. Eine Auswahlliste der Kategorien erscheint unter dem Suchfeld.',
'SHOP_THEME_bl_perfLoadCatTree'              => 'Kategorien laden und Navigation anzeigen',
'HELP_SHOP_THEME_bl_perfLoadCatTree'         => 'Einstellung muss aktiv sein, damit die Navigation angezeigt wird. Kategorien werden über die Navigation ausgewählt.',

'SHOP_THEME_iTopNaviCatCount'                => 'Anzahl der Kategorien, die oben angezeigt werden (weitere Kategorien werden ebenfalls oben unter "mehr" aufgelistet)',//SHOP_CONFIG_TOPNAVICATCOUNT
'SHOP_THEME_blShowFinalStep'                 => 'Bestellbestätigung anzeigen, wenn die Bestellung abgeschlossen ist (fünfter Bestellschritt)',//SHOP_SYSTEM_SHOWFINALSTEP
'SHOP_THEME_iNewBasketItemMessage'           => 'Meldung ausgeben, wenn ein Artikel in den Warenkorb gelegt wurde',//SHOP_SYSTEM_SHOWNEWBASKETITEMMESSAGE
'HELP_SHOP_THEME_iNewBasketItemMessage'      => 'Wenn Konsumenten ein Produkt in den Warenkorb legen, kann der OXID eShop unterschiedliche Feedback-Aktionen durchführen.',//SHOP_SYSTEM_SHOWNEWBASKETITEMMESSAGE
'SHOP_THEME_iNewBasketItemMessage_0'         => 'Keine',
'SHOP_THEME_iNewBasketItemMessage_1'         => 'Meldung ausgeben',
'SHOP_THEME_iNewBasketItemMessage_2'         => 'Popup öffnen',
'SHOP_THEME_iNewBasketItemMessage_3'         => 'Warenkorb öffnen',
'SHOP_THEME_aNrofCatArticles'                => 'Anzahl der Artikel, die in einer Artikelliste pro Seite angezeigt werden können<br>Warnung: Eine große Anzahl von Artikeln pro Seite (über 100) kann erhebliche Performance-Probleme verursachen!',
'SHOP_THEME_blDisableNavBars'                => 'Einige Navigationselemente während des Bestellprozesses ausblenden',
'HELP_SHOP_THEME_blDisableNavBars'           => 'Wenn Sie diese Einstellung aktivieren, werden die meisten Navigationselemente im Bestellprozess ausgeblendet. Dadurch werden die Benutzer beim Bestellen nicht unnötig abgelenkt.',
'SHOP_THEME_NivoSliderEffekt'   => 'Nivo Slider Effekt',
'SHOP_THEME_NivoSliderEffekt_random'   => 'random',
'SHOP_THEME_NivoSliderEffekt_fade'   => 'fade',
'SHOP_THEME_NivoSliderEffekt_sliceDown'   => 'sliceDown',
'SHOP_THEME_NivoSliderEffekt_sliceDownLeft'   => 'sliceDownLeft',
'SHOP_THEME_NivoSliderEffekt_sliceUp'   => 'sliceUp',
'SHOP_THEME_NivoSliderEffekt_sliceUpLeft'   => 'sliceUpLeft',
'SHOP_THEME_NivoSliderEffekt_sliceUpDown'   => 'sliceUpDown',
'SHOP_THEME_NivoSliderEffekt_sliceUpDownLeft'   => 'sliceUpDownLeft',
'SHOP_THEME_NivoSliderEffekt_fold' => 'fold' ,
'SHOP_THEME_NivoSliderEffekt_slideInRight'     => 'slideInRight',
'SHOP_THEME_NivoSliderEffekt_slideInLeft'   => 'slideInLeft',
'SHOP_THEME_NivoSliderEffekt_boxRandom'   => 'boxRandom',
'SHOP_THEME_NivoSliderEffekt_boxRain'   => 'boxRain',
'SHOP_THEME_NivoSliderEffekt_boxRainReverse'   => 'boxRainReverse',
'SHOP_THEME_NivoSliderEffekt_boxRainGrow'   => 'boxRainGrow',
'SHOP_THEME_NivoSliderEffekt_boxRainGrowReverse'   => 'boxRainGrowReverse',
'SHOP_THEME_NivoSliderTheme'   => 'Nivo Slider Theme',
'SHOP_THEME_NivoSliderTheme_default'   => 'default',
'SHOP_THEME_NivoSliderTheme_bar'   => 'bar',
'SHOP_THEME_NivoSliderTheme_dark'   => 'dark',
'SHOP_THEME_NivoSliderTheme_light'   => 'light',
'SHOP_THEME_NivoSliderSlices'   => 'Nivo Slider Slices',
'SHOP_THEME_NivoSliderboxCols'   => 'Nivo Slider boxCols',
'SHOP_THEME_NivoSliderboxRows'   => 'Nivo Slider boxRows',
'SHOP_THEME_NivoSlideranimSpeed'   => 'Nivo Slider animSpeed',
'HELP_SHOP_THEME_NivoSlideranimSpeed'   => 'Angabe erfolg in Millisekunden ms. 1000 = 1 Sekunde',
'SHOP_THEME_NivoSliderpauseTime'   => 'Nivo Slider pauseTime',
'HELP_SHOP_THEME_NivoSliderpauseTime'   => 'Angabe erfolg in Millisekunden ms. 1000 = 1 Sekunde',
'SHOP_THEME_NivoSliderdirectionNav'   => 'Nivo Slider Pfeilnavigation anzeigen?',
'SHOP_THEME_NivoSliderdirectionNav_false'   => 'nein',
'SHOP_THEME_NivoSliderdirectionNav_true'   => 'ja',
'SHOP_THEME_NivoSliderdirectionNavHide'   => 'Nivo Slider Pfeilnafigation nur bei Hoover anzeigen?',
'SHOP_THEME_NivoSliderdirectionNavHide_false'   => 'nein',
'SHOP_THEME_NivoSliderdirectionNavHide_true'   => 'ja',
'SHOP_THEME_NivoSlidercontrolNav'   => 'Nivo Slider controlNav',
'SHOP_THEME_NivoSlidercontrolNav_false'   => 'nein',
'SHOP_THEME_NivoSlidercontrolNav_true'   => 'ja',
'SHOP_THEME_YAML_Licence'   => '<strong>YAML 4 Lizenz</strong><img src="http://www.projecticons.de/oxid.png"> <strong style="color:red;">ACHTUNG:</strong> bitte beachten Sie die Lizenzierungsvorgaben des Authors des YAML Frameworks <a href="http://yaml.itratos.de/?page_id=17"><i><strong> mehr Informationen</strong></i></a>',
'SHOP_THEME_YAML_Theme_Licence'   => '<strong>Theme Template Lizenz</strong> <strong style="color:red;">ACHTUNG:</strong> bitte beachten Sie die Lizenzierungsvorgaben des Authors des YAML Themes <a href="http://yaml.itratos.de/?page_id=143"><i><strong> mehr Informationen</strong></i></a>',
'SHOP_THEME_YAML_Licence_free'   => 'keine',
'SHOP_THEME_YAML_Licence_project'   => 'project',
'SHOP_THEME_YAML_Licence_general'   => 'general',
'SHOP_THEME_f8e4b3a2a4bf38011fdc570929b07ee6'   => 'YAML_Framework_Licence',
'SHOP_THEME_767a47752314c4a3e8dcbbf16ea333f8'   => 'YAML_Theme_Licence',
'HELP_SHOP_THEME_YAML_Theme_Licence'   => 'Bitte geben Sie hier die Lizenznummer ein, welche Ihnen mitgeteilt wurde. Sollten Sie <strong style="color:red;">keine Lizenznummer</strong> besitzen geben Sie <strong style="color:red;">freetheme</strong> ein, was auch die Standardeinstellung ist.',
'SHOP_THEME_YAML_Theme_2-3sp'   => 'Darstellung des Template/Theme',
'SHOP_THEME_YAML_Theme_2-3sp_sp2'   => '2 Spalten',
'SHOP_THEME_YAML_Theme_2-3sp_sp3'   => '3 Spalten',
'SHOP_THEME_YAML_Theme_mobile'   => 'Mobile ViewPort aktivieren (<strong style="color:red;">!!! ACHTUNG BETA !!!</strong>)',
'SHOP_THEME_YAML_Theme_mobile_false'   => 'nein',
'SHOP_THEME_YAML_Theme_mobile_true'   => 'ja',
);
