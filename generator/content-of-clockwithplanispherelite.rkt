#lang racket

(require gregor)

(provide clockwithplanispherelite-data)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Data and Generator for pages about Clock with Planisphere lite ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define clockwithplanispherelite-data
  `((page-title "Clock with Planisphere lite")
    (subtitle "Clock with Planisphere lite")
    (author-name "Yasuhiro Yamakawa")
    (author-email "withlet11@gmail.com")
    (filename "clockwithplanispherelite")
    (logo-path "withlet11_full_logo.png")
    (preview-image "clockwithplanispherelite_view.png" "144" "312")
    (screenshots ("clockwithplanispherelite_view.png" "144" "312")
                 ("clockwithplanispherelite_screenshot02.png" "144" "312")
                 ("clockwithplanispherelite_screenshot03.png" "144" "312"))
    (badge "<a href='https://play.google.com/store/apps/details?id=io.github.withlet11.clockwithplanispherelite&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1'><img alt='Get it on Google Play' src='https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png' width='160'/></a>")
    (introduction
     (en
      "This is a clock app widget with a planisphere for Android. The planisphere shows the current sky at the observation location by setting the latitude and the longitude. You can switch the northern and southern celestial hemispheres. This app has no ads, but you cannot choose the date and time of observation. The application name was changed in April, 2023.")
     (ja
      "Android用の星座早見盤付き時計ウィジェットです。星座早見盤は緯度と経度を設定することで、現在地における現在の空を表示します。北天と南天を切り替えることができます。広告はありませんが、空の表示は現在の時刻に限定されています。2023年4月にアプリ名を変更しました。"))
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
     ((en "GPS Available"
	  "You can use the GPS for setting your location.")
      (ja "GPSが利用可"
	  "GPSを観測位置設定に使えます。"))
     ((en "Magnitude 6 star"
	  "The all stars that are brighter than a magnitude 6 star are displayed.")
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
     ((en "No ads"
	  "This app doesn't display any ads.")
      (ja "広告無し"
	  "広告はありません。")))
    (usage
     ((en "Usage")
      (ja "使い方"))
     ((en "App widget and configure"
	  "Please put an app widget of Clock with Planisphere lite at the home screen. Tap an app widget or an icon of Clock with Planisphere lite to show a screen for the configuration. App widgets are not updated soon after changes of settings. The clock is update every 10 seconds and the planispher is updated every minute.")
      (ja "ウィジェットと設定"
	  "Clock with Planisphere liteのウィジェットをホーム画面に置いて下さい。ウィジェットもしくはアイコンをタップすると、設定画面が表示されます。ウィジェットの更新は時計が10秒ごと、星座早見盤が1分ごとに行われるため、設定がウィジェットに反映されるまでに時間がかかります。")))
    (update-history
     ((en "Update History")
      (ja "更新履歴"))
     ("3 (1.2)"
      ,(moment 2023 04 30 08 00 #:tz "Europe/Budapest")
      ((en "The application name was changed to avoid potential trademark litigation. The library version was update.")
       (ja "潜在的な商標訴訟を避けるために、アプリケーション名を変更しました。ライブラリーのバージョンを更新しました。")))
     ("2 (1.1)"
      ,(moment 2021 05 15 16 43 #:tz "Europe/Budapest")
      ((en "Updated library versions.")
       (ja "ライブラリーのバージョンを更新しました。")))
     ("1 (1.0)"
      ,(moment 2020 12 28 22 54 #:tz "Europe/Budapest")
      ((en "This is the first release.")
       (ja "最初のリリースです。"))))
    (privacy-policy
     ((en "Privacy Policy")
      (ja "プライバシポリシー"))
     ,(moment 2020 12 28 #:tz "Europe/Budapest")
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
	  "If there are any questions regarding this Privacy Policy you may contact us by email: <a href='mailto:withlet11@gmail.com'>withlet11@gmail.com</a>")
      (ja "お問い合わせ"
	  "プライバシポリシーにつきましてご質問がある場合は<a href='mailto:withlet11@gmail.com'>withlet11@gmail.com</a>にお問い合わせ下さい。")))))
    
