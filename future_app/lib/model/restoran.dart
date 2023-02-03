class Restoran {
  final String _restoranAdi;
  final String _restoranAciklama;
  final String _restoranResim;
  get restoranAdi => this._restoranAdi;

  get restoranAciklama => this._restoranAciklama;

  get restoranResim => this._restoranResim;

  Restoran(this._restoranAdi, this._restoranAciklama, this._restoranResim);

  @override
  String toString() {
    return '$_restoranAdi - $_restoranResim';
  }
}
