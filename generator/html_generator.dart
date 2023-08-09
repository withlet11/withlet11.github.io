// html-generator.rkt -- generate contents for web pages
//
// The MIT License (MIT)
//
// Copyright (c) 2021-2023 Yasuhiro Yamakawa <withlet11@gmail.com>
//
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the "Software"),
// to deal in the Software without restriction, including without limitation
// the rights to use, copy, modify, merge, publish, distribute, sublicense,
// and/or sell copies of the Software, and to permit persons to whom the
// Software is furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
// THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
// DEALINGS IN THE SOFTWARE.

// Common parts

import 'content.dart';
import 'generator_common.dart';

String makeHeadElement(Lang lang, String pageTitle) => '  <head>\n'
    '    <link rel=\'icon\' type=\'image/x-icon\' href=\'favicon.ico\'>\n'
    '    <link rel=\'stylesheet\' type=\'text/css\' href=\'base${lang == Lang.en ? '' : '-${lang.name}'}.css\'>\n'
    '    <title>$pageTitle</title>\n'
    '  </head>\n';

String makeBodyElement(
    Lang lang, DescriptionsOfApplication contentData, String articleElement) {
  return "  <body>\n"
      "${makeHeaderElement(lang, contentData)}"
      "$articleElement"
      "${makeFooterElement(contentData)}"
      "  </body>\n";
}

String makeHeaderElement(Lang lang, DescriptionsOfApplication contentData) {
  final indexFile = lang == Lang.ja ? 'index-ja.html' : 'index.html';
  final logoPath = contentData.logoPath;
  final enLink = getEnVerLink(lang, contentData);
  final jaLink = getJaVerLink(lang, contentData);
  return '    <header>\n'
      '      <h1><a href=\'$indexFile\'><img src=\'$logoPath\' width=\'240\' alt=\'Withlet11\'></a></h1>\n'
      '      <p>$enLink | $jaLink</p>\n'
      '    </header>\n';
}

String makeFooterElement(DescriptionsOfApplication contentData) {
  final authorName = contentData.authorName;
  final authorEmail = contentData.authorEmail;
  return '    <footer>\n'
      '      <p>Copyright 2020-2023 $authorName &lt;<a href=\'mailto:$authorEmail\'>$authorEmail</a>&gt;</p>\n'
      '    </footer>\n';
}

String getEnVerLink(Lang lang, DescriptionsOfApplication contentData) {
  final filename = makeFilename(Lang.en, contentData);
  return lang == Lang.en
      ? '<span class=\'selected\'>EN</span>'
      : '<a href=\'$filename\'>EN</a>';
}

String getJaVerLink(Lang lang, DescriptionsOfApplication contentData) {
  final filename = makeFilename(Lang.ja, contentData);
  return lang == Lang.ja
      ? '<span class=\'selected\'>JP</span>'
      : '<a href=\'$filename\'>JP</a>';
}

String getFirstLocalText(Lang lang, HeadingAndText contentList) {
  final text = getLocalText(lang, contentList);
  return text.heading.replaceAll('\'', '&apos;');
}

String getSecondLocalText(Lang lang, HeadingAndText contentList) {
  final text = getLocalText(lang, contentList);
  return text.text.replaceAll('\'', '&apos;');
}

// Generate index page

String makeIndexPage(Lang lang, DescriptionsOfApplication contentData,
    List<DescriptionsOfApplication> contentList) {
  final pageTitle = contentData.pageTitle;
  final articleElement = indexHtmlGenerator(lang, contentData, contentList);
  return '<!DOCTYPE html>\n'
      '<html lang=\'${lang.name}\'>\n'
      '${makeHeadElement(lang, pageTitle)}'
      '${makeBodyElement(lang, contentData, articleElement)}'
      '</html>';
}

String indexHtmlGenerator(Lang lang, DescriptionsOfApplication contentData,
    List<DescriptionsOfApplication> contentList) {
  final subtitle = contentData.subtitle.local(lang);
  return '    <section class=\'top-item\'>\n'
      '      <h2>${subtitle.replaceAll('\'', '&apos;')}</h2>\n'
      '${makeAndroidAppsSection(lang, contentData, contentList)}'
      '    </section>\n';
}

String makeAndroidAppsSection(lang, contentData, appsContent) {
  return appsContent.map((DescriptionsOfApplication params) {
    final filename = makeFilename(lang, params);
    final appName = params.pageTitle;
    final introduction = params.introduction;
    final previewImage = params.previewImage;
    return '      <article><a class=\'box-link\' href=\'$filename\'>\n'
        '        <div class=\'col\'><img src=\'${previewImage.filename}\' width=\'${previewImage.x}\' height=\'${previewImage.y}\' alt=\'clockwithplanisphere view\'></div>\n'
        '        <div class=\'description\'><h3>$appName</h3>\n'
        '          <p>${introduction.local(lang).replaceAll('\'', '&apos;')}</p>\n'
        '        </div></a>\n'
        '      </article>\n';
  }).join();
}

// Generate application pages

String makeAppPage(Lang lang, DescriptionsOfApplication contentData) {
  final pageTitle = contentData.pageTitle;
  final articleElement = appPageHtmlGenerator(lang, contentData);
  return '<!DOCTYPE html>\n'
      '<html lang=\'${lang.name}\'>\n'
      '${makeHeadElement(lang, pageTitle)}'
      '${makeBodyElement(lang, contentData, articleElement)}'
      '</html>';
}

String appPageHtmlGenerator(Lang lang, DescriptionsOfApplication contentData) {
  final subtitle = contentData.subtitle.local(lang);
  return '      <h2 class=\'top-item\'>$subtitle</h2>\n'
      '      <section>\n'
      '${makeSectionIntro(lang, contentData)}'
      '      </section>\n'
      '      <section>\n'
      '${makeSectionRequirement(lang, contentData)}'
      '      </section>\n'
      '      <section>\n'
      '${makeSectionLicense(lang, contentData)}'
      '      </section>\n'
      '      <section>\n'
      '${makeSectionFeatures(lang, contentData)}'
      '      </section>\n'
      '      <section>\n'
      '${makeSectionUsage(lang, contentData)}'
      '      </section>\n'
      '      <section>\n'
      '${makeSectionUpdateHistory(lang, contentData)}'
      '      </section>\n'
      '      <section>\n'
      '${makeSectionPrivacyPolicy(lang, contentData)}'
      '      </section>\n';
}

String makeSectionIntro(Lang lang, DescriptionsOfApplication contentData) {
  final localText = contentData.introduction.local(lang);
  final badge = contentData.badge;
  return "        <div class='description'><p>${localText.replaceAll('\'', '&apos;')}</p>\n"
      "          <p>$badge</p></div>\n"
      '${makeFigure(contentData)}';
}

String makeFigure(DescriptionsOfApplication contentData) {
  final screenshots = contentData.screenshots;
  final title = contentData.pageTitle;
  return screenshots
      .map((x) =>
          '        <figure><img src=\'${x.filename}\' alt=\'$title screenshot\' width=\'${x.x}\' height=\'${x.y}\'></figure>\n')
      .join();
}

String makeSectionRequirement(
    Lang lang, DescriptionsOfApplication contentData) {
  final content = contentData.requirement;
  return "        <h3>${content.heading(lang).replaceAll('\'', '&apos;')}</h3>\n"
      "        <p>${content.local(lang).replaceAll('\'', '&apos;')}</p>\n";
}

String makeSectionLicense(Lang lang, DescriptionsOfApplication contentData) {
  final content = contentData.license;
  return "        <h3>${content.heading(lang)}</h3>\n"
      "        <p>${content.local(lang).replaceAll('\'', '&apos;')} "
      "[<a href='http://opensource.org/licenses/mit-license.php'>"
      "http://opensource.org/licenses/mit-license.php</a>]</p>\n";
}

String makeSectionFeatures(Lang lang, DescriptionsOfApplication contentData) {
  final content = contentData.features;
  final delimiter = getDelimiter(lang);
  final headPart = "        <h3>${content.heading(lang)}</h3>\n"
      "        <ul>\n";
  final body = content.descriptions.map((x) {
    final localText = x.local(lang);
    return "          <li><strong>${localText.heading}$delimiter</strong>${localText.text}</li>\n";
  }).join();
  final footPart = "        </ul>\n";
  return headPart + body + footPart;
}

String makeSectionUsage(Lang lang, DescriptionsOfApplication contentData) {
  final content = contentData.usage;
  final headPart =
      "        <h3>${content.heading(lang).replaceAll('\'', '&apos;')}</h3>\n";
  final body = content.descriptions.map((x) {
    final localText = x.local(lang);
    return "        <h4>${localText.heading}</h4>\n"
        "        <p>${localText.text}</p>\n";
  }).join();
  return headPart + body;
}

String makeSectionUpdateHistory(
    Lang lang, DescriptionsOfApplication contentData) {
  final content = contentData.updateHistory;
  final headPart = "        <h3>${content.heading(lang)}</h3>\n";
  final body = content.descriptions.map((x) {
    return "        <h4>${x.heading.en}</h4>\n" // version
        "        <p>${getLocalDateTimeString(lang, x.dateTime, x.timeZone)}</p>\n" // date and time
        "        <p>${x.text.local(lang).replaceAll('\'', '&apos;')}</p>\n";
  }).join();
  return headPart + body;
}

String makeSectionPrivacyPolicy(
    Lang lang, DescriptionsOfApplication contentData) {
  final content = contentData.privacyPolicy;
  final headPart =
      "        <h3 id='privacy_policy'>${content.heading(lang)}</h3>\n"
      "        <p>${getLastUpdateString(lang, content.dateTime)}</p>\n"
      "        <p>${content.comment.local(lang)}</p>\n";
  final body = content.text.map((HeadingAndText x) {
    return "          <h4>${x.local(lang).heading.replaceAll('\'', '&apos;')}</h4>\n"
        "          <p>${x.local(lang).text.replaceAll('\'', '&apos;')}</p>\n";
  }).join();
  return headPart + body;
}
