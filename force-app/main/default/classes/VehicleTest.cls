@isTest
private class VehicleTest {

    @isTest
    static void shouldReturnCorrectMileage() {
        Vehicle v = new Vehicle();
        v.distance = 100;
        v.fuelUsed = 5;
        
        Decimal mileage = v.getMileage();

        System.assertEquals(20, mileage, 'Mileage should be 20kmpl');
    }
}