@isTest
private class UtilsTest {

    @isTest
    static void shouldReturnCorrectMileage() {
        Decimal mileage = Utils.calculateMileage(100, 5);

        System.assertEquals(20, mileage, 'Mileage should be 20kmpl');
    }
}