class Firsat {
  final String _firsatAdi;
  final String _firsatAciklama;
  final String _firsatResim;
  get firsatAdi => this._firsatAdi;

  get firsatAciklama => this._firsatAciklama;

  get firsatResim => this._firsatResim;

  Firsat(this._firsatAdi, this._firsatAciklama, this._firsatResim);

  @override
  String toString() {
    return '$_firsatAdi - $_firsatResim';
  }
}
