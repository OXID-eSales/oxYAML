[{block name="checkout_steps_main"}]
    <div id="checkout_status" class="ym-grid  linearize-level-1 ordersteps">
            [{if $oxcmp_basket->getProductsCount()}]
            [{assign var=showStepLinks value=true}]
        [{/if}]

        [{block name="checkout_steps_basket"}]
            <div class="ym-g20 ym-gl">
				<div class="ym-gbox first">
					<div class="box [{if $active == 1}]warning [{elseif $active > 1}]info[{/if}]">
						[{if $showStepLinks}]<a rel="nofollow" href="[{oxgetseourl ident=$oViewConf->getBasketLink()}]">[{/if}]
                    <strong>[{oxmultilang ident="STEPS_BASKET"}]</strong>
                    [{if $showStepLinks}]</a>[{/if}]
                </div>
            </div>
            </div>
        [{/block}]

        [{assign var=showStepLinks value=false}]
        [{if !$oView->isLowOrderPrice() && $oxcmp_basket->getProductsCount()}]
            [{assign var=showStepLinks value=true}]
        [{/if}]

        [{block name="checkout_steps_send"}]
        <div class="ym-g20 ym-gl">
			<div class="ym-gbox middle">
				<div class="box [{if $active == 2}] warning [{elseif $active > 2}] info [{/if}]">
                <strong>
                    [{if $showStepLinks}]<a rel="nofollow" href="[{oxgetseourl ident=$oViewConf->getOrderLink()}]">[{/if}]
                    [{oxmultilang ident="STEPS_SEND"}]
                    [{if $showStepLinks}]</a>[{/if}]
                </strong>
            </div>
			</div>
        </div>
        [{/block}]

        [{assign var=showStepLinks value=false}]
        [{if $active != 1 && $oxcmp_user && !$oView->isLowOrderPrice() && $oxcmp_basket->getProductsCount()}]
            [{assign var=showStepLinks value=true}]
        [{/if}]

        [{block name="checkout_steps_pay"}]
        <div class="ym-g20 ym-gl">
		<div class="ym-gbox middle">
			<div class="box [{if $active == 3}] warning [{elseif $active > 3}] info [{/if}]">
                <strong>
                    [{if $showStepLinks}]<a rel="nofollow" [{if $oViewConf->getActiveClassName() == "user"}]id="paymentStep"[{/if}] href="[{oxgetseourl ident=$oViewConf->getPaymentLink()}]">[{/if}]
                    [{oxmultilang ident="STEPS_PAY"}]
                    [{if $showStepLinks}]</a>[{/if}]
                </strong>
            </div>
          </div>
        </div>
            [{oxscript add="$('#paymentStep').click( function() { $('#userNextStepBottom').click();return false;});"}]
        [{/block}]

        [{assign var=showStepLinks value=false}]
        [{if $active != 1 && $oxcmp_user && $oxcmp_basket->getProductsCount() && $oView->getPaymentList() && !$oView->isLowOrderPrice()}]
            [{assign var=showStepLinks value=true}]
        [{/if}]

        [{block name="checkout_steps_order"}]
        <div class="ym-g20 ym-gl ">
		<div class="ym-gbox middle">
			<div class="box [{if $active == 4}] warning [{elseif $active > 4}] info [{/if}]">
                <strong>
                    [{if $showStepLinks}]<a rel="nofollow" [{if $oViewConf->getActiveClassName() == "payment"}]id="orderStep"[{/if}] href="[{if $oViewConf->getActiveClassName() == "payment"}]javascript:document.forms.order.submit();[{else}][{oxgetseourl ident=$oViewConf->getOrderConfirmLink()}][{/if}]">[{/if}]
                    [{oxmultilang ident="STEPS_ORDER"}]
                    [{if $showStepLinks}]</a>[{/if}]
                </strong>
            </div>
		</div>
        </div>
            [{oxscript add="$('#orderStep').click( function() { $('#paymentNextStepBottom').click();return false;});"}]
        [{/block}]

        [{block name="checkout_steps_laststep"}]
            <div class="ym-g20 ym-gr">
		<div class="ym-gbox last">
			<div class="box [{if $active == 5}] warning [{else}] info [{/if}] ">
                <strong>
                    [{oxmultilang ident="READY"}]
                </strong>
            </div>
		</div>
            </div>
        [{/block}]
    </div>
[{/block}]