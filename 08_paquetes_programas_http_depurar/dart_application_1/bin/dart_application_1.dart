import 'package:dart_application_1/classes/responses.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main(List<String> args) async {
  
  try {
    
    Uri url = Uri.parse('https://restcountries.com/v3.1/alpha/col') ;
    final response = await http.get(url);

    final userByCountries = userCountriesFromJson(response.body);

    final baseCountry = userByCountries[0];

    print('Pais : ${baseCountry.name.common}');

    final population = baseCountry.population;
    print('población : $population');

    final borders = baseCountry.borders;
    print('Fronteras:');
    borders.forEach(print);

    final languaje = baseCountry.languages.spa;
    print('Lenguaje : $languaje');

    final latInt = baseCountry.latlng;

    print('latitud : ${latInt[0]}');
    print('Longitud : ${latInt[1]}');

    final money = baseCountry.currencies.cop;
    print('Moneda : ${money.name}');

    final flag = baseCountry.flags;

    print('Bandera ${flag.svg}');


  } catch (e) {
    print(e);
  }

}