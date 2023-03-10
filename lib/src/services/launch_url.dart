// Package imports:
import 'package:url_launcher/url_launcher.dart' as url_launcher;

Future<void> launchUrl(String newUrl) async {
  var url = Uri.tryParse(newUrl);
  if (url != null) {
    if (await url_launcher.canLaunchUrl(url)) {
      await url_launcher.launchUrl(url);
    } else if (url.toString().substring(0, 6) == 'http://') {
      url = Uri.tryParse(newUrl.replaceFirst('http://', 'https://'));
      if (url != null) {
        if (await url_launcher.canLaunchUrl(url)) {
          await url_launcher.launchUrl(url);
        } else {
          throw 'Could not launch $url';
        }
      } else {
        throw 'Could not parse $url';
      }
    } else {
      throw 'Could not launch $url';
    }
  } else {
    throw 'Could not parse $url';
  }
}
