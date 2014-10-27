[{*
#########################################################################
#	$Id: b7fe293bfe14db38bba1f4d6b7ba963f9f5eae9f $
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
[{if $oView->getVendorlist() }]
            <select id="test_searchVendorSelect" class="search_input" name="searchvendor">
                <option value=""> [{ oxmultilang ident="INC_SEARCHLEFTITEM_ALLDISTRIBUTORS" }] </option>
                [{foreach from=$oView->getVendorlist() item=oVendorlistentry}]
                    <option value="[{$oVendorlistentry->oxvendor__oxid->value}]"[{if $oView->getSearchVendor() == $oVendorlistentry->oxvendor__oxid->value}] selected[{/if}]>[{ $oVendorlistentry->oxvendor__oxtitle->value }][{ if $oVendorlistentry->getNrOfArticles() > 0 }] ([{$oVendorlistentry->getNrOfArticles()}])[{/if}]</option>
                [{/foreach}]
            </select>
            [{/if}]