[{*
#########################################################################
#	$Id: dae8906ed7ed7db63a8906e405bd8a3a05934ff5 $
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
<script type="text/fbml">
                    <fb:fbml>
                      <fb:request-form action="[{$oView->getCanonicalUrl()}]"
                                method="GET"
                                invite="true"
                                type="Facebook"
                                content="[{ oxmultilang ident="FACEBOOK_INVITETEXT" }]<fb:req-choice url='[{$oView->getCanonicalUrl()}]' label='[{ oxmultilang ident="FACEBOOK_INVITEBUTTONTEXT" }]'></fb:req-choice>">
                                <fb:multi-friend-selector
                                    showborder="false"
                                    rows="3"
                                    cols="3"
                                    max="20"
                                    width="560"
                                    actiontext="[{ oxmultilang ident="FACEBOOK_INVITEHEADER" }]">
                                </fb:multi-friend-selector>
                      </fb:request-form>
                    </fb:fbml>
                </script>