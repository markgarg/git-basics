({
    nameClicked: function(cmp, evt, helper) {
        evt.preventDefault();
        const fruitselectedevent = cmp.getEvent("fruitIsSelected");
        fruitselectedevent.fire();
    }
})
