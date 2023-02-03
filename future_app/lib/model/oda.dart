class Oda {
  final String _odaAdi;
  final String _odaResim;
  get odaAdi => this._odaAdi;

  get odaResim => this._odaResim;

  Oda(this._odaAdi, this._odaResim);

  @override
  String toString() {
    return '$_odaAdi - $_odaResim';
  }
}
