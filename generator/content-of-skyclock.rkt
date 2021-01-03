#lang racket

(require gregor)

(provide skyclock-data)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Data and Generator for pages about Sky Clock               ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define skyclock-data
  `((page-title "Sky Clock")
    (subtitle "Sky Clock")
    (author-name "Yasuhiro Yamakawa")
    (author-email "withlet11@gmail.com")
    (filename "skyclock")
    (logo-path "withlet11_full_logo.png")
    (preview-image "skyclock_view.png" "312" "312")
    (screenshots ("skyclock_screenshot01.png" "144" "312")
                 ("skyclock_screenshot03.png" "144" "312")
                 ("skyclock_screenshot04.png" "144" "312"))
    (badge "<a href='https://play.google.com/store/apps/details?id=io.github.withlet11.skyclock&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1'><img alt='Get it on Google Play' src='https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png' width='160'/></a>")
    (introduction
     (en
      "This is a clock application with a planisphere for Android. The planisphere shows the current sky at the observation location by setting the latitude and the longitude. You can switch the northern and southern celestial hemispheres.")
     (ja
      "Android用の星座早見盤付き時計アプリです。星座早見盤は緯度と経度を設定することで、現在地における現在の空を表示します。北天と南天を切り替えることができます。"))
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
     ((en "Standard Time"
	  "You can read the standard time of your time zone. It is indicated by a red point (today's date) as the value of right ascension.")
      (ja "標準時"
	  "現在地の標準時が分かります。赤い点（現在の日付）の位置の赤経の値になります。"))
     ((en "Local Sidereal Time"
	  "You can read the local sidereal time. It is indicated by a small yellow triangle.")
      (ja "地方恒星時"
	  "地方恒星時が分かります。黄色の三角形が示します。"))
     ((en "Planisphere mode"
	  "You can use as a planisphere. You can change date and solar time by moving the Sun (sidereal time is fixed), change date and sidereal time by moving the red spot (solar time is fixed), or change solar and sidereal time by rotating the ring of right ascension (date is fixed).")
      (ja "星座早見盤モード"
	  "星座早見盤として使うことができます。太陽を動かすことにより、日時が変化します（恒星時は固定）。赤い点を動かすことで、日と恒星時が変化します（太陽時は固定）。赤経目盛りを回すことで太陽時と恒星時が変化します（日は固定）。"))
     ((en "GPS Available"
	  "You can use the GPS for setting your location.")
      (ja "GPSが利用可"
	  "GPSを観測位置設定に使えます。"))
     ((en "Magnitude 6 star"
	  "All of the stars that are brighter than a magnitude 6 star are displayed.")
      (ja "6等星" "6等星より明るい星を全て表示します。"))
     ((en "Constellation lines"
	  "Constellation lines are displayed.")
      (ja "星座線"
	  "星座線が表示されます。"))
     ((en "The Sun and Analemma"
	  "The position of the Sun is displayed with analemma.")
      (ja "太陽とアナレンマ"
	  "太陽とアナレンマを表示します。"))
     ((en "The Moon and the lunar phase"
	  "The position of the Moon is displayed with the lunar phase.")
      (ja "月と月相"
	  "月の位置と月相を表示します。"))
     ((en "Astronomical Twilight"
	  "You can check astronomical twilight time with altitude line of −18°.")
      (ja "天文薄明"
	  "−18°の高度線で天文薄明の時間を確認できます。"))
     ((en "Automatic Update"
	  "The view is updated automatically.")
      (ja "自動アップデート"
	  "表示は自動的にアップデートされます。"))
     ((en "App Widget"
	  "App Widget is available.")
      (ja "ウィジェット"
	  "ウィジェットが利用できます。"))
     ((en "10-sec ad"
	  "An ad banner is displayed for 10 seconds after launching the app. No ads are displayed after 10 seconds.")
      (ja "10秒広告"
	  "起動後の最初の10秒だけ広告が表示されます。その後は広告は表示されません。")))
    (usage
     ((en "Usage")
      (ja "使い方"))
     ((en "To switch the northern and southern celestial hemispheres"
	  "Tap the switch on the Toolbar. Widgets show the same view or last view of the app.")
      (ja "北天と南天の切り替え"
	  "ツールバーのスイッチをタップします。ウィジョットには、アプリにおいて現在表示中もしくは最後に表示されていたものが表示されます。"))
     ((en "To switch zoom in/out"
	  "Double tap the screen.")
      (ja "ズームイン・アウト"
	  "画面をダブルタップします。"))
     ((en "To adjust the position of clock"
	  "Swipe the screen.")
      (ja "時計の表示位置の変更"
	  "画面をスワイプします。"))
     ((en "To show/hide the clock hands (Clock mode / Planisphere mode)"
	  "Tap the center of clock.")
      (ja "時計の針を表示・非表示（時計モード・星座早見盤モード）"
	  "時計の中央をタップします。"))
     ((en "To move the Sun only (Stars don't move)"
	  "Swipe the Sun or analemma.")
      (ja "太陽を動かす（星は動かさない）"
	  "太陽をスワイプします。"))
     ((en "To move stars only (The Sun doesn't move)"
	  "Swipe the red spot.")
      (ja "星を動かす（太陽は動かさない）"
	  "赤い点をスワイプします。"))
     ((en "To move the Sun and stars together"
	  "Swipe the ring of right ascension.")
      (ja "太陽と星を動かす"
	  "赤経リングをスワイプします。")))
    (update-history
     ((en "Update History")
      (ja "更新履歴"))
     ("9 (5.0)"
      ,(moment 2020 12 28 22 00 #:tz "Europe/Budapest")
      ((en "Added the Milky Way and the Moon.")
       (ja "天の川と月を追加しました。")))
     ("8 (4.2)"
      ,(moment 2020 12 16 19 47 #:tz "Europe/Budapest")
      ((en "Modified to accept comma as decimal point in latitude/longitude fields.")
       (ja "緯度・経度の入力においてカンマを小数点として受け付けるようにしました。")))
     ("7 (4.1)"
      ,(moment 2020 11 29 7 59 #:tz "Europe/Budapest")
      ((en "Fixed a location service request issue and a decimal point issue (comma not accepted but displayed).")
       (ja "位置情報サービスリクエストの問題と小数点の問題（小数点にカンマが用いられる地域で発生）を解決しました。")))
     ("6 (4.0)"
      ,(moment 2020 11 28 14 14 #:tz "Europe/Budapest")
      ((en "An ad banner has been added. The shape of clock hands has been changed.")
       (ja "広告バナーが追加されました。時計の針の形が新しくなりました。")))
     ("5 (3.0)"
      ,(moment 2020 11 20 21 22 #:tz "Europe/Budapest")
      ((en "App widget is available.")
       (ja "ウィジェットが利用可能になりました。")))
     ("3 (2.1)"
      ,(moment 2020 11 12 23 00 #:tz "Europe/Budapest")
      ((en "Fixed a bug (Clock base panel didn't update after displaying clock hands panel again)")
       (ja "不具合の修正（時計の針の再表示後にベースパネルの更新がなかった）")))
     ("2 (2.0)"
      ,(moment 2020 11 11 21 36 #:tz "Europe/Budapest")
      ((en "Planisphere mode was added.")
       (ja "星座早見盤モードを追加しました。")))
     ("1 (1.0)"
      ,(moment 2020 11 04 22 13 #:tz "Europe/Budapest")
      ((en "This is the first release.")
       (ja "最初のリリースです。"))))
    (privacy-policy
     ((en "Privacy Policy")
      (ja "プライバシポリシー"))
     ,(moment 2020 12 28 #:tz "Europe/Budapest")
     ((en "In order to clarify what we do on this matter and how the information provided by the users are used is described in this privacy policy.")
      (ja "本アプリのご利用に当たりまして、このプライバシポリシーにて個人情報の扱いをご確認下さい。"))
     ((en "User data collection"
	  "We do not collect any user information including: names, phone numbers, e-mail addresses and passwords. However, we use 3rd party ad service (Google AdMob™) in this app, and that service may collect your information. The privacy policy can be read on the following page: <a href='https://policies.google.com/privacy'>Google privacy policy</a>")
      (ja "ユーザのデータの収集"
	  "本アプリの開発元は個人情報を収集しません。ただし、サードパーティの広告サービス（Google AdMob™）を利用しており、そのサービスが個人情報を収集することがあります。そのプライバシポリシーにつきましては、<a href='https://policies.google.com/privacy'>Google privacy policy</a>でご確認下さい。"))
     ((en "Additional permissions"
	  "This application accesses your geo-location information, only if you permit. That data is stored at your device only, and never provided to any other applications or services.
Internet is used to display advertisement banners.")
      (ja "追加の権限"
	  "本アプリは、許可が与えられた場合のみ、位置情報を利用します。そのデータが他のアプリやサービスで利用されることはありません。
広告バナーの表示のためにインターネットが利用されます。"))
     ((en "Changes"
	  "This Privacy Policy may be updated from time to time for any reason.")
      (ja "変更"
	  "このプライバシポリシーは何らかの理由により変更されることがあります。"))
     ((en "Your Consent"
	  "By using this app you consent to this Privacy Policy as well as all the 3rd party Privacy Policies mentioned above. If you disagree with this Privacy Policy or the 3rd party Privacy Policies you can uninstall this app.")
      (ja "利用にあたっての同意"
	  "本プライバシポリシー及びサードパーティのプライバシポリシーに同意の上でご利用下さい。もし、同意いただけない場合は本アプリをアンインストールして下さい。"))
     ((en "Contact Us"
	  "If there are any questions regarding this Privacy Policy you may contact us by email: <a href='mailto:withlet11@gmail.com'>withlet11@gmail.com</a>")
      (ja "お問い合わせ"
	  "プライバシポリシーにつきましてご質問がある場合は<a href='mailto:withlet11@gmail.com'>withlet11@gmail.com</a>にお問い合わせ下さい。")))))
    
