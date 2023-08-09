// Data and Generator for pages about Digital Quadrant

import 'content.dart';

final digitalQuadrantData = DescriptionsOfApplication(
  pageTitle: 'Digital Quadrant',
  subtitle: Text(en: 'Digital Quadrant'),
  authorName: yasuhiroYamakawa,
  authorEmail: withlet11GmailCom,
  filename: 'digitalquadrant',
  logoPath: 'withlet11_full_logo.png',
  previewImage: Image('digitalquadrant_screenshot01.png', 144, 312),
  screenshots: [
    Image('digitalquadrant_screenshot01.png', 144, 312),
    Image('digitalquadrant_screenshot02.png', 144, 312),
  ],
  badge:
      "<a href='https://play.google.com/store/apps/details?id=io.github.withlet11.digitalquadrant&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1'><img alt='Get it on Google Play' src='https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png' width='160'/></a>",
  introduction: Text(
      en: 'This is an astronomical quadrant application for measuring the altitude of celestial objects above the horizon. It has 2 modes, cameraless-mode and camera-mode. Don\'t use camera-mode for measuring the altitude of the Sun. The camera of the phone may be damaged.',
      ja: '四分儀アプリです。カメラ無しモードとカメラモードがあります。カメラモードは太陽の高度測定には利用しないで下さい。カメラが壊れる恐れが有ります。'),
  requirement: Requirement(
      en: 'API 22 (Android 5.1) or later',
      ja: 'API 22 (Android 5.1) もしくは、それ以降。'),
  license: License(
      en: 'This software is released under the MIT License.',
      ja: 'このソフトの使用許諾はMITライセンスです。'),
  features: Features([
    HeadingAndText(
      en: (
        heading: 'Camera-mode',
        text:
            'You can use a camera of the phone for measuring the altitude of Bright stars and the Moon.'
      ),
      ja: (heading: 'カメラモード', text: '明るい恒星や月の高度の測定に端末のカメラを利用することができます。'),
    ),
    HeadingAndText(
      en: (
        heading: 'Auto-hold mode',
        text:
            'If auto-hold mode is turned on, measuring is stop automatically when the device isn\'t move physically.'
      ),
      ja: (
        heading: 'オートホールドモード',
        text: 'オートホールドモードがオンになっている場合、端末の向きが変わらない時に測定が自動的に止まります。'
      ),
    ),
  ]),
  usage: Usage([
    HeadingAndText(
      en: (
        heading: 'To switch cameraless-mode and camera-mode',
        text: 'Swipe the screen left or right.'
      ),
      ja: (heading: 'カメラ無しモードとカメラモードの切り替え', text: '画面を左右にスワイプして下さい。'),
    ),
  ]),
  updateHistory: UpdateHistory([
    HeadingDateAndText(
        Text(en: '2 (1.1)'),
        DateTime(2021, 05, 29, 16, 23),
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
                'This application accesses your camera, only if you permit. That data is stored at your device only, and never provided to any other applications or services.'
          ),
          ja: (
            heading: '追加の権限',
            text: '本アプリは、許可が与えられた場合のみ、カメラを利用します。そのデータが他のアプリやサービスで利用されることはありません。'
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
