// Data and Generator for pages about Csilszim

import 'content.dart';

final csilszimData = DescriptionsOfApplication(
  pageTitle: 'Csilszim',
  subtitle: Text(en: 'Csilszim'),
  authorName: yasuhiroYamakawa,
  authorEmail: withlet11GmailCom,
  filename: 'csilszim',
  logoPath: 'withlet11_full_logo.png',
  previewImage: Image('csilszim_view.jpg', 144, 312),
  screenshots: [
    Image('csilszim_screenshot01.png', 144, 312),
    Image('csilszim_screenshot03.png', 144, 312),
    Image('csilszim_screenshot04.png', 144, 312),
  ],
  badge:
      "<a href='https://play.google.com/store/apps/details?id=io.github.withlet11.csilszim&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1'><img alt='Get it on Google Play' src='https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png' width='160'/></a>",
  introduction: Text(
      en: 'This is an astronomical simulator for Android. It provides useful '
          'information for observation of Messier objects, planets and so on.',
      ja: 'Android用の天文シミュレーターです。メシエ天体や惑星などの観測に役に立つ情報を提供します。'),
  requirement: Requirement(
      en: 'API 26 (Android 8.0) or later',
      ja: 'API 26 (Android 8.0) もしくは、それ以降。'),
  license: License(
      en: 'This software is released under the MIT License.',
      ja: 'このソフトの使用許諾はMITライセンスです。'),
  features: Features([
    HeadingAndText(
      en: (
        heading: 'Clocks',
        text: 'This is a set of clocks of UTC, Standard time, Mean solar time '
            'and sidereal time. Zodiac signs are displayed on the panel of '
            'sidereal time. You can know the constellation is across the '
            'observer’s local meridian.'
      ),
      ja: (
        heading: '時計',
        text: '世界時・標準時・平均太陽時・恒星時の時計です。恒星時の時計のパネルには、'
            '黄道十二星座のシンボルが表示されます。それにより、指定した観測地における'
            '子午線を通過する星座が分かります。'
      ),
    ),
    HeadingAndText(
      en: (
        heading: 'Momentary view',
        text: 'This view shows the positions of celestial objects at the '
            'specified location and the specified date and time. The date and '
            'time can be selected a dial at the top right corner. One turn is '
            'equivalent to 1 day at \'date mode\', or 24 hours at \'time mode\'. '
            'Daylight saving time is supported. During daylight saving time, '
            'the scale ring is turned counterclockwise. The \'0h\' direction '
            'of scale ring depends on midnight of January 1. You can change '
            'the date and time by dragging/swiping along the circle part of '
            'the dial. \'Date mode\' and \'time mode\' can be switched by '
            'clicking/tapping at the center. The center red circle is a FOV. '
            'You can use it as a reference for how it looks in the finder. It '
            'can be changed between 1 and 10 degrees. The sizes of solar '
            'system objects are based on luminosity when zoomed out, and '
            'apparent size when zoomed in.'
      ),
      ja: (
        heading: 'ある時の夜空',
        text: '指定した観測地、指定した日時における天体の位置を示します。日時は右上のダイヤルで'
            '変更可能です。日付モードの時は1周が1年、時刻モードの時は1周が24時間となります。'
            'サマータイムに対応しており、サマータイムの時は目盛りが左回りにシフトします。0時の'
            '位置は標準時で1月1日0時を基準とします。ダイヤルの円の部分を円周に沿ってドラッグ/'
            'スワイプすると日時を変更できます。日付モードと時刻モードは中央をクリック/タップす'
            'ることで切り替えられます。中央の赤い円は視野を示しており、ファインダーでの見え方の'
            '参考にすることができます。1～10度の間で変更可能です。太陽系の天体の大きさは、縮小'
            '表示の時は光度基準、拡大表示の時は見かけの大きさ基準になります。'
      ),
    ),
    HeadingAndText(
      en: (
        heading: 'Whole night view',
        text: 'This view shows the celestial objects that rise above the '
            'horizon at the specified site, morning or evening on the '
            'specified date. Objects in the blue zone mean objects can be '
            'above the horizon during twilight or daytime. Objects in the '
            'white zone mean objects that are above the horizon only during '
            'the day time. Objects that are never above the horizon are not '
            'displayed. Since it is displayed in the Mercator projection, the '
            'farther the position is from the celestial equator, the larger '
            'the distance is displayed. The date and time setting dial and the '
            'red circle in the center are the same as in Momentary view.'
      ),
      ja: (
        heading: '一晩の夜空',
        text: '指定した観測地、指定した日の明朝もしくは晩において地平線よりも上にくる天体を示'
            'します。青いゾーンの天体は薄明時と日中に地平線より上にある天体を示します。白いゾ'
            'ーンの天体は日中にのみ地平線よりも上にくる天体を示します。地平線よりも上にくるこ'
            'とのない天体は表示されません。メルカトル図法で表示されるため、天の赤道から位置が'
            '離れるほど距離が拡大されて表示されます。日時設定ダイヤルと中央の赤い円については'
            'Momentary viewと同様です。'
      ),
    ),
    HeadingAndText(
      en: (
        heading: 'Orbit',
        text: 'It shows the orbits and positions of the major bodies of the '
            'solar system. It will be displayed for the specified number of '
            'times at the specified interval from the specified date. Arrows '
            'indicate the direction of the vernal equinoxes. You can change '
            'the viewpoint position by dragging/swiping. You can zoom in and '
            'out with the wheel/pinch. It can display planets and some dwarf '
            'planets and comets.'
      ),
      ja: (
        heading: '軌道',
        text: '太陽系の主な天体の軌道と位置を示します。指定した日から指定した間隔で指定した'
            '回数分、表示します。矢印は春分点の方向を示します。ドラッグ/スワイプで視点の位置を'
            '変更できます。ホイール/ピンチで拡大・縮小できます。惑星といくつかの準惑星と彗星を'
            '表示できます。'
      ),
    ),
    HeadingAndText(
      en: (
        heading: 'Object list',
        text: 'This displays the current celestial positions of Messier '
            'objects and bright stars in real time. Displayed in equatorial '
            'and ground coordinate systems. High-altitude objects are '
            'displayed in light colors, and low-altitude objects and objects '
            'below the horizon are displayed in dark colors.'
      ),
      ja: (
        heading: '天体リスト',
        text: 'メシエ天体と明るい恒星について、現在の天球上の位置をリアルタイムで表示します。'
            '赤道座標系と地表座標系で表示されます。高度の高い天体は明るい色、低い天体や地平線'
            'より下にある天体は暗い色で表示されます。'
      ),
    ),
  ]),
  usage: Usage([
    HeadingAndText(
      en: (
        heading: 'To select date and time by the dial of date and time',
        text: 'One turn is equivalent to 1 day at \'date mode\', or 24 hours '
            'at \'time mode\'. Daylight saving time is supported. During '
            'daylight saving time, the scale ring is turned counterclockwise. '
            'The \'0h\' direction of scale ring depends on midnight of January '
            '1. You can change the date and time by dragging/swiping along the '
            'circle part of the dial. \'Date mode\' and \'time mode\' can be '
            'switched by clicking/tapping at the center.'
      ),
      ja: (
        heading: '日時ダイヤルでの日時の選択',
        text: '日付モードの時は1周が1年、時刻モードの時は1周が24時間となります。サマータイム'
            'に対応しており、サマータイムの時は目盛りが左回りにシフトします。0時の位置は標準時'
            'で1月1日0時を基準とします。ダイヤルの円の部分を円周に沿ってドラッグ/スワイプする'
            'と日時を変更できます。日付モードと時刻モードは中央をクリック/タップすることで切り'
            '替えられます。'
      ),
    ),
  ]),
  updateHistory: UpdateHistory([
    HeadingDateAndText(
        Text(en: '1 (0.1)'),
        DateTime(2023, 08, 08, 10, 00),
        'Europe/Budapest',
        Text(en: 'This is the first release.', ja: '最初のリリースです。')),
  ]),
  privacyPolicy: PrivacyPolicy(
      DateTime(2023, 08, 01),
      'Europe/Budapest',
      Text(
          en: 'In order to clarify what we do on this matter and how the '
              'information provided by the users are used is described in this '
              'privacy policy.',
          ja: '本アプリのご利用に当たりまして、このプライバシポリシーにて個人情報の扱いをご確'
              '認下さい。'),
      [
        HeadingAndText(
          en: (
            heading: 'User data collection',
            text: 'We do not collect any user information including: names, '
                'phone numbers, e-mail addresses and passwords.'
          ),
          ja: (heading: 'ユーザのデータの収集', text: '本アプリの開発元は個人情報を収集しません。'),
        ),
        HeadingAndText(
          en: (
            heading: 'Additional permissions',
            text: 'This application accesses your geo-location information, '
                'only if you permit. That data is stored at your device only, '
                'and never provided to any other applications or services.'
          ),
          ja: (
            heading: '追加の権限',
            text: '本アプリは、許可が与えられた場合のみ、位置情報を利用します。そのデータが'
                '他のアプリやサービスで利用されることはありません。'
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
            text: 'By using this app you consent to this Privacy Policy as '
                'well as all the 3rd party Privacy Policies mentioned above. '
                'If you disagree with this Privacy Policy or the 3rd party '
                'Privacy Policies you can uninstall this app.'
          ),
          ja: (
            heading: '利用にあたっての同意',
            text: '本プライバシポリシー及びサードパーティのプライバシポリシーに同意の上でご利'
                '用下さい。もし、同意いただけない場合は本アプリをアンインストールして下さい。'
          ),
        ),
        HeadingAndText(
          en: (
            heading: 'Contact Us',
            text: 'If there are any questions regarding this Privacy Policy '
                'you may contact us by email: '
                '<a href="mailto:$withlet11GmailCom">$withlet11GmailCom</a>'
          ),
          ja: (
            heading: 'お問い合わせ',
            text: 'プライバシポリシーにつきましてご質問がある場合は'
                '<a href="mailto:$withlet11GmailCom">$withlet11GmailCom</a>'
                'にお問い合わせ下さい。'
          ),
        ),
      ]),
);
