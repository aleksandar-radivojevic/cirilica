import 'package:cirilica/cirilica.dart';

main() {
  String latinicniTekst =
      'Ovo je demo latinični tekst za konvertovanje na ćirilicu.';

  final String? cirilicniTekst = ConvertTo().cirilica(source: latinicniTekst);

  final String? vracanjeNaLatinicu =
      ConvertTo().latinica(source: cirilicniTekst);

  print('Originalni latinični tekst - $latinicniTekst');
  print('Konvertovanje latinice u ćirilicu - $cirilicniTekst');
  print('Konvertovanje ćirilice u latinicu - $vracanjeNaLatinicu');
}
