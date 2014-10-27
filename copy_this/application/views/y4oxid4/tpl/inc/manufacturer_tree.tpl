[{*
#########################################################################
#	$Id: 243f2055caa4f9a128327fcd2af8e9bafc8250b0 $
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
<ul [{if $class}]class="[{$class}] ym-vlist box_manufacturers" [{else}]class="ym-vlist box_manufacturers"[{/if}]>
    <li>
        [{assign var="_rootManufacturer" value=$oView->getRootManufacturer() }]
        <a id="leftRootManufacturer" href="[{if $_rootManufacturer}][{ $_rootManufacturer->getLink() }][{/if}]" class="root[{if $oView->getManufacturerId()}] exp[{/if}] [{if $oView->getManufacturerId()==$_rootManufacturer->getId()}]act[{/if}]">[{ $_rootManufacturer->oxmanufacturers__oxtitle->value }]</a>
        [{if $oView->getManufacturerId() }]
            <ul>
            [{foreach from=$tree item=oman key=mankey name=test_manufacturer }]
                <li><a id="BoxLeft_SubVend_[{$smarty.foreach.test_manufacturer.iteration}]" href="[{$oman->getLink()}]" class="[{if $oView->getManufacturerId()==$oman->getId()}]act[{/if}]">[{ $oman->oxmanufacturers__oxtitle->value }][{ if $oman->getNrOfArticles() > 0 }] ([{$oman->getNrOfArticles()}])[{/if}]</a></li>
            [{/foreach}]
            </ul>
        [{/if}]
    </li>
</ul>
[{/strip}]