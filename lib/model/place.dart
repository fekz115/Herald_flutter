class Place {
  
  final PlaceType type;
  final int amount;
  final double cost;

  Place(this.type, this.amount, this.cost);

}

enum PlaceType {   
    SEAT,       
    E_CLASS,    
    COMP,      
    SV,
    NONE,
} 