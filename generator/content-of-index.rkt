#lang racket

(provide index-data)

(define index-data
  '((page-title "WITHLET11")
    (subtitle
     (en "Android apps")
     (ja "Androidアプリ"))
    (author-name "Yasuhiro Yamakawa")
    (author-email "withlet11@gmail.com")
    (filename "index")
    (logo-path "withlet11_full_logo.png")
    #;(figure-path "skyclock_screenshot01.png")
    (apps
     ((filename "skyclock")
      (app-name "Sky Clock")
      (description (en "This is a clock application with a planisphere for Android. The planisphere shows the current sky at the observation location by setting the latitude and the longitude. You can switch the northern and southern celestial hemispheres.")
		   (ja "Android用の星座早見盤付き時計アプリです。星座早見盤は緯度と経度を設定することで、現在地における現在の空を表示します。北天と南天を切り替えることができます。通常の星座早見盤としても機能します。"))
      (screenshot "skyclock_view.png" "480" "480"))
     ((filename "skyclocklite")
      (app-name "Sky Clock lite")
      (description (en "This is a clock app widget with a planisphere for Android. The planisphere shows the current sky at the observation location by setting the latitude and the longitude. You can switch the northern and southern celestial hemispheres. This app has no ads, but you cannot choose the date and time of observation.")
		   (ja "Android用の星座早見盤付き時計ウィジェットです。星座早見盤は緯度と経度を設定することで、現在地における現在の空を表示します。北天と南天を切り替えることができます。広告はありませんが、空の表示は現在の時刻に限定されています。"))
      (screenshot "skyclocklite_view.png" "240" "520")))))
