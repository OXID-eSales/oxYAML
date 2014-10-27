[{*
#########################################################################
#	$Id: fd45c82fa2badbb676685ed17aca39761a1ccca4 $
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
<table class="attributes">
    [{foreach from=$oView->getAttributes() item=oAttr name=attribute}]
    <tr>
        <th id="attrTitle_[{$smarty.foreach.attribute.iteration}]"><strong>[{$oAttr->title}]</strong></th>
        <td id="attrValue_[{$smarty.foreach.attribute.iteration}]">[{$oAttr->value}]</td>
    </tr>
    [{/foreach}]
</table>