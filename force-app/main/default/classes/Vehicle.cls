public class Vehicle {
    // distance is in kms
    public Decimal distance;
    public Decimal fuelUsed;

    public void horn() {
        System.debug('horn from Vehicle');
    }

    public Decimal getMileage() {
        return Utils.calculateMileage(distance, fuelUsed);
    }
}