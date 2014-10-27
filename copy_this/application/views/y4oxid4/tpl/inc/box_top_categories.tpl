[{*
#########################################################################
#	$Id: c2ae2be5724ed5ad82e0d3da6d1fd6b9defcb4c8 $
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

[{if $oViewConf->getViewThemeParam('blTopNaviLayout')}]
           <ul class="sf-menu ebne0" id="mn.categories">
            [{assign var="iCatCnt" value="1"}]
            [{foreach from=$oxcmp_categories item=ocat key=catkey name=root}]
              [{if $ocat->getIsVisible() }]

                [{if $ocat->getContentCats()}]
                    [{foreach from=$ocat->getContentCats() item=ocont key=contkey name=cont}]
                        [{if $iCatCnt <= $oView->getTopNavigationCatCnt()}]
                            <li><a id="root[{$iCatCnt}]" href="[{$ocont->getLink()}]" [{if $ocont->expanded}]class="exp"[{/if}]>[{$ocont->oxcontents__oxtitle->value}] </a></li>
                        [{/if}]
                        [{assign var="iCatCnt" value=$iCatCnt+1 }]
                    [{/foreach}]
                [{/if}]

                [{if $iCatCnt <= $oView->getTopNavigationCatCnt()}]
                <li>
                    <a id="root[{$iCatCnt}]" href="[{$ocat->getLink()}]" [{if $ocat->expanded}]class="exp"[{/if}]>[{$ocat->oxcategories__oxtitle->value}] [{ if $ocat->getNrOfArticles() > 0}] ([{$ocat->getNrOfArticles()}])[{/if}] </a>
                    [{if $ocat->getSubCats()}]
                    [{strip}]
                    <ul class="ebne1">
                    [{foreach from=$ocat->getSubCats() item=osubcat key=subcatkey name=SubCat}]
                        [{if $osubcat->getContentCats()}]
                            [{foreach from=$osubcat->getContentCats() item=osubcont key=subcontkey name=subcont}]
                            <li><a id="Top_root[{ $iCatCnt }]_Cms_[{$smarty.foreach.SubCat.iteration}]_[{$smarty.foreach.subcont.iteration}]" href="[{$osubcont->getLink()}]">[{$osubcont->oxcontents__oxtitle->value}] </a></li>
                            [{/foreach}]
                        [{/if}]
                        [{if $osubcat->getIsVisible() }]
                            <li><a id="Top_root[{ $iCatCnt }]_SubCat_[{$smarty.foreach.SubCat.iteration}]" href="[{$osubcat->getLink()}]">[{$osubcat->oxcategories__oxtitle->value}] [{ if $osubcat->getNrOfArticles() > 0}] ([{$osubcat->getNrOfArticles()}])[{/if}] </a></li>
                        [{/if}]
                    [{/foreach}]
                    </ul>
                    [{/strip}]
                    [{/if}]
                </li>
                [{/if}]
                [{assign var="iCatCnt" value=$iCatCnt+1 }]

              [{/if}]
            [{/foreach}]
  	
            [{if $iCatCnt > $oView->getTopNavigationCatCnt()}]
                <li>
                    [{assign var="_navcatmore" value=$oView->getCatMoreUrl()}]
                    <a id="root[{$oView->getTopNavigationCatCnt()+1}]" href="[{ oxgetseourl ident="`$_navcatmore->closelink`&amp;cl=alist" }]" class="more[{if $_navcatmore->expanded}] exp[{/if}]">[{ oxmultilang ident="INC_HEADER_URLMORE" }] </a>
                    [{strip}]
                    <ul class="menue vertical dropdown ebne1">
                    [{foreach from=$oxcmp_categories item=omorecat key=morecatkey name=more}]
                      [{if $omorecat->getIsVisible() }]
                        [{if $omorecat->getContentCats()}]
                            [{foreach from=$omorecat->getContentCats() item=omorecont key=morecontkey name=morecont}]
                            <li><a href="[{$omorecont->getLink()}]">[{$omorecont->oxcontents__oxtitle->value}] </a></li>
                            [{/foreach}]
                        [{/if}]
                        <li><a id="Top_RootMore_MoreCat_[{$smarty.foreach.more.iteration}]" href="[{$omorecat->getLink()}]">[{$omorecat->oxcategories__oxtitle->value}] [{ if $omorecat->getNrOfArticles() > 0}] ([{$omorecat->getNrOfArticles()}])[{/if}] </a></li>
                      [{/if}]
                    [{/foreach}]
                    </ul>
                    [{/strip}]
                </li>
            [{/if}]

            </ul>
	[{oxscript add="oxid.catnav('mn.categories');" }]
[{/if}]