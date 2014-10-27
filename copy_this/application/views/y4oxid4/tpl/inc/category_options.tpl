[{*
#########################################################################
#	$Id: 55fbb20c63158ed2da04d675119eafc4c6e4ca58 $
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

[{if $tree}]
[{defun name="category_options" list=$tree sSpacer=""}]
    [{foreach from=$list item=ocat}]
        [{if $ocat->getIsVisible()}]
            <option value="[{$ocat->oxcategories__oxid->value}]"[{if $oView->getSearchCatId() == $ocat->oxcategories__oxid->value}] selected[{/if}]>[{$sSpacer}][{ $ocat->oxcategories__oxtitle->value }][{if $oView->showCategoryArticlesCount() && $ocat->getNrOfArticles() > 0 }] ([{$ocat->getNrOfArticles()}])[{/if}]</option>
            [{fun name="category_options" list=$ocat->getSubCats() sSpacer="-$sSpacer "}]
        [{/if}]
    [{/foreach}]
[{/defun}]
[{/if}]
