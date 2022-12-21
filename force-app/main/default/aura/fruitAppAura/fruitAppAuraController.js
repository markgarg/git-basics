({
    addToBasket : function(component, event, helper) {
        console.log('add to basket clicked');
        const fruitName = component.get("v.fruitName");
        const qty = component.get("v.qty");
        console.log(`fruit ${fruitName} with quantity of ${qty} added`);

        // call the changefruit method of fruit basket
        const fb = component.find("fruitBasket");
        fb.changeFruits();
    },
    sortByName : function(component, event, helper) {
        console.log('sort by name clicked');
    },
    sortByQty : function(component, event, helper) {
        console.log('sort by qty clicked');
    },
})
