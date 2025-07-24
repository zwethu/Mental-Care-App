// import 'dart:developer';
//
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// Future<String?> sendMessageToGroq(String userInput) async {
//   final url = Uri.parse('https://api.groq.com/openai/v1/chat/completions');
//   final apiKey = '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'; // Store securely!
//
//   final response = await http.post(
//     url,
//     headers: {
//       'Authorization': 'Bearer $apiKey',
//       'Content-Type': 'application/json',
//     },
//     body: jsonEncode({
//       'model': 'llama-3.3-70b-versatile', // or another supported model
//       'messages': [
//         {'role': 'user', 'content': userInput},
//       ],
//       // Optionally add temperature, max_tokens, etc.
//     }),
//   );
//
//   if (response.statusCode == 200) {
//     final data = jsonDecode(response.body);
//     return data['choices'][0]['message']['content'];
//   } else {
//     log('Groq API error: ${response.body}');
//     return null;
//   }
// }