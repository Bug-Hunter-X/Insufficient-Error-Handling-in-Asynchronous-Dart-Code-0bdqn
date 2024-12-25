```dart
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  int retries = 3; 
  while (retries > 0) {
    try {
      final response = await http.get(Uri.parse('https://api.example.com/data'));
      if (response.statusCode == 200) {
        //Process successful response
        // ignore: avoid_print
        print('Response body: ${response.body}');
        return;
      } else {
        // ignore: avoid_print
        print('Request failed with status: ${response.statusCode}. Retrying...');
        retries--;
        await Future.delayed(Duration(seconds: 2)); // Wait before retrying
      }
    } catch (e) {
      print('Exception caught: $e. Retrying...');
      retries--;
      await Future.delayed(Duration(seconds: 2)); // Wait before retrying
    }
  }
  //Handle failure after multiple retries
  // ignore: avoid_print
  print('Failed to fetch data after multiple retries.');
}
```