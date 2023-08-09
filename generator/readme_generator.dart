// readme-generator.rkt -- generate README documents
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

String makeReadmeMd(Lang lang, DescriptionsOfApplication contentData) {
  final appName = contentData.pageTitle;
  final introduction = contentData.introduction.local(lang);
  final requirement = contentData.requirement.local(lang);
  final features = contentData.features.descriptions.map((HeadingAndText x) {
    final list = x.local(lang);
    return '* **${list.heading}:** ${list.text}\n';
  }).join();
  final usage = contentData.usage.descriptions.map((HeadingAndText x) {
    final list = x.local(lang);
    return '### ${list.heading}\n* ${list.text}\n\n';
  }).join();
  return '# $appName\n'
      '$introduction\n\n'
      '## Requirement\n'
      '$requirement\n\n'
      '## Features\n'
      '$features\n\n'
      '## Usage\n\n'
      '$usage';
}
