[{*
#########################################################################
#	$Id: f67df31b9a8802efeac2303e9c31eff1a62e6ee9 $
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

[{$oOrderFile->getFileSize()|oxfilesize}]

[{if $oOrderFile->oxorderfiles__oxdownloadcount->value == 0 && $oOrderFile->getValidUntil() != "0000-00-00 00:00"  }]
    [{if $oOrderFile->oxorderfiles__oxlinkexpirationtime->value || $oOrderFile->oxorderfiles__oxdownloadxpirationtime->value }]
        [{ oxmultilang ident="START_DOWNLOADING_UNTIL" }] [{$oOrderFile->getValidUntil()}]
    [{/if}]
    [{if $oOrderFile->oxorderfiles__oxmaxdownloadcount->value != 0 }]
        [{ oxmultilang ident="LEFT_DOWNLOADS" }] : [{ $oOrderFile->getLeftDownloadCount() }]
    [{/if}]
[{else}]
    [{if $oOrderFile->getValidUntil() != "0000-00-00 00:00"  }]
        [{if $oOrderFile->oxorderfiles__oxlinkexpirationtime->value || $oOrderFile->oxorderfiles__oxdownloadxpirationtime->value }]
            [{ oxmultilang ident="LINK_VALID_UNTIL" }] : [{ $oOrderFile->getValidUntil() }].
        [{/if}]
    [{/if}]
    [{if $oOrderFile->oxorderfiles__oxmaxdownloadcount->value != 0 }]
        [{ oxmultilang ident="LEFT_DOWNLOADS" }] : [{ $oOrderFile->getLeftDownloadCount() }]
    [{/if}]
[{/if}]