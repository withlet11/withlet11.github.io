#lang racket

;;; webpage-generator.rkt -- generate web pages from articles with tags
;;
;; The MIT License (MIT)
;;
;; Copyright (c) 2020 Yasuhiro Yamakawa <withlet11@gmail.com>
;; 
;; Permission is hereby granted, free of charge, to any person obtaining a
;; copy of this software and associated documentation files (the "Software"),
;; to deal in the Software without restriction, including without limitation
;; the rights to use, copy, modify, merge, publish, distribute, sublicense,
;; and/or sell copies of the Software, and to permit persons to whom the
;; Software is furnished to do so, subject to the following conditions:
;; 
;; The above copyright notice and this permission notice shall be included in
;; all copies or substantial portions of the Software.
;; 
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
;; THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
;; FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
;; DEALINGS IN THE SOFTWARE.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Data and Generator for index pages                         ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define language-list '(en ja))

(define index-data
  '((page-title "WITHLET11")
    (subtitle
     (en "Android apps")
     (ja "Androidアプリ"))
    (author-name "Yasuhiro Yamakawa")
    (author-email "withlet11@gmail.com")
    (filename "index")
    (logo-path "withlet11_full_logo.png")
    (figure-path "skyclock_screenshot02.png")
    (apps
     ((filename "skyclock")
      (app-name "Sky Clock")
      (description (en "This is a clock application with a planisphere for Android. The planisphere shows the current sky at the observation location by setting the latitude and the longitude. You can switch the northern and southern celestial hemispheres.")
		   (ja "これはAndroid用の星座早見盤付き時計アプリです。星座早見盤は緯度と経度を設定することで、現在地における現在の空を表示します。北天と南天を切り替えることができます。"))
      (screenshot "skyclock_view.png")))))

(define (index-html-generator lang content-data)
  (let ([subtitle (cdr (assv 'subtitle content-data))])
    (string-append
     "    <article id=\"container\">\n"
     "      <h2>" (first (get-local-text lang subtitle)) "</h2>\n"
     "      <section>\n"
     (make-android-apps-section lang content-data)
     "      </section>\n"
     "    </article>\n")))

(define (make-android-apps-section lang content-data)
  (let ([apps-content (cdr (assv 'apps content-data))])
    (apply
     string-append
     (map (lambda (x)
	    (let ([filename (make-filename lang x)]
		  [app-name (second (assv 'app-name x))]
		  [description (cdr (assv 'description x))]
		  [screenshot (second (assv 'screenshot x))])
	      (string-append
	       "        <h3><a href=\"" filename "\">" app-name "</a></h3>\n"
	       "        <p>" (first (get-local-text lang description)) "</p>\n"
	       "        <p><a href='https://play.google.com/store/apps/details?id=io.github.withlet11.skyclock&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1'><img alt='Get it on Google Play' src='https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png' width='160'/></a></p>\n"
	       "        <img src=\"" screenshot "\" width=\"480\" height=\"480\" alt=\"skyclock view\">\n")))
	  apps-content))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Data and Generator for pages about Sky Clock               ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define skyclock-data
  '((page-title "Sky Clock")
    (subtitle "Sky Clock")
    (author-name "Yasuhiro Yamakawa")
    (author-email "withlet11@gmail.com")
    (filename "skyclock")
    (logo-path "withlet11_full_logo.png")
    (figure-path "skyclock_screenshot02.png")
    (introduction
     (en
      "This is a clock application with a planisphere for Android. The planisphere shows the current sky at the observation location by setting the latitude and the longitude. You can switch the northern and southern celestial hemispheres.")
     (ja
      "これはAndroid用の星座早見盤付き時計アプリです。星座早見盤は緯度と経度を設定することで、現在地における現在の空を表示します。北天と南天を切り替えることができます。"))
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
	  "You can use as a planisphere. You can change date and solar time by moving the Sun (sidereal time is fixed), change date and sidereal time by moving the red spot (solar time is fixed), or change solar and sidereal time by rotating the ring of date (date is fixed).")
      (ja "星座早見盤モード"
	  "星座早見盤として使うことができます。太陽を動かすことにより、日時が変化します（恒星時は固定）。赤い点を動かすことで、日と恒星時が変化します（太陽時は固定）。日付リングを回すことで太陽時と恒星時が変化します（日は固定）。"))
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
	  "An ad banner is displayed for 10 seconds after lauching the app. No ads are displayed after 10 seconds."
      (ja "10秒広告"
	  "起動後の最初の10秒だけ広告が表示されます。その後は広告は表示されません。"))))
    (usage
     ((en "Usage")
      (ja "使い方"))
     ((en "To switch the northern and southern celestial hemispheres"
	  "Tap the switch on the Toolbar. Widgets show the same view or last view of the app.")
      (ja "北天と南天の切り替え"
	  "ツールバーのスイッチをタップします。ウィジョットには、アプリにおいて現在表示中もしくは最後に表示されていたものが表示されます。"))
     ((en "To switch zoom in/out"
	  "Double tap on the screen.")
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
	  "Swipe the red spot")
      (ja "星を動かす（太陽は動かさない）"
	  "赤い点をスワイプします。"))
     ((en "To move the Sun and stars together"
	  "Swipe the ring of date")
      (ja "太陽と星を動かす"
	  "日付リングをスワイプします。")))
    (privacy-policy
     ((en "Privacy Policy")
      (ja "プライバシポリシー"))
     ((en "Last updated on 20 Nov 2020")
      (ja "最終更新：2020-11-20"))
     ((en "In order to clarify what we do on this matter and how the information provided by the users are used is described in this privacy policy.")
      (ja "本アプリのご利用に当たりまして、このプライバシポリシーにて個人情報の扱いをご確認下さい。"))
     ((en "User data collection"
	  "We do not collect any user information including: names, phone numbers, e-mail addresses and passwords. However, we use 3rd party ad service (Google AdMob™) in this app, and that service may collect your information. The privacy policy can be read on the following page: <a href=\"https://policies.google.com/privacy\">Google privacy policy</a>")
      (ja "ユーザのデータの収集"
	  "本アプリの開発元は個人情報を収集しません。ただし、サードパーティの広告サービス (Google AdMob™)を利用しており、そのサービスが個人情報を収集することがあります。そのプライバシポリシーにつきましては、<a href=\"https://policies.google.com/privacy\">Google privacy polcy</a>でご確認下さい。"))
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
	  "If there are any questions regarding this Privacy Policy you may contact us by email: <a href=\"mailto:withlet11@gmail.com\">withlet11@gmail.com</a>")
      (ja "お問い合わせ"
	  "プライバシポリシーに付きましてご質問がある場合は<a href=\"mailto:withlet11@gmail.com\">withlet11@gmail.com</a>にお問い合わせ下さい。")))))
    
(define (skyclock-html-generator lang content-data)
  (let ([subtitle (second (assv 'subtitle content-data))])
    (string-append
     "    <article id=\"container\">\n"
     "      <h2>" subtitle "</h2>\n"
     (make-figure content-data)
     "      <section>\n"
     (make-section-intro lang content-data)
     "      </section>\n"
     "      <section>\n"
     (make-section-requirement lang content-data)
     "      </section>\n"
     "      <section>\n"
     (make-section-license lang content-data)
     "      </section>\n"
     "      <section>\n"
     (make-section-features lang content-data)
     "      </section>\n"
     "      <section>\n"
     (make-section-usage lang content-data)
     "      </section>\n"
     "      <section>\n"
     (make-section-privacy-policy lang content-data)
     "      </section>\n"
     "    </article>\n")))

(define (make-figure content-data)
  (string-append "        <figure><img src=\""
		 (second (assv 'figure-path content-data))
		 "\" alt=\"skyclock screenshot\"></figure>\n"))
  
(define (make-section-intro lang content-data)
  (let ([local-text (cdr (assv 'introduction content-data))])
    (string-append
     "        <p>" (first (get-local-text lang local-text)) "</p>\n"
	       "        <p><a href='https://play.google.com/store/apps/details?id=io.github.withlet11.skyclock&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1'><img alt='Get it on Google Play' src='https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png' width='160'/></a></p>\n"
     )))
  
(define (make-section-requirement lang content-data)
  (let ([content (cdr (assv 'requirement content-data))])
    (string-append
     "        <h3>" (first (get-local-text lang (first content))) "</h3>\n"
     "        <p>" (first (get-local-text lang (second content))) "</p>\n")))
  
(define (make-section-license lang content-data)
  (let ([content (cdr (assv 'license content-data))])
    (string-append
     "        <h3>" (first (get-local-text lang (first content))) "</h3>\n"
     "        <p>" (first (get-local-text lang (second content))) " [<a href=\"http://opensource.org/licenses/mit-license.php\">http://opensource.org/licenses/mit-license.php</a>]</p>\n")))

(define (make-section-features lang content-data)
  (let ([content (cdr (assv 'features content-data))]
	[delimiter (get-delimiter lang)])
    (string-append
     "        <h3>" (first (get-local-text lang (first content))) "</h3>\n"
     "        <ul>\n"
     (apply string-append
	    (map (lambda (x)
		   (let ([local-text (get-local-text lang x)])
		     (string-append "          <li><strong>"
				    (first local-text)
				    delimiter
				    "</strong>"
				    (second local-text)
				    "</li>\n")))
		 (cdr content)))
     "        </ul>\n")))

(define (make-section-usage lang content-data)
  (let ([content (cdr (assv 'usage content-data))])
    (string-append
     "        <h3>" (first (get-local-text lang (first content))) "</h3>\n"
     (apply string-append
	    (map (lambda (x)
		   (let ([local-text (get-local-text lang x)])
		     (string-append "        <h4>" (first local-text) "</h4>\n"
				    "        <p>" (second local-text) "</p>\n")))
		 (cdr content))))))
	
(define (make-section-privacy-policy lang content-data)
  (let ([content (cdr (assv 'privacy-policy content-data))])
    (string-append
     "        <h3 id=\"privacy_policy\">"
     (first (get-local-text lang (first content)))
     "</h3>\n"
     "        <p>" (first (get-local-text lang (second content))) "</p>\n"
     "        <p>" (first (get-local-text lang (third content))) "</p>\n"
     (apply string-append
	    (map (lambda (x)
		   (string-append "          <h4>"
				  (first (get-local-text lang x))
				  "</h4>\n"
				  "          <p>"
				  (second (get-local-text lang x))))
		 (cdddr content))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Generator for common part                                  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (make-page lang content-data generator)
  (let ([page-title (second (assv 'page-title content-data))]
	[article-element (generator lang content-data)])
    (string-append
     "<!DOCTYPE html>\n"
     "<html lang=\"" (symbol->string lang) "\">\n"
     (make-head-element lang page-title)
     (make-body-element lang content-data article-element)
     "</html>")))

(define (make-head-element lang page-title)
  (string-append
   "  <head>\n"
   "    <link rel=\"icon\" type=\"image/x-icon\" href=\"favicon.ico\">\n"
   "    <link rel=\"stylesheet\" type=\"text/css\" href=\"base"
   (if (eqv? lang 'en) "" (string-append "-" (symbol->string lang)))
   ".css\">\n"
   "    <title>" page-title "</title>\n"
   "  </head>\n"))

(define (make-body-element lang content-data article-element)
  (let ([page-title (second (assv 'page-title content-data))])
    (string-append
     "  <body>\n"
     (make-nav-element lang content-data)
     article-element
     (make-footer-element content-data)
     "  </body>\n")))

(define (make-nav-element lang content-data)
  (let ([logo-path (second (assv 'logo-path content-data))])
    (string-append
     "    <nav>\n"
     "      <h1><a href=\""
     (cond [(eqv? lang 'en) "index.html"]
	   [(eqv? lang 'ja) "index-ja.html"]
	   [else "index.html"])
     "\"><img src=\"" logo-path "\" width=\"240\" alt=\"Withlet11\"></a></h1>\n"
     "      <p>" (get-en-ver-link lang content-data) " | " (get-ja-ver-link lang content-data) "</p>\n"
     "    </nav>\n")))

(define (make-footer-element content-data)
  (let ([author-name (second (assv 'author-name content-data))]
	[author-email (second (assv 'author-email content-data))])
    (string-append
     "    <footer>\n"
     "      <p>Copyright 2020 " author-name " &lt;<a href=\"mailto:" author-email "\">" author-email "</a>&gt;</p>\n"
     "    </footer>\n")))

(define (get-local-text lang content-list)
  (cond [(assv lang content-list) => cdr]
	[else (cdar content-list)]))

(define (make-filename lang content-data)
  (let ([filename (second (assv 'filename content-data))])
    (if (eqv? lang 'en)
	(string-append filename ".html")
	(string-append filename "-" (symbol->string lang) ".html"))))

(define (get-en-ver-link lang content-data)
  (let ([filename (make-filename 'en content-data)])
    (if (eqv? lang 'en)
	"<span class=\"selected\">EN</span>"
	(string-append "<a href=\"" filename "\">EN</a>"))))

(define (get-ja-ver-link lang content-data)
  (let ([filename (make-filename 'ja content-data)])
    (if (eqv? lang 'ja)
	"<span class=\"selected\">JP</span>"
	(string-append "<a href=\"" filename "\">JP</a>"))))

(define (get-delimiter lang)
  (let ([delimiters '((en ": ") (ja "："))])
    (cond [(assv lang delimiters) => second]
	  [else (cadar delimiters)])))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Generate pages                                             ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(for-each (lambda (data-and-generator)
	    (let ([data (first data-and-generator)]
		  [generator (second data-and-generator)])
	      (for-each (lambda (lang)
			  (call-with-output-file (make-filename lang data)
			    (lambda (out)
			      (display (make-page lang data generator) out))
			    #:exists 'replace))
			language-list)))
	  `((,skyclock-data ,skyclock-html-generator)
	    (,index-data ,index-html-generator)))
	    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Generate text for Google Play                              ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (make-text-for-google-play lang content-data)
  (let ([introduction (cdr (assv 'introduction content-data))]
	[features (cddr (assv 'features content-data))])
    (string-append
     (first (get-local-text lang introduction))
     "\n\n"
     (apply string-append
	   (map (lambda (x)
		  (string-append
		   (first (get-local-text lang x))
		   (get-delimiter lang)
		   "\n"
		   (second (get-local-text lang x))
		   "\n\n"))
		features)))))

(call-with-output-file "text_for_google_play.txt"
  (lambda (out)
    (for-each (lambda (lang)
		(display (make-text-for-google-play lang skyclock-data) out))
	      '(en ja)))
  #:exists 'replace)
