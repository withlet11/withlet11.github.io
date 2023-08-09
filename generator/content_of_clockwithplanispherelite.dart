// Data and Generator for pages about Clock with Planisphere lite

import 'content.dart';

final clockWithPlanisphereLiteData = DescriptionsOfApplication(
  pageTitle: 'Clock with Planisphere lite',
  subtitle: Text(en: 'Clock with Planisphere lite'),
  authorName: yasuhiroYamakawa,
  authorEmail: withlet11GmailCom,
  filename: 'clockwithplanispherelite',
  logoPath: 'withlet11_full_logo.png',
  previewImage: Image('clockwithplanispherelite_view.png', 144, 312),
  screenshots: [
    Image('clockwithplanispherelite_view.png', 144, 312),
    Image('clockwithplanispherelite_screenshot02.png', 144, 312),
    Image('clockwithplanispherelite_screenshot03.png', 144, 312),
  ],
  badge:
      "<a href='https://play.google.com/store/apps/details?id=io.github.withlet11.clockwithplanispherelite&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1'><img alt='Get it on Google Play' src='https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png' width='160'/></a>",
  introduction: Text(
      en: 'This is a clock app widget with a planisphere for Android. The planisphere shows the current sky at the observation location by setting the latitude and the longitude. You can switch the northern and southern celestial hemispheres. This app has no ads, but you cannot choose the date and time of observation. The application name was changed in April, 2023.',
      ja: 'Android用の星座早見盤付き時計ウィジェットです。星座早見盤は緯度と経度を設定することで、現在地における現在の空を表示します。北天と南天を切り替えることができます。広告はありませんが、空の表示は現在の時刻に限定されています。2023年4月にアプリ名を変更しました。'),
  requirement: Requirement(
      en: 'API 26 (Android 8.0) or later',
      ja: 'API 26 (Android 8.0) もしくは、それ以降。'),
  license: License(
      en: 'This software is released under the MIT License.',
      ja: 'このソフトの使用許諾はMITライセンスです。'),
  features: Features([
    HeadingAndText(
      en: (
        heading: 'Standard Time',
        text:
            'You can read the standard time of your time zone. It is indicated by a red point (today\'s date) as the value of right ascension.'
      ),
      ja: (heading: '標準時', text: '現在地の標準時が分かります。赤い点（現在の日付）の位置の赤経の値になります。'),
    ),
    HeadingAndText(
      en: (
        heading: 'Local Sidereal Time',
        text:
            'You can read the local sidereal time. It is indicated by a small yellow triangle.'
      ),
      ja: (heading: '地方恒星時', text: '地方恒星時が分かります。黄色の三角形が示します。'),
    ),
    HeadingAndText(
      en: (
        heading: 'GPS Available',
        text: 'You can use the GPS for setting your location.'
      ),
      ja: (heading: 'GPSが利用可', text: 'GPSを観測位置設定に使えます。'),
    ),
    HeadingAndText(
      en: (
        heading: 'Magnitude 6 star',
        text:
            'The all stars that are brighter than a magnitude 6 star are displayed.'
      ),
      ja: (heading: '6等星', text: '6等星より明るい星を全て表示します。'),
    ),
    HeadingAndText(
      en: (
        heading: 'Constellation lines',
        text: 'Constellation lines are displayed.'
      ),
      ja: (heading: '星座線', text: '星座線が表示されます。'),
    ),
    HeadingAndText(
      en: (
        heading: 'The Sun and Analemma',
        text: 'The position of the Sun is displayed with analemma.'
      ),
      ja: (heading: '太陽とアナレンマ', text: '太陽とアナレンマを表示します。'),
    ),
    HeadingAndText(
      en: (
        heading: 'The Moon and the lunar phase',
        text: 'The position of the Moon is displayed with the lunar phase.'
      ),
      ja: (heading: '月と月相', text: '月の位置と月相を表示します。'),
    ),
    HeadingAndText(
      en: (
        heading: 'Astronomical Twilight',
        text:
            'You can check astronomical twilight time with altitude line of −18°.'
      ),
      ja: (heading: '天文薄明', text: '−18°の高度線で天文薄明の時間を確認できます。'),
    ),
    HeadingAndText(
      en: (heading: 'No ads', text: 'This app doesn\'t display any ads.'),
      ja: (heading: '広告無し', text: '広告はありません。'),
    ),
  ]),
  usage: Usage([
    HeadingAndText(
      en: (
        heading: 'App widget and configure',
        text:
            'Please put an app widget of Clock with Planisphere lite at the home screen. Tap an app widget or an icon of Clock with Planisphere lite to show a screen for the configuration. App widgets are not updated soon after changes of settings. The clock is update every 10 seconds and the planispher is updated every minute.'
      ),
      ja: (
        heading: 'ウィジェットと設定',
        text:
            'Clock with Planisphere liteのウィジェットをホーム画面に置いて下さい。ウィジェットもしくはアイコンをタップすると、設定画面が表示されます。ウィジェットの更新は時計が10秒ごと、星座早見盤が1分ごとに行われるため、設定がウィジェットに反映されるまでに時間がかかります。'
      ),
    ),
  ]),
  updateHistory: UpdateHistory([
    HeadingDateAndText(
        Text(en: '3 (1.2)'),
        DateTime(2023, 04, 30, 08, 00),
        'CET',
        Text(
            en: 'The application name was changed to avoid potential trademark litigation. The library version was update.',
            ja: '潜在的な商標訴訟を避けるために、アプリケーション名を変更しました。ライブラリーのバージョンを更新しました。')),
    HeadingDateAndText(
        Text(en: '2 (1.1)'),
        DateTime(2021, 05, 15, 16, 43),
        'CET',
        Text(en: 'Updated library versions.', ja: 'ライブラリーのバージョンを更新しました。')),
    HeadingDateAndText(Text(en: '1 (1.0)'), DateTime(2020, 12, 28, 22, 54),
        'CET', Text(en: 'This is the first release.', ja: '最初のリリースです。')),
  ]),
  privacyPolicy: PrivacyPolicy(
      DateTime(2020, 12, 28),
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
