#lang racket

(require gregor)

(provide csilszim-data)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Data and Generator for pages about Csilszim                ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define csilszim-data
  `((page-title "Csilszim")
    (subtitle "Csilszim")
    (author-name "Yasuhiro Yamakawa")
    (author-email "withlet11@gmail.com")
    (filename "csilszim")
    (logo-path "withlet11_full_logo.png")
    (preview-image "csilszim_view.png" "144" "312")
    (screenshots ("csilszim_screenshot01.png" "144" "312")
		 ("csilszim_screenshot02.png" "144" "312")
		 ("csilszim_screenshot03.png" "144" "312")
		 ("csilszim_screenshot04.png" "144" "312"))
    (badge "<a href='https://play.google.com/store/apps/details?id=io.github.withlet11.csilszim&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1'><img alt='Get it on Google Play' src='https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png' width='160'/></a>")
    (introduction
     (en
      "This is an astronomical simulator for Android. It provides useful information for observation of Messier objects, planets and so on.")
     (ja
      "Android用の天文シミュレーターです。メシエ天体や惑星などの観測に役に立つ情報を提供します。"))
    (requirement
     ((en "Requirement")
      (ja "システム要件"))
     ((en "API 26 (Android 8.0) or later")
      (ja "API 26 (Android 8.0) もしくは、それ以降。")))
    (license
     ((en "License")
      (ja "使用許諾"))
     ((en "This software is released under the MIT License.")
      (ja "このソフトの使用許諾はMITライセンスです。")))
    (features
     ((en "Features")
      (ja "特徴"))
     ((en "Clocks"
	  "This is a set of clocks of UTC, Standard time, Mean solar time and sidereal time. Zodiac signs are displayed on the panel of sidereal time. You can know the constellation is across the observer’s local meridian.")
      (ja "時計"
	  "世界時・標準時・平均太陽時・恒星時の時計です。恒星時の時計のパネルには、黄道十二星座のシンボルが表示されます。それにより、指定した観測地における子午線を通過する星座が分かります。"))
     ((en "Momentary view"
	  "This view shows the positions of celestial objects at the specified location and the specified date and time. The date and time can be selected a dial at the top right corner. One turn is equivalent to 1 day at 'date mode', or 24 hours at 'time mode'. Daylight saving time is supported. During daylight saving time, the scale ring is turned counterclockwise. The '0h' direction of scale ring depends on midnight of January 1. You can change the date and time by dragging/swiping along the circle part of the dial. 'Date mode' and 'time mode' can be switched by clicking/tapping at the center. The center red circle is a FOV. You can use it as a reference for how it looks in the finder. It can be changed between 1 and 10 degrees. The sizes of solar system objects are based on luminosity when zoomed out, and apparent size when zoomed in.")
      (ja "ある時の夜空"
	  "指定した観測地、指定した日時における天体の位置を示します。日時は右上のダイヤルで変更可能です。日付モードの時は1周が1年、時刻モードの時は1周が24時間となります。サマータイムに対応しており、サマータイムの時は目盛りが左回りにシフトします。0時の位置は標準時で1月1日0時を基準とします。ダイヤルの円の部分を円周に沿ってドラッグ/スワイプすると日時を変更できます。日付モードと時刻モードは中央をクリック/タップすることで切り替えられます。中央の赤い円は視野を示しており、ファインダーでの見え方の参考にすることができます。1～10度の間で変更可能です。太陽系の天体の大きさは、縮小表示の時は光度基準、拡大表示の時は見かけの大きさ基準になります。"))
     ((en "Whole night view"
	  "This view shows the celestial objects that rise above the horizon at the specified site, morning or evening on the specified date. Objects in the blue zone mean objects can be above the horizon during twilight or daytime. Objects in the white zone mean objects that are above the horizon only during the day time. Objects that are never above the horizon are not displayed. Since it is displayed in the Mercator projection, the farther the position is from the celestial equator, the larger the distance is displayed. The date and time setting dial and the red circle in the center are the same as in Momentary view.")
      (ja "一晩の夜空"
	  "指定した観測地、指定した日の明朝もしくは晩において地平線よりも上にくる天体を示します。青いゾーンの天体は薄明時と日中に地平線より上にある天体を示します。白いゾーンの天体は日中にのみ地平線よりも上にくる天体を示します。地平線よりも上にくることのない天体は表示されません。メルカトル図法で表示されるため、天の赤道から位置が離れるほど距離が拡大されて表示されます。日時設定ダイヤルと中央の赤い円についてはMomentary viewと同様です。"))
     ((en "Orbit"
	  "It shows the orbits and positions of the major bodies of the solar system. It will be displayed for the specified number of times at the specified interval from the specified date. Arrows indicate the direction of the vernal equinoxes. You can change the viewpoint position by dragging/swiping. You can zoom in and out with the wheel/pinch. It can display planets and some dwarf planets and comets.")
      (ja "軌道"
	  "太陽系の主な天体の軌道と位置を示します。指定した日から指定した間隔で指定した回数分、表示します。矢印は春分点の方向を示します。ドラッグ/スワイプで視点の位置を変更できます。ホイール/ピンチで拡大・縮小できます。惑星といくつかの準惑星と彗星を表示できます。"))
     ((en "Object list"
	  "This displays the current celestial positions of Messier objects and bright stars in real time. Displayed in equatorial and ground coordinate systems. High-altitude objects are displayed in light colors, and low-altitude objects and objects below the horizon are displayed in dark colors.")
      (ja "天体リスト"
	  "メシエ天体と明るい恒星について、現在の天球上の位置をリアルタイムで表示します。赤道座標系と地表座標系で表示されます。高度の高い天体は明るい色、低い天体や地平線より下にある天体は暗い色で表示されます。")))
    (usage
     ((en "Usage")
      (ja "使い方"))
     ((en "To select date and time by the dial of date and time"
	  "One turn is equivalent to 1 day at \'date mode\', or 24 hours at \'time mode\'. Daylight saving time is supported. During daylight saving time, the scale ring is turned counterclockwise. The \'0h\' direction of scale ring depends on midnight of January 1. You can change the date and time by dragging/swiping along the circle part of the dial. \'Date mode\' and \'time mode\' can be switched by clicking/tapping at the center.")
      (ja "日時ダイヤルでの日時の選択"
	  "日付モードの時は1周が1年、時刻モードの時は1周が24時間となります。サマータイムに対応しており、サマータイムの時は目盛りが左回りにシフトします。0時の位置は標準時で1月1日0時を基準とします。ダイヤルの円の部分を円周に沿ってドラッグ/スワイプすると日時を変更できます。日付モードと時刻モードは中央をクリック/タップすることで切り替えられます。")))
    (update-history
     ((en "Update History")
      (ja "更新履歴"))
     ("2 (0.2)"
      ,(moment 2024 08 28 05 15 #:tz "Europe/Budapest")
      ((en "The library version was update.")
       (ja "ライブラリーのバージョンを更新しました。")))
     ("1 (0.1)"
      ,(moment 2023 08 08 10 00 #:tz "Europe/Budapest")
      ((en "This is the first release.")
       (ja "最初のリリースです。"))))
    (privacy-policy
     ((en "Privacy Policy")
      (ja "プライバシポリシー"))
     ,(moment 2023 08 01 #:tz "Europe/Budapest")
     ((en "In order to clarify what we do on this matter and how the information provided by the users are used is described in this privacy policy.")
      (ja "本アプリのご利用に当たりまして、このプライバシポリシーにて個人情報の扱いをご確認下さい。"))
     ((en "User data collection"
	  "We do not collect any user information including: names, phone numbers, e-mail addresses and passwords.")
      (ja "ユーザのデータの収集"
	  "本アプリの開発元は個人情報を収集しません。"))
     ((en "Additional permissions"
	  "This application accesses your geo-location information, only if you permit. That data is stored at your device only, and never provided to any other applications or services.")
      (ja "追加の権限"
	  "本アプリは、許可が与えられた場合のみ、位置情報を利用します。そのデータが他のアプリやサービスで利用されることはありません。"))
     ((en "Changes"
	  "This Privacy Policy may be updated from time to time for any reason.")
      (ja "変更"
	  "このプライバシポリシーは何らかの理由により変更されることがあります。"))
     ((en "Your Consent"
	  "By using this app you consent to this Privacy Policy as well as all the 3rd party Privacy Policies mentioned above. If you disagree with this Privacy Policy or the 3rd party Privacy Policies you can uninstall this app.")
      (ja "利用にあたっての同意"
	  "本プライバシポリシー及びサードパーティのプライバシポリシーに同意の上でご利用下さい。もし、同意いただけない場合は本アプリをアンインストールして下さい。"))
     ((en "Contact Us"
	  "If there are any questions regarding this Privacy Policy you may contact us by email: <a href=\"mailto:withlet11@gmail.com\">withlet11@gmail.com</a>")
      (ja "お問い合わせ"
	  "プライバシポリシーにつきましてご質問がある場合は<a href=\"mailto:withlet11@gmail.com\">withlet11@gmail.com</a>にお問い合わせ下さい。")))))
