({
    handleClick : function(component, event, helper) {
        const var1 = component.get("v.greeting");
        console.log('var1 :' + var1);
        console.log('handleClick is called, event is :' + event.target.value);
        helper.helperMethod();
    }
})
