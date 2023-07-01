import 'package:test/test.dart';
import 'package:cirilica/cirilica.dart';

void main() {
  test('words translit', () {
    ConvertTo translit = ConvertTo();
    expect(translit.cirilica(source: 'привет мир'), 'privet mir');
    expect(translit.cirilica(source: 'Изъять'), 'Iz"yat\'');
    expect(translit.cirilica(source: 'Объект'), 'Ob"ekt');
  });

  test('words untranslit', () {
    ConvertTo translit = ConvertTo();
    expect(translit.latinica(source: 'privet mir'), 'привет мир');
    expect(translit.latinica(source: 'Iz"yat\''), 'Изъять');
    expect(translit.latinica(source: 'Ob"ekt'), 'Объект');
  });

  test(
    'translit text',
    () {
      expect(
          ConvertTo().cirilica(
              source:
                  'Если существует победа, то должно быть сражение. Если грядёт сражение, то вероятна война. Если война неизбежна, то необходимо готовиться. Чем лучше готов, тем меньше трусости в отдельном сражении, тем спокойнее за исход. В этом есть толика циничного, очевидного примитивизма. Вообще, это не всегда спасающий закон, но куда чаще решающий. Сложно успешно воевать, оставаясь консерватором, однако это не означает мгновенную смену фундаментальных основ, ведь, как обычно, результат принесут детали. Только эти самые детали – ловушка. Увлёкшись мелким конкурентным преимуществом очень легко упустить те глобальные и простые вещи, которые как бы одинаковы у всех противоборствующих сторон.'),
          'Esli sushhchestvuet pobeda, to dolzhno byt\' srazhenie. Esli gryadyot srazhenie, to veroyatna vojna. Esli vojna neizbezhna, to neobhodimo gotovit\'sya. Chem luchshhe gotov, tem men\'shhe trusosti v otdel\'nom srazhenii, tem spokojnee za ishod. V eh\'tom est\' tolika cinichnogo, ochevidnogo primitivizma. Voobshhche, eh\'to ne vsegda spasayushhchij zakon, no kuda chashhche reshhayushhchij. Slozhno uspeshhno voevat\', ostavayas\' konservatorom, odnako eh\'to ne oznachaet mgnovennuyu smenu fundamental\'nyh osnov, ved\', kak obychno, rezul\'tat prinesut detali. Tol\'ko eh\'ti samye detali – lovushhka. Uvlyokshhis\' melkim konkurentnym preimushhchestvom ochen\' legko upustit\' te global\'nye i prostye veshhchi, kotorye kak by odinakovy u vseh protivoborstvuyushhchih storon.');
    },
  );

  test(
    'untranslit text',
    () {
      expect(
          ConvertTo().latinica(
              source:
                  'Esli sushhchestvuet pobeda, to dolzhno byt\' srazhenie. Esli gryadyot srazhenie, to veroyatna vojna. Esli vojna neizbezhna, to neobhodimo gotovit\'sya. Chem luchshhe gotov, tem men\'shhe trusosti v otdel\'nom srazhenii, tem spokojnee za ishod. V eh\'tom est\' tolika cinichnogo, ochevidnogo primitivizma. Voobshhche, eh\'to ne vsegda spasayushhchij zakon, no kuda chashhche reshhayushhchij. Slozhno uspeshhno voevat\', ostavayas\' konservatorom, odnako eh\'to ne oznachaet mgnovennuyu smenu fundamental\'nyh osnov, ved\', kak obychno, rezul\'tat prinesut detali. Tol\'ko eh\'ti samye detali – lovushhka. Uvlyokshhis\' melkim konkurentnym preimushhchestvom ochen\' legko upustit\' te global\'nye i prostye veshhchi, kotorye kak by odinakovy u vseh protivoborstvuyushhchih storon.'),
          'Если существует победа, то должно быть сражение. Если грядёт сражение, то вероятна война. Если война неизбежна, то необходимо готовиться. Чем лучше готов, тем меньше трусости в отдельном сражении, тем спокойнее за исход. В этом есть толика циничного, очевидного примитивизма. Вообще, это не всегда спасающий закон, но куда чаще решающий. Сложно успешно воевать, оставаясь консерватором, однако это не означает мгновенную смену фундаментальных основ, ведь, как обычно, результат принесут детали. Только эти самые детали – ловушка. Увлёкшись мелким конкурентным преимуществом очень легко упустить те глобальные и простые вещи, которые как бы одинаковы у всех противоборствующих сторон.');
    },
  );

  test('other', () {
    ConvertTo translit = ConvertTo();
    expect(translit.cirilica(source: null), null);
    expect(translit.cirilica(source: ""), "");
    expect(translit.latinica(source: null), null);
    expect(translit.latinica(source: ""), "");
  });
}
