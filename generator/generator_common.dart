// generator-common.rkt -- common functions for generating documents
//
// The MIT License (MIT)
//
// Copyright (c) 2021 Yasuhiro Yamakawa <withlet11@gmail.com>
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

import 'content.dart';

String makeFilename(Lang lang, DescriptionsOfApplication contentData) {
  final filename = contentData.filename;
  return '$filename${(lang == Lang.ja) ? '-ja.html' : '.html'}';
}

String makeDirectoryName(DescriptionsOfApplication contentData) =>
    contentData.filename;

({String heading, String text}) getLocalText(
        Lang lang, HeadingAndText contentList) =>
    lang == Lang.ja ? contentList.ja : contentList.en;

String getDelimiter(Lang lang) => lang == Lang.ja ? '：' : ': ';

String getMonthName(int month) {
  const monthName = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];
  return (month > 0 && month < 13) ? monthName[month - 1] : '---';
}

String getLocalDateTimeString(Lang lang, DateTime dateTime, String timeZone) {
  final year = dateTime.year;
  final month = dateTime.month;
  final day = dateTime.day;
  final hour = dateTime.hour;
  final minute = dateTime.minute.toString().padLeft(2, '0');
  return lang == Lang.ja
      ? '$year年$month月$day日 $hour時$minute分 ($timeZone)'
      : '$day ${getMonthName(month)} $year $hour:$minute ($timeZone)';
}

String getLastUpdateString(Lang lang, DateTime dateTime) {
  final year = dateTime.year;
  final month = dateTime.month;
  final day = dateTime.day;
  return lang == Lang.ja
      ? '最終更新：$year年$month月$day日'
      : 'Last update on $day ${getMonthName(month)} $year';
}
