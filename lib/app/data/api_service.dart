import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:myapp/app/data/api_urls.dart'; // Import the new ApiUrls class

// A custom exception class to handle API-related errors.
class ApiException implements Exception {
  final String message;
  final int? statusCode;

  ApiException(this.message, [this.statusCode]);

  @override
  String toString() {
    return "ApiException: $message (Status Code: $statusCode)";
  }
}

class ApiService {
  // A helper to handle API responses and throw an exception on failure.
  dynamic _handleResponse(http.Response response) {
    final dynamic body = json.decode(response.body);
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return body;
    } else {
      throw ApiException(
        body['message'] ?? 'Unknown API Error',
        response.statusCode,
      );
    }
  }

  // Generic GET request handler.
  Future<dynamic> get(String endpoint, {Map<String, String>? headers}) async {
    try {
      final response = await http.get(
        Uri.parse('${ApiUrls.baseUrl}/$endpoint'), // Use ApiUrls.baseUrl
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          ...?headers,
        },
      );
      return _handleResponse(response);
    } catch (e) {
      // Re-throw as ApiException for consistent error handling.
      throw ApiException(e.toString());
    }
  }

  // Generic POST request handler.
  Future<dynamic> post(
    String endpoint, {
    required Map<String, dynamic> body,
    Map<String, String>? headers,
  }) async {
    try {
      final response = await http.post(
        Uri.parse('${ApiUrls.baseUrl}/$endpoint'), // Use ApiUrls.baseUrl
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          ...?headers,
        },
        body: json.encode(body),
      );
      return _handleResponse(response);
    } catch (e) {
      throw ApiException(e.toString());
    }
  }

  // Generic PUT request handler.
  Future<dynamic> put(
    String endpoint, {
    required Map<String, dynamic> body,
    Map<String, String>? headers,
  }) async {
    try {
      final response = await http.put(
        Uri.parse('${ApiUrls.baseUrl}/$endpoint'), // Use ApiUrls.baseUrl
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          ...?headers,
        },
        body: json.encode(body),
      );
      return _handleResponse(response);
    } catch (e) {
      throw ApiException(e.toString());
    }
  }

  // Generic DELETE request handler.
  Future<dynamic> delete(
    String endpoint, {
    Map<String, String>? headers,
  }) async {
    try {
      final response = await http.delete(
        Uri.parse('${ApiUrls.baseUrl}/$endpoint'), // Use ApiUrls.baseUrl
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          ...?headers,
        },
      );
      return _handleResponse(response);
    } catch (e) {
      throw ApiException(e.toString());
    }
  }
}
