[{*
#########################################################################
#	$Id: 36d8c824913d7b12491a9f075ae2de9db032d16e $
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

[{assign var="actCategory" value=$oView->getActiveCategory()}]
[{if ($actCategory && $actCategory->iProductPos) || $actCategory->prevProductLink || $actCategory->nextProductLink }]
<div class="locator">
	[{if $actCategory && $actCategory->iProductPos }]
    	<div class="lochead ym-grid linearize-level-1">
       		<div class="ym-g50 ym-gl">
      			<small>
           			<strong id="prodXofY_[{$where}]">[{ oxmultilang ident="INC_DETAILS_LOCATOR_PRODUCT" }] [{ $actCategory->iProductPos }] / [{ $actCategory->iCntOfProd }]</strong>
        		</small>
        	</div>
        	<div class="ym-g50 ym-gr textr">
        		<small>
        			<a id="BackOverview[{$where}]" href="[{$actCategory->toListLink }]">[{ oxmultilang ident="INC_DETAILS_LOCATOR_BACKTOOVERVIEW" }][{if ($oView->getListType() == "list" || $oView->getListType() == "vendor" || $oView->getListType() == "manufacturer") && $actCategory}] [{ $actCategory->oxcategories__oxtitle->value }][{/if}]</a></small>
			</div>
       </div>
     [{/if }]
     <div class="locbody  ym-grid linearize-level-1">
     	<div class="ym-g50 ym-gl">
     		<small>
     			<strong>
     				[{oxmultilang ident="DETAILS_PRODUCTDETAILS"}]
     			</strong>
     		</small>
     	</div>
        <div class="ym-g50 ym-gr textr">
        	<small>
        <span id="selID_ArticleNav[{$where}]">
            [{assign var="blSep" value=""}]
            [{if $actCategory->prevProductLink }]
              <a id="link_prevArticle[{$where}]" href="[{$actCategory->prevProductLink }]"><span class="arrow">&laquo;</span> [{ oxmultilang ident="INC_DETAILS_LOCATOR_PREVIOUSPRODUCT" }]</a>
              [{assign var="blSep" value="y"}]
            [{/if}]
            [{if $actCategory->nextProductLink }]
              [{ if $blSep == "y"}]
                <span class="sep">|</span>
              [{/if}]
              <a id="link_nextArticle[{$where}]" href="[{$actCategory->nextProductLink }]">[{ oxmultilang ident="INC_DETAILS_LOCATOR_NEXTPRODUCT" }] <span class="arrow">&raquo;</span></a>
            [{/if}]
        </span>
     </small>
        </div>
     </div>
</div>
[{/if}]