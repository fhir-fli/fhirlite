Uri uriParse(String uri) {
  try {
    return Uri.parse(
        'https://${uri.replaceAll('https://', '').replaceAll('http://', '')}');
  } catch (e) {
    rethrow;
  }
}
