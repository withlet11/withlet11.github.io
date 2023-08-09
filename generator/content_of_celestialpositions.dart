// Data and Generator for pages about Celestial Positions

import 'content.dart';

final celestialPositionsData = DescriptionsOfApplication(
  pageTitle: 'Celestial Positions',
  subtitle: Text(en: 'Celestial Positions'),
  authorName: yasuhiroYamakawa,
  authorEmail: withlet11GmailCom,
  filename: 'celestialpositions',
  logoPath: 'withlet11_full_logo.png',
  previewImage: Image('celestialpositions_screenshot01.png', 144, 312),
  screenshots: [
    Image('celestialpositions_screenshot01.png', 144, 312),
    Image('celestialpositions_screenshot02.png', 144, 312),
    Image('celestialpositions_screenshot03.png', 144, 312),
  ],
  badge:
      "<a href='https://play.google.com/store/apps/details?id=io.github.withlet11.celestialpositions&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1'><img alt='Get it on Google Play' src='https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png' width='160'/></a>",
  introduction: Text(
      en: 'This is a application that shows the current position list of '
          'Messier\'s objects and bright stars at your location. It is useful '
          'for pointing an uncomputerized telescope at Messier\'s objects.',
      ja: 'メシエ天体や明るい恒星の天球上の位置をリスト表示するアプリです。コンピュータ制御'
          'ではない天体望遠鏡でメシエ天体を導入する時に便利です。'),
  requirement: Requirement(
      en: 'API 26 (Android 8.0) or later',
      ja: 'API 26 (Android 8.0) もしくは、それ以降。'),
  license: License(
      en: 'This software is released under the MIT License.',
      ja: 'このソフトの使用許諾はMITライセンスです。'),
  features: Features([
    HeadingAndText(
      en: (
        heading: 'All Messier\'s objects and bright stars',
        text:
            'The celestial positions of all Messier\'s objects and bright stars '
            'are calculated every second to display the list of them.'
      ),
      ja: (
        heading: '全てのメシエ天体と明るい恒星',
        text: '全てのメシエ天体と明るい恒星の天球上の位置をリアルタイムに表示します。'
      ),
    ),
    HeadingAndText(
      en: (
        heading: 'Local Sidereal Time',
        text: 'The local sidereal time is displayed.'
      ),
      ja: (heading: '地方恒星時', text: '地方恒星時が表示されます。'),
    ),
    HeadingAndText(
      en: (
        heading: 'GPS Available',
        text: 'You can use the GPS for setting your location.'
      ),
      ja: (heading: 'GPSが利用可', text: 'GPSを観測位置設定に使えます。'),
    ),
  ]),
  usage: Usage([
    HeadingAndText(
      en: (
        heading: 'To switch the lists of Messier\'s objects and bright stars',
        text: 'Swipe the screen left or right.'
      ),
      ja: (heading: 'メシエ天体と明るい恒星のリストの切り替え', text: '画面を左右にスワイプして下さい。'),
    ),
    HeadingAndText(
        en: (heading: 'To show the details of object', text: 'Tap the list.'),
        ja: (heading: '天体の詳細表示', text: 'リストをタップして下さい。')),
  ]),
  updateHistory: UpdateHistory([
    HeadingDateAndText(
        Text(en: '2 (1.1)'),
        DateTime(2021, 05, 29, 18, 20),
        'CET',
        Text(en: 'Updated library versions.', ja: 'ライブラリのバージョンを更新しました。')),
    HeadingDateAndText(
        Text(en: '1 (1.0)'),
        DateTime(2021, 01, 04, 22, 13),
        'CET',
        Text(en: 'This is the first release.', ja: '最初のリリースです。')),
  ]),
  privacyPolicy: PrivacyPolicy(
      DateTime(2021, 01, 04),
      'CET',
      Text(
          en: 'In order to clarify what we do on this matter and how the information provided by the users are used is described in this privacy policy.',
          ja: '本アプリのご利用に当たりまして、このプライバシポリシーにて個人情報の扱いをご確認下さい。'),
      [
        HeadingAndText(
          en: (
            heading: 'User data collection',
            text:
                'We do not collect any user information including: names, phone numbers, e-mail addresses and passwords.'
          ),
          ja: (heading: 'ユーザのデータの収集', text: '本アプリの開発元は個人情報を収集しません。'),
        ),
        HeadingAndText(
          en: (
            heading: 'Additional permissions',
            text:
                'This application accesses your geo-location information, only if you permit. That data is stored at your device only, and never provided to any other applications or services.'
          ),
          ja: (
            heading: '追加の権限',
            text:
                '本アプリは、許可が与えられた場合のみ、位置情報を利用します。そのデータが他のアプリやサービスで利用されることはありません。'
          ),
        ),
        HeadingAndText(
          en: (
            heading: 'Changes',
            text:
                'This Privacy Policy may be updated from time to time for any reason.'
          ),
          ja: (heading: '変更', text: 'このプライバシポリシーは何らかの理由により変更されることがあります。'),
        ),
        HeadingAndText(
          en: (
            heading: 'Your Consent',
            text:
                'By using this app you consent to this Privacy Policy as well as all the 3rd party Privacy Policies mentioned above. If you disagree with this Privacy Policy or the 3rd party Privacy Policies you can uninstall this app.'
          ),
          ja: (
            heading: '利用にあたっての同意',
            text:
                '本プライバシポリシー及びサードパーティのプライバシポリシーに同意の上でご利用下さい。もし、同意いただけない場合は本アプリをアンインストールして下さい。'
          ),
        ),
        HeadingAndText(
          en: (
            heading: 'Contact Us',
            text:
                'If there are any questions regarding this Privacy Policy you may contact us by email: <a href="mailto:$withlet11GmailCom">$withlet11GmailCom</a>'
          ),
          ja: (
            heading: 'お問い合わせ',
            text:
                'プライバシポリシーにつきましてご質問がある場合は<a href="mailto:$withlet11GmailCom">$withlet11GmailCom</a>にお問い合わせ下さい。'
          ),
        ),
      ]),
);
