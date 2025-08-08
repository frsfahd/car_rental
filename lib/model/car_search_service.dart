import 'package:car_rental/model/car_details.dart';

class CarSearchService {
  static List<CarDetails> searchModels(String query, List<CarDetails> cars) {
    if (query.isEmpty) return cars;

    final normalizedQuery = query.toLowerCase().trim();

    return cars.where((car) {
      return _matchesExactModel(car, normalizedQuery) ||
          _matchesPartialModel(car, normalizedQuery) ||
          _matchesBrand(car, normalizedQuery);
    }).toList();
  }

  static List<CarDetails> searchBrands(
    Set<String> brandsQuery,
    List<CarDetails> cars,
  ) {
    if (brandsQuery.isEmpty) return cars;

    return cars.where((car) {
      return _filterByBrand(car, brandsQuery);
    }).toList();
  }

  // 1. Exact match (case insensitive)
  static bool _matchesExactModel(CarDetails car, String query) {
    return car.name.toLowerCase() == query;
  }

  // 2. Partial match (contains query)
  static bool _matchesPartialModel(CarDetails car, String query) {
    return car.name.toLowerCase().contains(query);
  }

  // 3. Brand match
  static bool _matchesBrand(CarDetails car, String query) {
    return car.brand.name.toLowerCase().contains(query);
  }

  // Brand Filtering
  static bool _filterByBrand(CarDetails car, Set<String> brandsQuery) {
    return brandsQuery.contains(car.brand.name);
  }
}
