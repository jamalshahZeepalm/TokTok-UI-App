import 'package:share_plus/share_plus.dart';

void onShare() async {
  await Share.share(
    'this is share text',
    subject: 'link',
  );
}
