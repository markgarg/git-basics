({
    handleClick : function(component, event, helper) {
        const var1 = component.get("v.greeting");
        console.log('var1 :' + var1);
        console.log('handleClick is called, event is :' + event.target.value);

        const vehicles = [{"name": "car", "type": "short"}, {"name": "train", "type": "long"}, {"name": "bus", "type": "short"}];
        component.set("v.vehicles", vehicles);

        helper.helperMethod();
    },
    
    addOneMore : function(component, event, helper) {
        const vehicles = component.get("v.vehicles");
        vehicles.push({"name": "ship", "type": "long"});
        component.set("v.vehicles", vehicles);
    }
})
