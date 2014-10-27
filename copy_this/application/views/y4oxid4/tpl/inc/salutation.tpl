[{*
#########################################################################
#	$Id: 7660d40c0bfeb29f11cdc625bad75d667e184290 $
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
<select name="[{$name}]" [{if $class}]class="[{$class}]"[{/if}]>
        <option value="MR"  [{if $value|lower  == "mr"  or $value2|lower == "mr" }]SELECTED[{/if}]>[{ oxmultilang ident="SALUTATION_MR"  }]</option>
        <option value="MRS" [{if $value|lower  == "mrs" or $value2|lower == "mrs"}]SELECTED[{/if}]>[{ oxmultilang ident="SALUTATION_MRS" }]</option>
    </select>