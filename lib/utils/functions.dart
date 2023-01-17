import 'package:http/http.dart' as http;

var url = 'http://127.0.0.1:5000/upload';
upload(url, filepath) async {
  try {
    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.files.add(await http.MultipartFile.fromPath('file', filepath));
    var res = await request.send();

    if (res.statusCode == 200) {
      return await res.stream.bytesToString();
    } else {
      return res.statusCode;
    }
  } catch (e) {
    return null;
  }
}
