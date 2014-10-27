[{*
#########################################################################
#	$Id: a6846ead7901bb68432efd829523760bd917b9f4 $
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
#########################################################################*}]
[{strip}]
[{*BEGINN Theme 2 Spalten, oder 3 Spalten*}]
	[{if $oViewConf->getViewThemeParam('YAML_Theme_2-3sp') == 'sp2'}]
				</section> <!-- ENDE div.content -->
			</div> <!-- ENDE div.ym-cbox -->
   		</div> <!-- ENDE div.ym-col1 -->
                
        [{if $oView->getClassName()=='basket' || $oView->getClassName()== 'user' || $oView->getClassName()== 'payment' || $oView->getClassName()== 'order' || $oView->getClassName()== 'thankyou'}]
        [{else}]
        <aside class="ym-col3">
        [{include file="layout/left.tpl" }]
        </aside>
        [{/if}]
    [{elseif $oViewConf->getViewThemeParam('YAML_Theme_2-3sp') == 'sp3'}]
    		</section> <!-- ENDE div.content -->
        </div> <!-- ENDE div.ym-cbox -->
   	</div>   <!-- ENDE div.ym-col1 -->
   	
   	
   		[{if $oView->getClassName()=='basket' || $oView->getClassName()== 'user' || $oView->getClassName()== 'payment' || $oView->getClassName()== 'order' || $oView->getClassName()== 'thankyou'}]
        [{else}]
        	<aside class="ym-col2">
        		[{include file="layout/right.tpl" }]
        	</aside>
        	<aside class="ym-col3">
        	[{include file="layout/left.tpl" }]
        	</aside>
        [{/if}]	
   	[{/if}]
[{*ENDE Theme 2 Spalten, oder 3 Spalten Teil 2 in _footer.tpl*}]
	</div><!-- ENDE div.ym-column -->
	[{/strip}]
</main><!-- ENDE main -->

[{*Anfang footer*}]
		<footer>
		<div class="ym-grid">
    			<div class="ym-g25 ym-gl">
    				<div class="ym-gbox">
       					<div class="box_header_nb">
       					<h6 class="ym-vlist">Netzwerk</h6>
       					<div id="social_footer" ></div>
       					[{* oxcontent ident="footer_box1" *}]
						</div>
    				</div>
    			</div>
    			<div class="ym-g25 ym-gl">
    				<div class="ym-gbox">
        				<div class="box_header_nb">
        				[{ oxcontent ident="footer_box1" }]
        				[{* oxcontent ident="footer_box2" *}]
						</div>
    				</div>
    			</div>
    			<div class="ym-g25 ym-gl">
    				<div class="ym-gbox">
   						<div class="box_header_nb">
   						[{ include file="widget/boxes/box_information.tpl" }]
   						
						</div>
    				</div>
    			</div>
    			<div class="ym-g25 ym-gr">
    				<div class="ym-gbox">
    					[{ include file="widget/boxes/box_footer_service.tpl" }]
    				</div>
    			</div>
    		</div>
    		[{*BEGINN dieser Bereich des Copyrighthinweis darf nicht entfernt, oder verändert werden, er deaktiviert sich automatisch, wenn Sie im Adminbereich die entsprechenden Lizenzeinstellungen tätigen*}]
    	<div id="c_y4oxid4" class="textc">
    		[{*Beginn Copyright YAML4 Framework by Dirk Jesse*}]
    			[{if $oViewConf->getViewThemeParam('YAML_Licence') != 'free'}]
    				<!-- yaml4_[{$oViewConf->getViewThemeParam('YAML_Licence')}] -->
    			[{else}]
    				[{$oViewConf->getViewThemeParam('f8e4b3a2a4bf38011fdc570929b07ee6')}]
    			[{/if}]
    		[{*ENDE Copyright YAML4 Framework by Dirk Jesse*}]
    		[{*Beginn Copyright y4:oxid4 by rene@eshop-source.de*}]
    			[{if $oViewConf->getViewThemeParam('YAML_Theme_Licence') != 'freetheme'}]
    				<!-- y4oxid4_[{$oViewConf->getViewThemeParam('YAML_Theme_Licence')}] -->
    			[{else}]
    				[{$oViewConf->getViewThemeParam('767a47752314c4a3e8dcbbf16ea333f8')}]
    			[{/if}]
    		[{*ENDE Copyright y4:oxid4 by rene@eshop-source.de*}]
    	</div>
    	[{*ENDE dieser Bereich des Copyrighthinweis darf nicht entfernt, oder verändert werden, er deaktiviert sich automatisch, wenn Sie im Adminbereich die entsprechenden Lizenzeinstellungen tätigen*}]

		</footer>
      	[{*Ende footer*}]
		[{*
		<div id="footerbox3" class="ym-grid">
		[{ oxcontent ident="footer_box3" }]
		</div>
		*}]
	</div><!-- ENDE div.ym-wbox -->
</div><!-- ENDE div.ym-wrapper -->
<div id="mask"></div>

[{if $popup}][{include file=$popup}][{/if}]
[{oxid_include_dynamic file="dyn/newbasketitem_popup.tpl"}]

[{*FACEBOOKMODUL VON OXID WIRD NICHT GENUTZT*}]
[{*if $oView->showFbConnectToAccountMsg()}]
[{ insert name="oxid_fblogin"}]
[{/if*}]

[{oxid_include_dynamic file="dyn/popup_scbasketexcl.tpl"}]
[{oxscript include="oxid.js"}]

[{oxscript include="javascript/libs/jquery.min.js" priority=1}]
[{oxscript include="javascript/libs/cookie/jquery.cookie.js" priority=1}]
[{oxscript include="javascript/libs/jquery-ui.min.js" priority=1}]

[{oxscript include="css/yaml/add-ons/syncheight/jquery.syncheight.js"}]
[{oxscript include="javascript/custom.js"}]
[{oxscript include="javascript/superfish/hoverIntent.js"}]
[{oxscript include="javascript/superfish/superfish.js"}]
[{oxscript include="javascript/superfish/menue.js"}]
[{oxscript include='css/yaml/core/js/yaml-focusfix.js'}]
[{oxscript include="javascript/jquery.socialshareprivacy.min.js"}]
[{ include file="widget/socialize.tpl" }]

[{*if $oView->getClassName()=='start' || $oView->getClassName()=='details' ||  if $oView->getClassName()=='oxwarticledetails'*}]
[{oxscript include="css/yaml/add-ons/accessible-tabs/jquery.tabs.js"}]
[{oxscript include='javascript/tabs.js'}]
[{*/if*}]

[{if $oView->getClassName()=='start'}]
[{oxscript include='javascript/nivo-slider/jquery.nivo.slider.pack.js'}]
[{ include file="widget/nivo_js.tpl" }]
[{/if}]

[{*if $oView->getClassName()=='details' ||  if $oView->getClassName()=='oxwarticledetails'*}]
[{oxscript include="javascript/jquery.jqzoom-core.js"}]
[{ include file="widget/jqzoom_js.tpl" }]
[{*/if*}]



[{*FACEBOOKMODUL VON OXID WIRD NICHT GENUTZT*}]
[{* include file="inc/facebook/fb_init.tpl" *}]

[{oxscript}][{oxid_include_dynamic file="dyn/oxscript.tpl" }]
<!--[if lt IE 7]><script type="text/javascript">oxid.popup.addShim();</script><![endif]-->
[{*DEBUG AKTUELLE VIEW IM FOOTER ANZEIGEN*}]
[{*$oView->getClassName()*}]
</body>
</html>