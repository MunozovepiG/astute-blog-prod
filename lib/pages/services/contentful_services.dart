import 'dart:convert';
import 'package:http/http.dart' as http;

class ContentfulService {
  static const String SPACE_ID = '52pm3z53yqha';
  static const String ACCESS_TOKEN =
      'CrwQ8H9bUyzTnn8n7kERjESXn8iwPMg5zjgkBYC0jZA';

  Future<List<dynamic>> fetchEntries() async {
    final response = await http.get(
      Uri.parse(
        'https://cdn.contentful.com/spaces/$SPACE_ID/entries?access_token=$ACCESS_TOKEN&content_type=blogPost',
      ),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return data['items'];
    } else {
      throw Exception('Failed to load entries');
    }
  }
}
