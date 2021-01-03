#lang racket

(require gregor)

(provide digitalquadrant-data)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Data and Generator for pages about Digital Quadrant        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define digitalquadrant-data
  `((page-title "Digital Quadrant")
    (subtitle "Digital Quadrant")
    (author-name "Yasuhiro Yamakawa")
    (author-email "withlet11@gmail.com")
    (filename "digitalquadrant")
    (logo-path "withlet11_full_logo.png")
    (preview-image "digitalquadrant_screenshot01.png" "144" "312")
    (screenshots ("digitalquadrant_screenshot01.png" "144" "312")
                 ("digitalquadrant_screenshot02.png" "144" "312"))
    (badge "<a href='https://play.google.com/store/apps/details?id=io.github.withlet11.digitalquadrant&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1'><img alt='Get it on Google Play' src='https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png' width='160'/></a>")
    (introduction
     (en
      "This is an astronomical quadrant application for measuring the altitude of celestial objects above the horizon. It has 2 modes, cameraless-mode and camera-mode. Don't use camera-mode for measuring the altitude of the Sun. The camera of the phone may be damaged.")
     (ja
      "四分儀アプリです。カメラ無しモードとカメラモードがあります。カメラモードは太陽の高度測定には利用しないで下さい。カメラが壊れる恐れが有ります。"))
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
     ((en "Camera-mode"
          "You can use a camera of the phone for measuring the altitude of Bright stars and the Moon.")
      (ja "カメラモード"
          "明るい恒星や月の高度の測定に端末のカメラを利用することができます。"))
     ((en "Auto-hold mode"
          "If auto-hold mode is turned on, measuring is stop automatically when the device isn't move physically.")
      (ja "オートホールドモード"
          "オートホールドモードがオンになっている場合、端末の向きが変わらない時に測定が自動的に止まります。")))
    (usage
     ((en "Usage")
      (ja "使い方"))
     ((en "To switch cameraless-mode and camera-mode"
	  "Swipe the screen left or right.")
      (ja "カメラ無しモードとカメラモードの切り替え"
	  "画面を左右にスワイプして下さい。")))
    (update-history
     ((en "Update History")
      (ja "更新履歴"))
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
	  "This application accesses your camera, only if you permit. That data is stored at your device only, and never provided to any other applications or services.")
      (ja "追加の権限"
	  "本アプリは、許可が与えられた場合のみ、カメラを利用します。そのデータが他のアプリやサービスで利用されることはありません。"))
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
    
