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
}
