[{*
#########################################################################
#	$Id: 7bd2a4e8b474c66743534045f65a0e62d4324e2e $
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
[{ if $oView->getSimilarRecommLists() }]
        <strong class="h2" id="test_RightSideRecommlistHeader">
            [{ oxmultilang ident="INC_RIGHTITEM_RECOMMLIST" }]
            [{if $rsslinks.recommlists}]
                <a class="rss" id="rssRecommLists" href="[{$rsslinks.recommlists.link}]" title="[{$rsslinks.recommlists.title}]"></a>
                [{oxscript add="oxid.blank('rssRecommLists');"}]
            [{/if}]
        </strong>
        <div class="box">
            <div>[{include file="inc/right_recommlist.tpl" list=$oView->getSimilarRecommLists()}]</div>
            <br>
            <span class="def_color_1">[{ oxmultilang ident="INC_RIGHTITEM_SEARCHFORLISTS" }]</span>
            <form name="basket" action="[{ $oViewConf->getSelfActionLink() }]" method="post" class="recommlistsearch">
              <div>
                  [{ $oViewConf->getHiddenSid() }]
                  <input type="hidden" name="cl" value="recommlist">
                  <input type="text" name="searchrecomm" id="searchRecomm" value="[{$oView->getRecommSearch()}]" class="search_input">
                  <span class="btn"><input id="test_searchRecommlist" type="submit" value="GO!" class="btn"></span>
              </div>
            </form>
        </div>
    [{ /if }]

    [{ if !$oView->getSimilarRecommLists() && $oView->getRecommSearch() }]
        <strong class="h2" id="test_RightSideRecommlistHeader">[{ oxmultilang ident="INC_RIGHTITEM_RECOMMLIST" }]</strong>
        <div class="box">
            <span class="def_color_1">[{ oxmultilang ident="INC_RIGHTITEM_SEARCHFORLISTS" }]</span>
            <form name="basket" action="[{ $oViewConf->getSelfActionLink() }]" method="post" class="recommlistsearch">
              <div>
                  [{ $oViewConf->getHiddenSid() }]
                  <input type="hidden" name="cl" value="recommlist">
                  <input type="text" name="searchrecomm" value="[{$oView->getRecommSearch()}]" class="search_input">
                  <span class="btn"><input id="test_searchRecommlist" type="submit" value="GO!" class="btn"></span>
              </div>
            </form>
        </div>
    [{ /if }]