class DescriptionsOfApplication {
  final String pageTitle;
  final Text subtitle;
  final String authorName;
  final String authorEmail;
  final String filename;
  final String logoPath;
  final Image previewImage;
  final List<Image> screenshots;
  final String badge;
  final Text introduction;
  final Requirement requirement;
  final License license;
  final Features features;
  final Usage usage;
  final UpdateHistory updateHistory;
  final PrivacyPolicy privacyPolicy;

  const DescriptionsOfApplication({
    required this.pageTitle,
    required this.subtitle,
    required this.authorName,
    required this.authorEmail,
    required this.filename,
    required this.logoPath,
    required this.previewImage,
    required this.screenshots,
    required this.badge,
    required this.introduction,
    required this.requirement,
    required this.license,
    required this.features,
    required this.usage,
    required this.updateHistory,
    required this.privacyPolicy,
  });
}

enum Lang {
  en(name: 'en'),
  ja(name: 'ja');

  const Lang({required this.name});

  final String name;
}

class Text {
  final String en, ja;

  const Text({required this.en, String? ja}) : ja = ja ?? en;

  String local(Lang lang) => lang == Lang.ja ? ja : en;
}

class HeadingAndText {
  final ({String heading, String text}) en, ja;

  const HeadingAndText({required this.en, required this.ja});

  ({String heading, String text}) local(Lang lang) => lang == Lang.ja ? ja : en;
}

class HeadingDateAndText {
  final Text heading;
  final DateTime dateTime;
  final String timeZone;
  final Text text;

  const HeadingDateAndText(
      this.heading, this.dateTime, this.timeZone, this.text);
}

class Image {
  final String filename;
  final int x, y;

  const Image(this.filename, this.x, this.y);
}

class Features {
  final List<HeadingAndText> descriptions;

  const Features(this.descriptions);

  String heading(Lang lang) => lang == Lang.ja ? '特徴' : 'Features';
}

class Usage {
  final List<HeadingAndText> descriptions;

  const Usage(this.descriptions);

  String heading(Lang lang) => lang == Lang.ja ? '使い方' : 'Usage';
}

class Requirement {
  final String en, ja;

  const Requirement({required this.en, required this.ja});

  String heading(Lang lang) => lang == Lang.ja ? 'システム要件' : 'Requirement';

  String local(Lang lang) => lang == Lang.ja ? ja : en;
}

class License {
  final String en, ja;

  const License({required this.en, required this.ja});

  String heading(Lang lang) => lang == Lang.ja ? '使用許諾' : 'License';

  String local(Lang lang) => lang == Lang.ja ? ja : en;
}

class UpdateHistory {
  final List<HeadingDateAndText> descriptions;

  const UpdateHistory(this.descriptions);

  String heading(Lang lang) => lang == Lang.ja ? '更新履歴' : 'Update History';
}

class PrivacyPolicy {
  final DateTime dateTime;
  final String timeZone;
  final Text comment;
  final List<HeadingAndText> text;

  const PrivacyPolicy(this.dateTime, this.timeZone, this.comment, this.text);

  String heading(Lang lang) => lang == Lang.ja ? 'プライバシポリシー' : 'Privacy Policy';
}

const yasuhiroYamakawa = 'Yasuhiro Yamakawa';
const withlet11GmailCom = 'withlet11@gmail.com';
