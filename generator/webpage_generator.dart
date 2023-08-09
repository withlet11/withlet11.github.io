// webpage-generator.rkt -- generate web pages from articles with tags
//
// The MIT License (MIT)
//
// Copyright (c) 2020-2021 Yasuhiro Yamakawa <withlet11@gmail.com>
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

/// How to add new contents
/// 1. Create 'content_of_***.dart'
/// 2. Create directory with name '***'
/// 3. Add filenames to 'import ...;'
/// 4. Add parameters to 'contentList'

import 'dart:io';

import 'content.dart';
import 'content_of_celestialpositions.dart';
import 'content_of_clockwithplanisphere.dart';
import 'content_of_clockwithplanispherelite.dart';
import 'content_of_csilszim.dart';
import 'content_of_digitalquadrant.dart';
import 'content_of_index.dart';
import 'generator_common.dart';
import 'googlePlayTextGenerator.dart';
import 'html_generator.dart';
import 'readme_generator.dart';

final contentList = [csilszimData,
  clockWithPlanisphereData,
  clockWithPlanisphereLiteData,
  celestialPositionsData,
  digitalQuadrantData,];

void main() {
  generateHtmlPages();
  generateReadmeMd();
  generateTextForGooglePlay();
}

void generateHtmlPages() {
  for (final contentData in contentList) {
    for (final lang in [Lang.en, Lang.ja]) {
      final file = File(makeFilename(lang, contentData));
      final sink = file.openWrite();
      sink.write(makeAppPage(lang, contentData));
      sink.close();
    }
  }

  final data = indexData;
  for (final lang in [Lang.en, Lang.ja]) {
    final file = File(makeFilename(lang, data));
    final sink = file.openWrite();
    sink.write(makeIndexPage(lang, data, contentList));
    sink.close();
  }
}

void generateReadmeMd() {
  for (final contentData in contentList) {
    final directory = makeDirectoryName(contentData);
    final file = File(directory + '/README2.md');
    final sink = file.openWrite();
    sink.write(makeReadmeMd(Lang.en, contentData));
    sink.close();
  }
}

void generateTextForGooglePlay() {
  for (final contentData in contentList) {
    final directory = makeDirectoryName(contentData);
    final file = File(directory + '/text_for_google_play2.txt');
    final sink = file.openWrite();
    sink.write(makeTextForGooglePlay(Lang.en, contentData));
    sink.write(makeTextForGooglePlay(Lang.ja, contentData));
    sink.close();
  }
}