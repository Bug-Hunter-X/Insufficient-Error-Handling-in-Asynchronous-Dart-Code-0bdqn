```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // ignore: avoid_print
      print('Response body: ${response.body}');
    } else {
      // ignore: avoid_print
      print('Request failed with status: ${response.statusCode}.');
      // In this case, you should handle the error appropriately,
      // such as showing an error message to the user or retrying the request.
    }
  } catch (e) {
    // ignore: avoid_print
    print('Exception caught: $e');
    // Handle the exception appropriately. You might want to retry the request,
    // show an error message, or log the exception for debugging.
  }
}
```