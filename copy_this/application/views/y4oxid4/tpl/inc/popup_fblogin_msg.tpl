[{*
#########################################################################
#	$Id: d94cf60d4f2b74b5ab1cd62c3bcef980f092347a $
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
<div id="popup" class="popup fbMsg">
    <strong>[{ oxmultilang ident="FACEBOOK_POPUP_HEADER" }]</strong>

    <div class="popupMsg">
        <br><br>
        [{ oxmultilang ident="FACEBOOK_POPUP_UPDATEDONETEXT" }]
    </div>

    <div class="popupFooter">
        <form action="" method="get">
        <div>
           <span class="btn"><input id="Login" type="button" class="btn" name="cancel_send" value="[{ oxmultilang ident="FACEBOOK_POPUP_CLOSEBTN" }]" onClick = "oxid.popup.hide();"></span>
        </div>
    </form>
    </div>
</div>

[{oxscript add="oxid.popup.showFbMsg();" }]

