# About

Simple dart package for converting latin text to Serbian Cyrillic and vice versa. 
###
Једноставан дарт пакет за конвертовање латинице у српску ћирилицу и обратно.


## Usage

### Convert latin text to cyrillic

```dart
import 'package:cirilica/cirilica.dart';

String text = ConvertTo().cirilica(source: 'Ćirko, jes ti Hrišćanin?');
```

Ćirko, jes ti Hrišćanin? > Ћирко, јес ти Хришћанин?


### Convert cyrillic text to latin

```dart
import 'package:cirilica/cirilica.dart';

String text = ConvertTo().latinica(source: 'Ћирко, јес ти Хришћанин?');
```

Ћирко, јес ти Хришћанин? > Ćirko, jes ti Hrišćanin?

## Mention

This package is heavily inspired by Translit package by Alexey Lepskii
(https://pub.dev/packages/translit)

## Contribute

Please feel free to fork, improve, make pull requests or fill issues. I'll be glad to fix bugs you encountered or improve this package.
