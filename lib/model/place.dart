class Place {
  
  final PlaceType _type;
  final int _amount;
  final double _cost;

  Place(this._type, this._amount, this._cost);

  PlaceType get type => _type;
  int get amount => _amount;
  double get cost => _cost;

}

enum PlaceType {   
    SEAT,       
    E_CLASS,    
    COMP,      
    SV,
} 