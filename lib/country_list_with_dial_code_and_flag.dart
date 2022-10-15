library country_list_with_dial_code_and_flag;

part 'country.dart';
part 'country_list.dart';

class CountryList {
  static Country? getCountry(String shortCode) {
    List<Country> countryList =
        countries.map((e) => Country.fromJson(e)).toList();

    return countryList
        .where((country) =>
            (country.code).toLowerCase() == shortCode.toLowerCase())
        .first;
  }

  static List<Country> getList() {
    return countries.map((e) => Country.fromJson(e)).toList();
  }
}
