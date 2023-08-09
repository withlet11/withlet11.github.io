// Data and Generator for pages about Clock with Planisphere

import 'content.dart';

final clockWithPlanisphereData = DescriptionsOfApplication(
  pageTitle: 'Clock with Planisphere',
  subtitle: Text(en: 'Clock with Planisphere'),
  authorName: yasuhiroYamakawa,
  authorEmail: withlet11GmailCom,
  filename: 'clockwithplanisphere',
  logoPath: 'withlet11_full_logo.png',
  previewImage: Image('clockwithplanisphere_view.png', 312, 312),
  screenshots: [
    Image('clockwithplanisphere_screenshot01.png', 144, 312),
    Image('clockwithplanisphere_screenshot03.png', 144, 312),
    Image('clockwithplanisphere_screenshot04.png', 144, 312),
  ],
  badge:
      "<a href='https://play.google.com/store/apps/details?id=io.github.withlet11.clockwithplanisphere&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1'><img alt='Get it on Google Play' src='https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png' width='160'/></a>",
  introduction: Text(
      en: 'This is a clock application with a planisphere for Android. The '
          'planisphere shows the current sky at the observation location by '
          'setting the latitude and the longitude. You can switch the '
          'northern and southern celestial hemispheres. The application name '
          'was changed in April 2023.',
      ja: 'Android用の星座早見盤付き時計アプリです。星座早見盤は緯度と経度を設定することで、現在地における現在の空を表示します。北天と南天を切り替えることができます。2023年4月にアプリ名を変更しました。'),
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
        heading: 'Planisphere mode',
        text:
            'You can use as a planisphere. You can change date and solar time by moving the Sun (sidereal time is fixed), change date and sidereal time by moving the red spot (solar time is fixed), or change solar and sidereal time by rotating the ring of right ascension (date is fixed).'
      ),
      ja: (
        heading: '星座早見盤モード',
        text:
            '星座早見盤として使うことができます。太陽を動かすことにより、日時が変化します（恒星時は固定）。赤い点を動かすことで、日と恒星時が変化します（太陽時は固定）。赤経目盛りを回すことで太陽時と恒星時が変化します（日は固定）。'
      ),
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
            'All of the stars that are brighter than a magnitude 6 star are displayed.'
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
      en: (
        heading: 'Automatic Update',
        text: 'The view is updated automatically.'
      ),
      ja: (heading: '自動アップデート', text: '表示は自動的にアップデートされます。'),
    ),
    HeadingAndText(
      en: (heading: 'App Widget', text: 'App Widget is available.'),
      ja: (heading: 'ウィジェット', text: 'ウィジェットが利用できます。'),
    ),
    HeadingAndText(
      en: (
        heading: '10-sec ad',
        text:
            'An ad banner is displayed for 10 seconds after launching the app. No ads are displayed after 10 seconds.'
      ),
      ja: (heading: '10秒広告', text: '起動後の最初の10秒だけ広告が表示されます。その後は広告は表示されません。'),
    ),
  ]),
  usage: Usage([
    HeadingAndText(
      en: (
        heading: 'To switch the northern and southern celestial hemispheres',
        text:
            'Tap the switch on the Toolbar. Widgets show the same view or last view of the app.'
      ),
      ja: (
        heading: '北天と南天の切り替え',
        text: 'ツールバーのスイッチをタップします。ウィジョットには、アプリにおいて現在表示中もしくは最後に表示されていたものが表示されます。'
      ),
    ),
    HeadingAndText(
      en: (heading: 'To switch zoom in/out', text: 'Double tap the screen.'),
      ja: (heading: 'ズームイン・アウト', text: '画面をダブルタップします。'),
    ),
    HeadingAndText(
      en: (
        heading: 'To adjust the position of clock',
        text: 'Swipe the screen.'
      ),
      ja: (heading: '時計の表示位置の変更', text: '画面をスワイプします。'),
    ),
    HeadingAndText(
      en: (
        heading: 'To show/hide the clock hands (Clock mode / Planisphere mode)',
        text: 'Tap the center of clock.'
      ),
      ja: (heading: '時計の針を表示・非表示（時計モード・星座早見盤モード）', text: '時計の中央をタップします。'),
    ),
    HeadingAndText(
      en: (
        heading: 'To move the Sun only (Stars don\'t move)',
        text: 'Swipe the Sun or analemma.'
      ),
      ja: (heading: '太陽を動かす（星は動かさない）', text: '太陽をスワイプします。'),
    ),
    HeadingAndText(
      en: (
        heading: 'To move stars only (The Sun doesn\'t move)',
        text: 'Swipe the red spot.'
      ),
      ja: (heading: '星を動かす（太陽は動かさない）', text: '赤い点をスワイプします。'),
    ),
    HeadingAndText(
      en: (
        heading: 'To move the Sun and stars together',
        text: 'Swipe the ring of right ascension.'
      ),
      ja: (heading: '太陽と星を動かす', text: '赤経リングをスワイプします。'),
    ),
  ]),
  updateHistory: UpdateHistory([
    HeadingDateAndText(
        Text(en: '12 (6.1)'),
        DateTime(2023, 04, 30, 08, 00),
        'CET',
        Text(
            en: 'The application name was changed to avoid potential trademark litigation. The library version was update.',
            ja: '潜在的な商標訴訟を避けるために、アプリケーション名を変更しました。ライブラリーのバージョンを更新しました。')),
    HeadingDateAndText(
        Text(en: '11 (6.0)'),
        DateTime(2021, 11, 01, 14, 52),
        'CET',
        Text(
            en: 'Added a dialog for setting the background color.',
            ja: '背景色変更のダイアログを追加しました。')),
    HeadingDateAndText(
        Text(en: '10 (5.1)'),
        DateTime(2021, 05, 15, 15, 31),
        'CET',
        Text(
            en: 'Modified the appearance of the location setting dialog. Updated library versions.',
            ja: '観測地設定ダイアログの見た目を変更しました。ライブラリのバージョンを更新しました。')),
    HeadingDateAndText(
        Text(en: '9 (5.0)'),
        DateTime(2020, 12, 28, 22, 00),
        'CET',
        Text(en: 'Added the Milky Way and the Moon.', ja: '天の川と月を追加しました。')),
    HeadingDateAndText(
        Text(en: '8 (4.2)'),
        DateTime(2020, 12, 16, 19, 47),
        'CET',
        Text(
            en: 'Modified to accept comma as decimal point in latitude/longitude fields.',
            ja: '緯度・経度の入力においてカンマを小数点として受け付けるようにしました。')),
    HeadingDateAndText(
        Text(en: '7 (4.1)'),
        DateTime(2020, 11, 29, 7, 59),
        'CET',
        Text(
            en: 'Fixed a location service request issue and a decimal point issue (comma not accepted but displayed).',
            ja: '位置情報サービスリクエストの問題と小数点の問題（小数点にカンマが用いられる地域で発生）を解決しました。')),
    HeadingDateAndText(
        Text(en: '6 (4.0)'),
        DateTime(2020, 11, 28, 14, 14),
        'CET',
        Text(
            en: 'An ad banner has been added. The shape of clock hands has been changed.',
            ja: '広告バナーが追加されました。時計の針の形が新しくなりました。')),
    HeadingDateAndText(
        Text(en: '5 (3.0)'),
        DateTime(2020, 11, 20, 21, 22),
        'CET',
        Text(en: 'App widget is available.', ja: 'ウィジェットが利用可能になりました。')),
    HeadingDateAndText(
        Text(en: '3 (2.1)'),
        DateTime(2020, 11, 12, 23, 00),
        'CET',
        Text(
            en: 'Fixed a bug (Clock base panel didn\'t update after displaying clock hands panel again)',
            ja: '不具合の修正（時計の針の再表示後にベースパネルの更新がなかった）')),
    HeadingDateAndText(
        Text(en: '2 (2.0)'),
        DateTime(2020, 11, 11, 21, 36),
        'CET',
        Text(en: 'Planisphere mode was added.', ja: '星座早見盤モードを追加しました。')),
    HeadingDateAndText(
        Text(en: '1 (1.0)'),
        DateTime(2020, 11, 04, 22, 13),
        'CET',
        Text(en: 'This is the first release.', ja: '最初のリリースです。')),
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
              'We do not collect any user information including: names, phone numbers, e-mail addresses and passwords. However, we use 3rd party ad service (Google AdMob™) in this app, and that service may collect your information. The privacy policy can be read on the following page: <a href=\'https://policies.google.com/privacy\'>Google privacy policy</a>'
        ),
        ja: (
          heading: 'ユーザのデータの収集',
          text:
              '本アプリの開発元は個人情報を収集しません。ただし、サードパーティの広告サービス（Google AdMob™）を利用しており、そのサービスが個人情報を収集することがあります。そのプライバシポリシーにつきましては、<a href=\'https://policies.google.com/privacy\'>Google privacy policy</a>でご確認下さい。'
        ),
      ),
      HeadingAndText(
        en: (
          heading: 'Additional permissions',
          text:
              'This application accesses your geo-location information, only if you permit. That data is stored at your device only, and never provided to any other applications or services.\n'
              'Internet is used to display advertisement banners.'
        ),
        ja: (
          heading: '追加の権限',
          text:
              '本アプリは、許可が与えられた場合のみ、位置情報を利用します。そのデータが他のアプリやサービスで利用されることはありません。\n'
              '広告バナーの表示のためにインターネットが利用されます。'
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
    ],
  ),
);
