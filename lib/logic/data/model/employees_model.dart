class ResponseData {
  final int? userID;
  final String? name;
  final String? username;
  final String? email;
  final String? phone;
  final Address? address;

  ResponseData(
      {this.userID,
      this.name,
      this.username,
      this.email,
      this.phone,
      this.address});

  factory ResponseData.fromJson(Map<String, dynamic> usersjson) => ResponseData(
      userID: usersjson["id"],
      name: usersjson["name"],
      username: usersjson["username"],
      email: usersjson["email"],
      phone: usersjson["phone"],
      address: Address.fromJson(usersjson["address"]));
}

class Address {
  final String street;
  final String suite;
  final String city;
  final String zipcode;

  Address(
      {required this.street,
      required this.suite,
      required this.city,
      required this.zipcode});

  factory Address.fromJson(Map<String, dynamic> addjson) {
    return Address(
        street: addjson["street"],
        suite: addjson["suite"],
        city: addjson["city"],
        zipcode: addjson["zipcode"]);
  }
}
