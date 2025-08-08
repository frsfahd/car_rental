enum carBrands {
  Audi,
  BMW,
  Cherry,
  Daihatsu,
  Ford,
  Honda,
  Isuzu,
  KIA,
  Mitsubishi,
  Suzuki,
  Toyota,
  Volvo,
}

enum transmissionType { Manual, Automatic }

extension CarBrandsExtension on carBrands {
  String get name {
    switch (this) {
      case carBrands.Audi:
        return 'Audi';
      case carBrands.BMW:
        return 'BMW';
      case carBrands.Cherry:
        return 'Cherry';
      case carBrands.Daihatsu:
        return 'Daihatsu';
      case carBrands.Ford:
        return 'Ford';
      case carBrands.Honda:
        return 'Honda';
      case carBrands.Isuzu:
        return 'Isuzu';
      case carBrands.KIA:
        return 'KIA';
      case carBrands.Mitsubishi:
        return 'Mitsubishi';
      case carBrands.Suzuki:
        return 'Suzuki';
      case carBrands.Toyota:
        return 'Toyota';
      case carBrands.Volvo:
        return 'Volvo';
    }
  }
}

extension TransmissionTypeExtension on transmissionType {
  String get name {
    switch (this) {
      case transmissionType.Automatic:
        return "Automatic";
      case transmissionType.Manual:
        return "Manual";
    }
  }
}

class CarDetails {
  final String name;
  final carBrands brand;
  final String modelYear;
  final num mileage;
  final double price;
  final String img_url;
  final int num_seats;
  final int num_doors;
  final transmissionType transmission;
  final int max_power;
  final num top_speed;
  final num max_range;
  final num fuel_capacity;

  const CarDetails({
    required this.name,
    required this.brand,
    required this.modelYear,
    required this.mileage,
    required this.price,
    required this.img_url,
    required this.num_seats,
    required this.num_doors,
    required this.transmission,
    required this.max_power,
    required this.top_speed,
    required this.max_range,
    required this.fuel_capacity,
  });
}

List<CarDetails> carList = [
  CarDetails(
    name: 'Audi A4',
    brand: carBrands.Audi,
    modelYear: '2021',
    mileage: 12500,
    price: 4200.00,
    img_url:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/2018_Audi_A4_Sport_TDi_Quattro_S-A_2.0.jpg/960px-2018_Audi_A4_Sport_TDi_Quattro_S-A_2.0.jpg",
    num_seats: 5,
    num_doors: 4,
    transmission: transmissionType.Automatic,
    max_power: 190,
    top_speed: 210,
    max_range: 800,
    fuel_capacity: 58,
  ),
  CarDetails(
    name: 'BMW 3 Series',
    brand: carBrands.BMW,
    modelYear: '2022',
    mileage: 8500,
    price: 4599.99,
    img_url:
        "https://img.cintamobil.com/2019/07/22/X04JVabA/330i-m-sport-2019-3-aebb.jpeg",
    num_seats: 5,
    num_doors: 4,
    transmission: transmissionType.Automatic,
    max_power: 180,
    top_speed: 200,
    max_range: 750,
    fuel_capacity: 55,
  ),
  CarDetails(
    name: 'Cherry Tiggo 7',
    brand: carBrands.Cherry,
    modelYear: '2020',
    mileage: 32000,
    price: 1850.50,
    img_url:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Chery_Tiggo_7_II_008.jpg/960px-Chery_Tiggo_7_II_008.jpg",
    num_seats: 7,
    num_doors: 5,
    transmission: transmissionType.Automatic,
    max_power: 145,
    top_speed: 180,
    max_range: 700,
    fuel_capacity: 51,
  ),
  CarDetails(
    name: 'Daihatsu Terios',
    brand: carBrands.Daihatsu,
    modelYear: '2019',
    mileage: 45000,
    price: 1550.75,
    img_url:
        "https://cdn.quicksell.co/-NPSI1BjHN3v0zfSIN8S/products/-Ncv-lCP4n89Kg8qexTn.jpg",
    num_seats: 7,
    num_doors: 5,
    transmission: transmissionType.Manual,
    max_power: 104,
    top_speed: 165,
    max_range: 600,
    fuel_capacity: 45,
  ),
  CarDetails(
    name: 'Ford Mustang',
    brand: carBrands.Ford,
    modelYear: '2023',
    mileage: 5000,
    price: 5250.00,
    img_url:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/2019_Ford_Mustang_GT_Blue.jpg/1200px-2019_Ford_Mustang_GT_Blue.jpg",
    num_seats: 4,
    num_doors: 2,
    transmission: transmissionType.Automatic,
    max_power: 450,
    top_speed: 250,
    max_range: 500,
    fuel_capacity: 61,
  ),
  CarDetails(
    name: 'Honda Civic',
    brand: carBrands.Honda,
    modelYear: '2021',
    mileage: 18000,
    price: 2450.00,
    img_url:
        "https://img.cintamobil.com/crop/640x360/2025/06/18/20250618183456-05c5.jpg",
    num_seats: 5,
    num_doors: 4,
    transmission: transmissionType.Automatic,
    max_power: 174,
    top_speed: 210,
    max_range: 650,
    fuel_capacity: 47,
  ),
  CarDetails(
    name: 'Isuzu D-Max',
    brand: carBrands.Isuzu,
    modelYear: '2020',
    mileage: 35000,
    price: 3250.25,
    img_url:
        "https://cdn.quicksell.co/-My6FfBpPDhAjmjgfvus/products/-NGqlB2rtOAKflNy-RO3.jpg",
    num_seats: 5,
    num_doors: 4,
    transmission: transmissionType.Manual,
    max_power: 150,
    top_speed: 180,
    max_range: 800,
    fuel_capacity: 76,
  ),
  CarDetails(
    name: 'KIA Sportage',
    brand: carBrands.KIA,
    modelYear: '2022',
    mileage: 12000,
    price: 2899.99,
    img_url:
        "https://s1.ppllstatics.com/lasprovincias/www/multimedia/202212/12/media/cortadas/IMG_0802-RInz9ILsByYYUlANasc9J2L-1248x770@Las%20Provincias.jpg",
    num_seats: 5,
    num_doors: 5,
    transmission: transmissionType.Automatic,
    max_power: 187,
    top_speed: 201,
    max_range: 700,
    fuel_capacity: 54,
  ),
  CarDetails(
    name: 'Mitsubishi Outlander',
    brand: carBrands.Mitsubishi,
    modelYear: '2018',
    mileage: 55000,
    price: 2250.00,
    img_url:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/2022_Mitsubishi_Outlander_SE_S-AWC%2C_07-29-2022.jpg/960px-2022_Mitsubishi_Outlander_SE_S-AWC%2C_07-29-2022.jpg",
    num_seats: 7,
    num_doors: 5,
    transmission: transmissionType.Automatic,
    max_power: 181,
    top_speed: 190,
    max_range: 650,
    fuel_capacity: 60,
  ),
  CarDetails(
    name: 'Suzuki Swift',
    brand: carBrands.Suzuki,
    modelYear: '2021',
    mileage: 20000,
    price: 1650.50,
    img_url:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Suzuki_Swift_1.2_Comfort_%28FZ_NZ%29_%E2%80%93_Frontansicht%2C_26._M%C3%A4rz_2011%2C_D%C3%BCsseldorf.jpg/1200px-Suzuki_Swift_1.2_Comfort_%28FZ_NZ%29_%E2%80%93_Frontansicht%2C_26._M%C3%A4rz_2011%2C_D%C3%BCsseldorf.jpg",
    num_seats: 5,
    num_doors: 5,
    transmission: transmissionType.Manual,
    max_power: 89,
    top_speed: 165,
    max_range: 550,
    fuel_capacity: 37,
  ),
  CarDetails(
    name: 'Toyota Camry',
    brand: carBrands.Toyota,
    modelYear: '2022',
    mileage: 15000,
    price: 3290.00,
    img_url:
        "https://img.cintamobil.com/crop/640x360/2025/07/21/oqvhz6kjyzu0jnshkyzb8vbwnnxalqoj6rlfsimage-182c.png",
    num_seats: 5,
    num_doors: 4,
    transmission: transmissionType.Automatic,
    max_power: 203,
    top_speed: 220,
    max_range: 750,
    fuel_capacity: 60,
  ),
  CarDetails(
    name: 'Volvo XC60',
    brand: carBrands.Volvo,
    modelYear: '2020',
    mileage: 28000,
    price: 4150.00,
    img_url:
        "https://f7432d8eadcf865aa9d9-9c672a3a4ecaaacdf2fee3b3e6fd2716.ssl.cf3.rackcdn.com/C2907/U1611/IMG_36473-large.jpg",
    num_seats: 5,
    num_doors: 5,
    transmission: transmissionType.Automatic,
    max_power: 250,
    top_speed: 220,
    max_range: 700,
    fuel_capacity: 71,
  ),
  // Additional variations
  CarDetails(
    name: 'Audi Q5',
    brand: carBrands.Audi,
    modelYear: '2019',
    mileage: 42000,
    price: 3850.00,
    img_url:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Audi_Q5_front_20090404.jpg/1200px-Audi_Q5_front_20090404.jpg",
    num_seats: 5,
    num_doors: 5,
    transmission: transmissionType.Automatic,
    max_power: 261,
    top_speed: 210,
    max_range: 650,
    fuel_capacity: 70,
  ),
  CarDetails(
    name: 'Toyota RAV4',
    brand: carBrands.Toyota,
    modelYear: '2023',
    mileage: 8000,
    price: 3450.00,
    img_url:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/2019_Toyota_RAV4_LE_2.5L_front_4.14.19.jpg/960px-2019_Toyota_RAV4_LE_2.5L_front_4.14.19.jpg",
    num_seats: 5,
    num_doors: 5,
    transmission: transmissionType.Automatic,
    max_power: 203,
    top_speed: 190,
    max_range: 600,
    fuel_capacity: 55,
  ),
  CarDetails(
    name: 'Honda CR-V',
    brand: carBrands.Honda,
    modelYear: '2021',
    mileage: 22000,
    price: 2950.00,
    img_url:
        "https://upload.wikimedia.org/wikipedia/commons/1/1b/Honda_CR-V_e-HEV_Elegance_AWD_%28VI%29_%E2%80%93_f_14072024.jpg",
    num_seats: 5,
    num_doors: 5,
    transmission: transmissionType.Automatic,
    max_power: 190,
    top_speed: 190,
    max_range: 650,
    fuel_capacity: 57,
  ),
];
