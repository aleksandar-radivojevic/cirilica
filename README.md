# About

<!-- [![Build Status](https://travis-ci.org/alexeynobody/translit-dart.svg?branch=master)](https://travis-ci.org/alexeynobody/translit-dart)
[![Pub Package](https://img.shields.io/pub/v/translit.svg)](https://pub.dartlang.org/packages/translit) -->

Simple dart package for converting Serbian Cyrillic symbols to Latin and vice versa

Reverse translation into Cyrillic can not always completely convert the text to the original. Please keep this in mind when using this module in your projects.

## Examples

### Convert text to cirilic

```dart
import 'package:cirilica/cirilica.dart';

String tekst = ConvertTo().cirilica(source: 'Dobrodošli!');
```

Dobrodošli! > Добродошли!


### Convert text from transliterated

```dart
import 'package:cirilica/cirilica.dart';

String text = ConvertTo().latinica(source: 'Privet mir');
```

Dobrodošli > Добродошли!

## Contribute

Please feel free to fork, improve, make pull requests or fill issues. I'll be glad to fix bugs you encountered or improve the extension.
