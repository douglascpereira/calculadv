library calculadv;

class CalculadorDV {
  String calculaDV(String cpf) {
    cpf = validaParametro(cpf);

    var dig1 = int.parse(cpf.substring(0, 1));
    var dig2 = int.parse(cpf.substring(1, 2));
    var dig3 = int.parse(cpf.substring(2, 3));
    var dig4 = int.parse(cpf.substring(3, 4));
    var dig5 = int.parse(cpf.substring(4, 5));
    var dig6 = int.parse(cpf.substring(5, 6));
    var dig7 = int.parse(cpf.substring(6, 7));
    var dig8 = int.parse(cpf.substring(7, 8));
    var dig9 = int.parse(cpf.substring(8, 9));

    var multDig1 = dig1 * 10;
    var multDig2 = dig2 * 9;
    var multDig3 = dig3 * 8;
    var multDig4 = dig4 * 7;
    var multDig5 = dig5 * 6;
    var multDig6 = dig6 * 5;
    var multDig7 = dig7 * 4;
    var multDig8 = dig8 * 3;
    var multDig9 = dig9 * 2;

    var soma = multDig1 +
        multDig2 +
        multDig3 +
        multDig4 +
        multDig5 +
        multDig6 +
        multDig7 +
        multDig8 +
        multDig9;

    var modulo = soma % 11;

    var dv1 = 11 - modulo;

    if (dv1 > 9) {
      dv1 = 0;
    }

    var cpfComDV1 = cpf + "$dv1";

    var dig10 = dv1;

    var multDV2Dig1 = dig1 * 11;
    var multDV2Dig2 = dig2 * 10;
    var multDV2Dig3 = dig3 * 9;
    var multDV2Dig4 = dig4 * 8;
    var multDV2Dig5 = dig5 * 7;
    var multDV2Dig6 = dig6 * 6;
    var multDV2Dig7 = dig7 * 5;
    var multDV2Dig8 = dig8 * 4;
    var multDV2Dig9 = dig9 * 3;
    var multDV2Dig10 = dig10 * 2;

    var somaDV2 = multDV2Dig1 +
        multDV2Dig2 +
        multDV2Dig3 +
        multDV2Dig4 +
        multDV2Dig5 +
        multDV2Dig6 +
        multDV2Dig7 +
        multDV2Dig8 +
        multDV2Dig9 +
        multDV2Dig10;

    var moduloDV2 = somaDV2 % 11;

    var dv2 = 11 - moduloDV2;

    if (dv2 > 9) {
      dv2 = 0;
    }

    var cpfComDV = cpfComDV1 + "$dv2";

    return cpfComDV;
  }

  String validaParametro(String cpf) {
    if (cpf == null && cpf.isEmpty) {
      throw Exception("CPF informado está incorreto");
    }
    cpf = cpf
        .replaceAll(".", "")
        .replaceAll(",", "")
        .replaceAll("-", "")
        .replaceAll("/", "");
    if (int.tryParse(cpf) == null) {
      throw Exception("CPF deve conter somente números");
    }
    if (cpf.length != 9) {
      throw Exception("CPF deve conter 9 números");
    }
    return cpf;
  }
}
