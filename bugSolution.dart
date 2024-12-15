```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle error gracefully, perhaps by providing a more user-friendly message
      throw Exception('Failed to load data: ${response.statusCode} - ${response.reasonPhrase}');
    }
  } catch (e, stacktrace) {
    // Handle exceptions with stacktrace for detailed debugging information
    print('Error: $e');
    print('Stacktrace: $stacktrace');
    //Consider custom error handling for better user experience.
    // Optionally re-throw the exception after logging it and enriching it
    // throw Exception('Data fetching failed: $e', stacktrace); 
  }
}
```