[{*
#########################################################################
#	$Id: 674e47b29e5fc7f2a12929cc858c1c6b3d2f7c63 $
#	Project:	YAML4 OXID eSales 4 Template 4.8.x
#	ProjectId:	oxYaml 
#	Copyright: 	Rene Ettling (rene@eshop-source.de)
#				(http://www.eshop-source.de)
#				Some parts based on YAML4, Copyright 2005-2012, Dirk Jesse
#
#	Lizenz:		CC BY 3.0
#	Deutsch:	http://creativecommons.org/licenses/by/3.0/de/
#	Schweiz:	http://creativecommons.org/licenses/by/3.0/ch/
#	Englisch:	http://creativecommons.org/licenses/by/3.0/de/deed.en
#
#########################################################################
*}]
[{include file="layout/header.tpl" title=$template_title location="START_TITLE"|oxmultilangassign isStart=true}]

[{include file="widget/galleryslider.tpl" }]
[{strip}]
[{oxifcontent ident="oxstartwelcome" object="oCont"}]
<div class="welcome">[{$oCont->oxcontents__oxcontent->value}]</div>
[{/oxifcontent}]



[{* BEGINN LIZENZHINWEIS *}]

<div class="box error">
<p>Das Theme/Template wurde unter der Creative Commons 3.0 Namensnennung
veröffentlicht.
</p>
<p>
Das als Basis verwendete YAML CSS Framework wurde unter der Creative
Commons CC-BY 2.0 Namensnennung veröffentlicht
</p>
<p>
Sie dürfen das Theme/Template kostenfrei nutzen, wenn sie die
Rückverlinkung und Authorennennung so beibehalten wie sie in
_footer.tpl festgelegt ist. Sie darf nicht verändert werden, oder von
außen nicht sichtbar dargestellt werden (css display:none, etc).
</p>
<p><strong>
ACHTUNG möchten Sie die Rückverlinkung entfernen, müssen Sie VORHER
eine kommerzielle Projektlizenz bei itratos Ltd & Co.
KG erwerben.
</strong></p>
<p>
Eine Lizenz können Sie hier online erwerben:<br><br>

http://yaml.itratos.de/?page_id=143
</p>
<p>
Sie erhalten mit der Rechnung eine <strong>Lizenznummer</strong> für ihren Shop
zugewiesen welche Sie in der vorgegebenen Form im <i>Adminbereich unter Erweiterungen => Themes =>YAML4 OXID 4.7=> YAML 4 Theme Einstellungen</i> <strong>vor
Inbetriebnahme des Shops, eintragen müssen</strong>.
</p>
<p>
<strong>Lizenz: CC BY 3.0 - YAML CSS Framework</strong><br>
Englisch: http://www.yaml.de/license.html<br>
</p>
<p>
<strong>Lizenz: CC BY 3.0 - OXID Template</strong><br>
Deutsch: http://creativecommons.org/licenses/by/3.0/de/<br>
Schweiz: http://creativecommons.org/licenses/by/3.0/ch/<br>
Englisch: http://creativecommons.org/licenses/by/3.0/de/deed.en<br>
</p>
<small>Diesen Hinweistext zur korrekten Lizenzierung können Sie in der Datei start.tpl entfernen.</small>

</div>
[{* ENDE LIZENZHINWEIS *}]

[{*beginn div jquery_tabs*}]

<div class="jquery_tabs">
	[{if $oView->getTopArticleList() }]
	<h4>[{ oxmultilang ident="START_WEEKSPECIAL"}]</h4>
		<div class="tabbody">
			<div class="ym-gbox">
			<div class="ym-clearfix"></div>
				<div id="productlisting_special" class="ym-grid">
					[{foreach from=$oView->getTopArticleList() item=actionproduct name=WeekArt}]
					[{cycle values='ym-gl,ym-gl,ym-gr' assign=n name=WeekArt}]
    					<div class="ym-g33 [{$n}] productBox">
    					[{include file="inc/product.tpl" type=productlisting product=$actionproduct showMainLink=true head="START_WEEKSPECIAL"|oxmultilangassign testid="WeekSpecial_"|cat:$actionproduct->oxarticles__oxid->value testHeader="WeekSpecial_`$smarty.foreach.WeekArt.iteration`"}]
    					</div>
    					[{if $n=='ym-gr'}]
    						<div class="ym-clearfix"></div>
    					[{/if}]
  					[{/foreach}]
  				</div>
			</div>
		</div>
	[{/if}]
	[{if ($oView->getArticleList()|@count)>0 }]
	<h4>[{ oxmultilang ident="START_LONGRUNNINGHITS"}]</h4>
		<div class="tabbody">
			<div class="ym-gbox">
			<div class="ym-clearfix"></div>
			<div id="productlisting_longrun" class="ym-grid">
			[{if ($oView->getArticleList()|@count) is not even  }][{assign var="actionproduct_size" value="big"}][{/if}]
  			[{foreach from=$oView->getArticleList() item=actionproduct}]
			[{cycle values='ym-gl,ym-gl,ym-gr' assign=o name=LongRunner}]
    		<div class="ym-g33 [{$o}] productBox">
			[{include file="inc/product.tpl" type="productlisting" showMainLink=true product=$actionproduct size=$actionproduct_size testid="LongRun_"|cat:$actionproduct->oxarticles__oxid->value }]
      		[{assign var="actionproduct_size" value=""}]
      		</div>
    		[{if $o=='ym-gr'}]
    		<div class="ym-clearfix"></div>
    		[{/if}]
  			[{/foreach}]
			</div>
		</div>
	</div>
	[{/if}]
	
	[{if ($oView->getNewestArticles()|@count)>0 }]		
    <h4>[{ oxmultilang ident="START_JUSTARRIVED"}]</h4>
    	<div class="tabbody">
    		<div class="ym-gbox">
    		<div class="ym-clearfix"></div>
			<div id="productlisting_freshin" class="ym-grid">
			[{foreach from=$oView->getNewestArticles() item=actionproduct}]
			[{cycle values='ym-gl,ym-gl,ym-gr' assign=p name=JustArrived}]
    		<div class="ym-g33 [{$p}] productBox">
				[{include file="inc/product.tpl" type="productlisting" showMainLink=true product=$actionproduct size="small" testid="FreshIn_"|cat:$actionproduct->oxarticles__oxid->value}]
      		</div>
    		[{if $p=='ym-gr'}]
    		<div class="ym-clearfix"></div>
    		[{/if}]
  			[{/foreach}]
			</div>
	   	</div>
	 </div>
	[{/if}]
	
	[{if ($oView->getCatOfferArticleList()|@count)>0 }]
	<h4>[{ oxmultilang ident="START_CATEGORIES"}]</h4>
    	<div class="tabbody">
    		<div class="ym-gbox">
    		<div class="ym-clearfix"></div>
			<div id="productlisting_cats" class="ym-grid">
			[{if ($oView->getCatOfferArticleList()|@count) is not even  }][{assign var="actionproduct_size" value="big"}][{/if}]
  [{foreach from=$oView->getCatOfferArticleList() item=actionproduct name=CatArt}]
  			[{cycle values='ym-gl,ym-gl,ym-gr' assign=q name=Categories}]
    		<div class="ym-g33 [{$q}] productBox">
      			[{if $actionproduct->getCategory() }]
          [{assign var="oCategory" value=$actionproduct->getCategory()}]
          [{assign var="actionproduct_title" value=$oCategory->oxcategories__oxtitle->value}]
          [{if $oCategory->getNrOfArticles() > 0}][{assign var="actionproduct_title" value=$actionproduct_title|cat:" ("|cat:$oCategory->getNrOfArticles()|cat:")"}][{/if}]
          [{include file="inc/product.tpl" type="productlisting" showMainLink=true product=$actionproduct size=$actionproduct_size head=$actionproduct_title head_link=$oCategory->getLink() testid="CatArticle_"|cat:$actionproduct->oxarticles__oxid->value  testHeader="Category_`$smarty.foreach.CatArt.iteration`"}]
          [{assign var="actionproduct_size" value=""}]
      [{/if}]
      </div>
    		[{if $q=='ym-gr'}]
    		<div class="ym-clearfix"></div>
    		[{/if}]
  [{/foreach}]
			</div>
	   	</div>
	 </div>
	[{/if}]
	
	[{if $oView->showTags()  }]
	<h4>[{ oxmultilang ident="TAGS"}]</h4>
		<div class="tabbody">
			<div class="ym-gbox">
			<div class="ym-clearfix"></div>
				[{oxid_include_widget nocookie=1 cl="oxwTagCloud" blShowBox="1" noscript=1 oxwtemplate="inc/tags.tpl"}]
			</div>
		</div>
	[{/if}]
</div>
[{/strip}]
[{*ende div jquery_tabs*}]
[{ insert name="oxid_tracker" title=$template_title }]
[{include file="layout/footer.tpl" }]
