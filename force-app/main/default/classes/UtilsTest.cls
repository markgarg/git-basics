@isTest
private class UtilsTest {

    @isTest
    static void shouldReturnCorrectMileage() {
        Decimal mileage = Utils.calculateMileage(100, 5);

        System.assertEquals(32, mileage, 'Mileage should be 32kmpl');
    }
}