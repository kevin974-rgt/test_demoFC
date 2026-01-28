class DniService {
  String dni = '';

  //Constructor required
  DniService(this.dni);

  //length
  int dnilenght() => dni.length;

  //getter
  String getDni() => dni;

  //setter
  void setDni(String val) {
    dni = val;
  }

  Map provinceMap = {
    1: 'Azuay',
    2: 'Bolívar',
    3: 'Cañar',
    4: 'Carchi',
    5: 'Cotopaxi',
    6: 'Chimborazo',
    7: 'El Oro',
    8: 'Esmeraldas',
    9: 'Guayas',
    10: 'Imbabura',
    11: 'Loja',
    12: 'Los Ríos',
    13: 'Manabí',
    14: 'Morona Santiago',
    15: 'Napo',
    16: 'Pastaza',
    17: 'Pichincha',
    18: 'Tungurahua',
    19: 'Zamora Chinchipe',
    20: 'Galápagos',
    21: 'Sucumbíos',
    22: 'Orellana',
    23: 'Santo Domingo de los Tsáchilas',
    24: 'Santa Elena',
  };

  String? getDNIisValid(String dni) {
    if (dni.length != 10) return null;

    //comprueba que solo sean numeros
    if (!RegExp(r'^\d+$').hasMatch(dni)) return null;

    // Código provincia
    final provinciaCodigo = int.tryParse(dni.substring(0, 2));
    if (provinciaCodigo == null) return null;

    // Nombre provincia
    final provinciaNombre = provinceMap[provinciaCodigo];
    if (provinciaNombre == null) return null;

    List<int> coef = [2, 1, 2, 1, 2, 1, 2, 1, 2];
    int suma = 0;

    for (int i = 0; i < 9; i++) {
      int valor = int.parse(dni[i]) * coef[i];
      if (valor >= 10) valor -= 9;
      suma += valor;
    }

    int digitoVerificador = (10 - (suma % 10)) % 10;

    // Comparar con el último dígito del DNI
    if (digitoVerificador == int.parse(dni[9])) {
      print('DNI válido');
    } else {
      print('DNI inválido');
    }

    // Tercer dígito
    final thirdChar = int.tryParse(dni[2]);
    if (thirdChar == null) return null;
    if (thirdChar >= 6) return null;

    return provinciaNombre;
  }
}
