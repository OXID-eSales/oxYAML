[{*
#########################################################################
#	$Id: a887190f5e24288cc47fda61dbce069456605183 $
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

<ul class="krumenleiste">
[{strip}]
<li style="float:left;">[{ oxmultilang ident="INC_HEADER_YOUAREHERE" }]&nbsp;/&nbsp;[{ $location }]</li>
[{foreach from=$tree_path item=oTreeItem }]
    [{ $_path_separator }]
    [{assign var="_path_link" value=$oTreeItem->getLink() }]
    [{ if $_path_link }]<li><a href="[{ $_path_link }]">[{/if}][{ $oTreeItem->oxcategories__oxtitle->value }][{ if $_path_link }]</a>&nbsp;/&nbsp;</li>[{/if}]
    [{assign var="_path_separator" value="" }]
[{/foreach}]

[{if $is_start}]
    [{assign var="_path_space" value=" " }][{ $_path_space }]
    [{oxifcontent ident="oxdeliveryinfo" object="oCont"}]
        <li class="last"><a rel="nofollow" class="dinfo" href="[{ $oCont->getLink() }]">[{ oxmultilang ident="INC_HEADER_INCLTAXPLUSSHIPPING" }]</a></li>
    [{/oxifcontent}]
[{/if}]
[{/strip}]
</ul>