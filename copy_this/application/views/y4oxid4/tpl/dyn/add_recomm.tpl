[{*
#########################################################################
#	$Id: 1c36fe829af5106bfbecc6d3f2b56499022fa6f9 $
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
[{if !$oxcmp_user->oxuser__oxusername->value}]
  [{include file="inc/cmp_login.tpl" }]
[{else}]
  [{assign var="product" value=$oView->getProduct()}]
  <h1><a href="[{ $product->getLink()|oxaddparams:$oViewConf->getNavUrlParams() }]">[{$template_title}]</a></h1>
  <div id="recommlistAdd" class="ym-form ym-full">
    [{ if $oxcmp_user->getRecommListsCount() }]
      <form action="[{ $oViewConf->getSelfActionLink() }]" method="post">
        <div>
            [{ $oViewConf->getHiddenSid() }]
            [{ $oViewConf->getNavFormParams() }]
            <input type="hidden" name="fnc" value="addToRecomm">
            <input type="hidden" name="cl" value="details">
            <input type="hidden" name="anid" value="[{ $product->oxarticles__oxid->value }]">
            <div class="ym-fbox-select">
              <label>[{ oxmultilang ident="ADD_RECOMM_SELECTLIST" }]:</label>
              <select id="recomListAddSelect" class="recomm_input" name="recomm">
                [{foreach from=$oView->getRecommLists() item=oList}]
                  <option value="[{$oList->oxrecommlists__oxid->value}]">[{$oList->oxrecommlists__oxtitle->value}]</option>
                [{/foreach}]
              </select>
             </div>
            <div class="ym-fbox-text">
            <label>[{ oxmultilang ident="ADD_RECOMM_YOURCOMMENT" }]:</label>
            
            <textarea id="recommlistAddText" cols="102" rows="15" name="recomm_txt" class="fullsize"></textarea>
            </div>
            <div class="ym-fbox-button">
            <input id="recommlistAddToList" type="submit" value="[{ oxmultilang ident="ADD_RECOMM_ADDTOLIST" }]" class="ym-button">
            </div>
         </div>
      </form>
    [{else}]
    <p>
      [{ oxmultilang ident="ADD_RECOMM_ADDRECOMMLINK1" }] <a id="recommlistAddHere" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=account_recommlist" }]">[{ oxmultilang ident="ADD_RECOMM_ADDRECOMMLINK2" }]</a>.
    </p>
    [{/if}]
  </div>
[{/if}]
