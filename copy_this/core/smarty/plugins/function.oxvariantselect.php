<?php
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
 * @package   smarty_plugins
 * @copyright (C) OXID eSales AG 2003-2011
 * @version OXID eShop CE
 * @version   SVN: $Id: function.oxgetseourl.php 16303 2009-02-05 10:23:41Z rimvydas.paskevicius $
 */

/**
 * Smarty function
 * ----------------------------------------------------------------------
 * Purpose: outputs HTML and JavaScript selectboxes for MD variant management
 * call example:
 * [{oxvariantselect value=$product->getMdVariants() separator=" " artid=$product->getId()}]
 * ----------------------------------------------------------------------
 *
 * @param array  $params  params
 * @param Smarty &$smarty clever simulation of a method
 *
 * @return string
 */
function smarty_function_oxvariantselect( $params, &$smarty )
{
    $sOutput = '';
    $oMdVariants = $params['value'];
    $sSeparator  = $params['separator'];
    //default selected art id
    $sArtId      = $params['artid'];
    //BOF YAML4 ENTWICKLER TEMPLATE
    $sParentVarName     = $params['parentVarName'];
    //EOF YAML4 ENTWICKLER TEMPLATE

    if (!$sArtId || !$oMdVariants->hasArticleId($sArtId)) {
        $sArtId = $oMdVariants->getArticleId();
    }

    //all select boxes
    $aSelectBoxes = array();
    //real variants to MD variants
    $aRealVariants = array();

    if (count($oMdVariants->getMdSubvariants())) {
    
     // $sOutput = oxvariantselect_addSubvariants($oMdVariants->getMdSubvariants(), 0, $aSelectBoxes, $aRealVariants, $sSeparator, $sCallMethod, $sArtId);
      	//BOF YAML4 ENTWICKLER TEMPLATE
      	$sOutput = oxvariantselect_addSubvariants($oMdVariants->getMdSubvariants(), 0, $aSelectBoxes, $aRealVariants, $sSeparator, $sCallMethod, $sArtId, $sParentVarName);
      	//EOF YAML4 ENTWICKLER TEMPLATE
        $sOutput .= oxvariantselect_formatJsSelecBoxesArray($aSelectBoxes);
        $sOutput .= oxvariantselect_formatJsRealVariantArray($aRealVariants);
    }

    return $sOutput;
}

/**
 * Recursiovely adds selection box of for subvariants
 *
 * @param array[string]OxMdVariant $oMdVariants    Variant list
 * @param int                      $iLevel         Depth level
 * @param array[int][int]string    &$aSelectBoxes  Cummulative array of select boxes
 * @param array[string]string      &$aRealVariants Cummulative array or real variants
 * @param string                   $sSeparator     Separator placed between select boxes
 * @param string                   $sCallMethod    Method to be called to display the variant
 * @param string                   $sArtId         Default selected article Id
 *
 * @return string
 */
//function oxvariantselect_addSubvariants($oMdVariants, $iLevel, &$aSelectBoxes, &$aRealVariants, $sSeparator, $sCallMethod, $sArtId)
//BOF YAML4 ENTWICKLER TEMPLATE
function oxvariantselect_addSubvariants($oMdVariants, $iLevel, &$aSelectBoxes, &$aRealVariants, $sSeparator, $sCallMethod, $sArtId, $sParentVarName)
//EOF YAML4 ENTWICKLER TEMPLATE
{
    $sRes = '';
    $aOptions = array();
    if (count($oMdVariants)) {
        $blVisible = false;
        $sSelectedVariant = null;
        foreach ($oMdVariants as $sKey => $oVariant) {
            $sSelectBoxName = "mdVariantSelect_".$oVariant->getParentId();
            $aSelectBoxes[$iLevel][] = $sSelectBoxName;
            $aOptions[$oVariant->getId()] = $oVariant->getName();
            if ($oVariant->hasArticleId($sArtId)) {
                $blVisible = true;
            }

            if ($oVariant->hasArticleId($sArtId)) {
                $sSelectedVariant = $oVariant->getId();
            }

        }

        //$sRes .= oxvariantselect_formatSelectBox($sSelectBoxName, $aOptions, $iLevel, $blVisible, $sSelectedVariant) . "\n";
        //BOF YAML4 ENTWICKLER TEMPLATE
        $sRes .= oxvariantselect_formatSelectBox($sSelectBoxName, $aOptions, $iLevel, $blVisible, $sSelectedVariant, $sParentVarName) . "\n";
        //EOF YAML4 ENTWICKLER TEMPLATE
        $sRes .= $sSeparator;

        //add select boxes recursively
        foreach ($oMdVariants as $oVariant) {
            //$sRes .= oxvariantselect_addSubvariants($oVariant->getMdSubvariants(), $iLevel+1, $aSelectBoxes, $aRealVariants, $sSeparator, $sCallMethod, $sArtId);
            //BOF YAML4 ENTWICKLER TEMPLATE
			$sRes .= oxvariantselect_addSubvariants($oVariant->getMdSubvariants(), $iLevel+1, $aSelectBoxes, $aRealVariants, $sSeparator, $sCallMethod, $sArtId, $sParentVarName);
			//EOF YAML4 ENTWICKLER TEMPLATE

            //no more subvariants? Mseans we are the last level select box, good enought to register a real variant now
            if (!count($oVariant->getMdSubvariants())) {
                $aRealVariants[$oVariant->getId()]['id'] = $oVariant->getArticleId();
                $aRealVariants[$oVariant->getId()]['link'] = $oVariant->getlink();
            }
        }
    }

    return $sRes;
}

/**
 * Formats variant select box
 *
 * @param string              $sId       Select box id
 * @param array[string]string $aOptions  Select box options
 * @param int                 $iLevel    Level information (counted from 0)
 * @param bool                $blVisible Initial select list visibility
 * @param string              $sSelected Selected variant
 *
 * @return string
 */
/* ORIGINAL SMATY PLUGINCODE FÜR YAML4 ENTWICKLERTEMPLATE AUSKOMMENTIERT */
/*
function oxvariantselect_formatSelectBox($sId, $aOptions, $iLevel, $blVisible, $sSelected)
{
    
    $sStyle = $blVisible?"inline":"none";
    $sRes = "<select class='md_select_variant' id='$sId' style='display:$sStyle'>\n";
    foreach ($aOptions as $sVal => $sName) {
        $sSelText = ($sVal === $sSelected)?" selected":"";
        $sRes .= " <option value='$sVal'$sSelText>$sName</option>\n";
    }
    $sRes .= "</select>\n";

    return $sRes;
}
    */
    
/* BOF ÄNDERUNG VARIANTENDARSTELLUNG SELCTBOX FÜR YAML4 */

function oxvariantselect_formatSelectBox($sId, $aOptions, $iLevel, $blVisible, $sSelected, $sParentVarName)
{    
    $aParentVarName = explode("|", $sParentVarName);
    
    $sVarName   = $aParentVarName[$iLevel];

	$sStyleYmSelector = $blVisible?"block":"none";
    $sStyleYmLabel = $blVisible?"block":"none";
    $sStyleYmSelect = $blVisible?"inline":"none";
    
	$sRes = "<div id='ym-selector_$sId' class='ym-fbox-select' style='display:$sStyleYmSelector;'>";
    $sRes .= "<label id='ym-label_$sId' style='display:$sStyleYmLabel;'>$sVarName:</label>";
    $sRes .= "<select class='md_select_variant' id='$sId' style='display:$sStyleYmSelect'>\n";
    
    foreach ($aOptions as $sVal => $sName) {
        $sSelText = ($sVal === $sSelected)?" selected":"";
        $sRes .= " <option value='$sVal'$sSelText>$sName</option>\n";
    }
    $sRes .= "</select>\n";
	$sRes .= "</div>\n";
    return $sRes;
}
/* EOF ÄNDERUNG VARIANTENDARSTELLUNG SELCTBOX FÜR YAML4 */

/**
 * Formats Select Box array in JavaScritp format
 *
 * @param array[int][int]string $aSelectBoxes Select box array
 *
 * @return string
 */
function oxvariantselect_formatJsSelecBoxesArray($aSelectBoxes)
{
    $sRes = "<script language=JavaScript><!--\n";
    $iLevelCount = count($aSelectBoxes);
    $sRes .= "mdVariantSelectIds = Array($iLevelCount);\n";
    foreach ($aSelectBoxes as $iLevel => $aSelects) {
        $sSelectCount = count($aSelects);
        $sRes .= " mdVariantSelectIds[$iLevel] = Array($sSelectCount);\n";
        foreach ($aSelects as $iSelect => $sSelect) {
            $sRes .= " mdVariantSelectIds[$iLevel][$iSelect] = '$sSelect';\n";
        }
    }

    $sRes .= "--></script>";

    return $sRes;
}

/**
 * Formats Real Variant array in JavaScritp format
 *
 * @param array[string]string $aRealVariants Select box array
 *
 * @return string
 */
function oxvariantselect_formatJsRealVariantArray($aRealVariants)
{
    $sRes = "<script language=JavaScript><!--\n";
    $iCount = count($aRealVariants);
    $sRes .= "mdRealVariants = Array($iCount);\n";
    $sRes .= "mdRealVariantsLinks = Array($iCount);\n";
    foreach ($aRealVariants as $sMdVarian => $sRealVariant) {
        $sRes .= " mdRealVariants['$sMdVarian'] = '" . $sRealVariant['id'] . "';\n";
        $sRes .= " mdRealVariantsLinks['$sMdVarian'] = '" . str_replace( '&amp;', '&', $sRealVariant['link']) . "';\n";
    }

    $sRes .= "--></script>";

    return $sRes;
}
