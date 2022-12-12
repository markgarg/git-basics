public class Utils {
    // distance is in km and fuel is in litres
    public static Decimal calculateMileage(Decimal distance, Decimal fuelUsed) {
        return (distance / fuelUsed);
    }
}