sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"customersales/test/integration/pages/CustomersList.gen",
	"customersales/test/integration/pages/CustomersObjectPage.gen",
	"customersales/test/integration/pages/OrdersObjectPage.gen"
], function (JourneyRunner, CustomersListGenerated, CustomersObjectPageGenerated, OrdersObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('customersales') + '/test/flp.html#app-preview',
        pages: {
			onTheCustomersListGenerated: CustomersListGenerated,
			onTheCustomersObjectPageGenerated: CustomersObjectPageGenerated,
			onTheOrdersObjectPageGenerated: OrdersObjectPageGenerated
        },
        async: true
    });

    return runner;
});

