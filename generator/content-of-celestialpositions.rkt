#lang racket

(require gregor)

(provide celestialpositions-data)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Data and Generator for pages about Celestial Positions     ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define celestialpositions-data
  `((page-title "Celestial Positions")
    (subtitle "Celestial Positions")
    (author-name "Yasuhiro Yamakawa")
    (author-email "withlet11@gmail.com")
    (filename "celestialpositions")
    (logo-path "withlet11_full_logo.png")
    (preview-image "celestialpositions_screenshot01.png" "144" "312")
    (screenshots ("celestialpositions_screenshot01.png" "144" "312")
                 ("celestialpositions_screenshot02.png" "144" "312")
                 ("celestialpositions_screenshot03.png" "144" "312"))
    (badge "<a href='https://play.google.com/store/apps/details?id=io.github.withlet11.celestialpositions&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1'><img alt='Get it on Google Play' src='https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png' width='160'/></a>")
    (introduction
     (en
      "This is a application that shows the current position list of Messier's objects and bright stars at your location. It is useful for pointing an uncomputerized telescope at Messier's objects.")
     (ja
      "メシエ天体や明るい恒星の天球上の位置をリスト表示するアプリです。コンピュータ制御ではない天体望遠鏡でメシエ天体を導入する時に便利です。"))
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
     ((en "All Messier' objects and bright stars"
	  "The celestial positions of all Messier's objects and bright stars are calculated every second to display the list of them.")
      (ja "全てのメシエ天体と明るい恒星"
	  "全てのメシエ天体と明るい恒星の天球上の位置をリアルタイムに表示します。"))
     ((en "Local Sidereal Time"
          "The local sidereal time is displayed.")
      (ja "地方恒星時"
          "地方恒星時が表示されます。"))
     ((en "GPS Available"
	  "You can use the GPS for setting your location.")
      (ja "GPSが利用可"
	  "GPSを観測位置設定に使えます。")))
    (usage
     ((en "Usage")
      (ja "使い方"))
     ((en "To switch the lists of Messier's objects and bright stars"
	  "Swipe the screen left or right.")
      (ja "メシエ天体と明るい恒星のリストの切り替え"
	  "画面を左右にスワイプして下さい。"))
     ((en "To show the details of object"
	  "Tap the list.")
      (ja "天体の詳細表示"
	  "リストをタップして下さい。")))
    (update-history
     ((en "Update History")
      (ja "更新履歴"))
     ("2 (1.1)"
      ,(moment 2021 05 29 18 20 #:tz "Europe/Budapest")
      ((en "Updated library versions.")
       (ja "ライブラリのバージョンを更新しました。")))
     ("1 (1.0)"
      ,(moment 2021 01 04 22 13 #:tz "Europe/Budapest")
      ((en "This is the first release.")
       (ja "最初のリリースです。"))))
    (privacy-policy
     ((en "Privacy Policy")
      (ja "プライバシポリシー"))
     ,(moment 2021 01 04 #:tz "Europe/Budapest")
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
    
