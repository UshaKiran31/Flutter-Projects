import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = 'b05373ff-dec2-444b-b76c-25b9cdf7dc7d';

class CoinData {
  Future getCoinData(String selectedCurrency) async {
    // String requestURL = '$coinAPIURL/BTC/$selectedCurrency?apikey=$apiKey';
    String requestURL = '$coinAPIURL/BTC$selectedCurrency?apikey=$apiKey';
    final Uri urlParse = Uri.parse(requestURL);
    http.Response response = await http.get(urlParse);

    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      var lastPrice = decodedData['rate'];
      return lastPrice;
    } else {
      print(response.statusCode);
      throw 'Problem with the get request';
    }
  }
}
