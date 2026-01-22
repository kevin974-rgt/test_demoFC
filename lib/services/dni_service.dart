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

  bool isThirdCharacterLessThanSix(String dni) {

    


    if (dni.length != 10) return false;

    final thirdChar = int.tryParse(dni[2]);
    if (thirdChar == null) return false;

    return thirdChar < 6;
  }
}
