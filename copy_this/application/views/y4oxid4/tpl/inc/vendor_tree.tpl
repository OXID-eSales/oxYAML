[{*
#########################################################################
#	$Id: 001f5d796d19313154074f843a576d86f5beb757 $
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
[{strip}]
<ul [{if $class}]class="[{$class}] ym-vlist box_vendor" [{else}]class="ym-vlist box_vendor"[{/if}]>
    <li>
        [{assign var="_rootvendor" value=$oView->getRootVendor() }]
        <a id="leftRootVendor" href="[{if $_rootvendor}][{ $_rootvendor->getLink() }][{/if}]" class="root[{if $oView->getVendorId()}] exp[{/if}] [{if $oView->getVendorId()==$_rootvendor->getId()}]act[{/if}]">[{ $_rootvendor->oxvendor__oxtitle->value }]</a>
        [{if $oView->getVendorId() }]
            <ul>
            [{foreach from=$tree item=ovnd key=vndkey name=test_vendor }]
                <li><a id="BoxLeft_SubVend_[{$smarty.foreach.test_vendor.iteration}]" href="[{$ovnd->getLink()}]" class="[{if $oView->getVendorId()==$ovnd->getId()}]act last[{/if}]">[{ $ovnd->oxvendor__oxtitle->value }][{ if $ovnd->getNrOfArticles() > 0 }] ([{$ovnd->getNrOfArticles()}])[{/if}]</a></li>
            [{/foreach}]
            </ul>
        [{/if}]
    </li>
</ul>
[{/strip}]