---
layout: single
permalink: /2019/registration/
title: "Registration"
---

<div id="eventbrite-widget-container-60630597750"></div>

<script src="https://www.eventbrite.com/static/widgets/eb_widgets.js"></script>

<script type="text/javascript">
    var exampleCallback = function() {
        console.log('Order complete!');
    };

    window.EBWidgets.createWidget({
        // Required
        widgetType: 'checkout',
        eventId: '60630597750',
        iframeContainerId: 'eventbrite-widget-container-60630597750',

        // Optional
        iframeContainerHeight: 425,  // Widget height in pixels. Defaults to a minimum of 425px if not provided
        onOrderComplete: exampleCallback  // Method called when an order has successfully completed
    });
</script>

<br/>
Ticketing powered by
<a href="https://www.eventbrite.com/e/openafs-workshop-2019-tickets-60630597750" target="_blank">
Eventbrite.com</a>.
