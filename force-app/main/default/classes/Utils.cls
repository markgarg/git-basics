public class Utils {
    // distance is in miles and fuel is in litres
    public static Decimal calculateMileage(Decimal distance, Decimal fuelUsed) {
        Decimal distanceInKms = distance * 8 / 5;
        return (distanceInKms / fuelUsed);
    }
}