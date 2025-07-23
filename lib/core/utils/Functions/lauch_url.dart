import 'package:bookly_app/core/utils/Functions/show_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> getLaunchUrl(String? Url, context) async {
  if (Url != null) {
    Uri url = Uri.parse(Url);
    if (await canLaunchUrl(url)) {
      launchUrl(url);
    } else {
      showSnackBar(context, Url); 
     
    }
  }
}


