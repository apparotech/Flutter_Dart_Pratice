
class Tourist {

  List<String> _flights = ["patna to Goa" , "Surat to Mumbai", "Punjab to Muz"];
  List<String> _hotel = ['TajHotel', "SurajHotel", "RajHotel"];


  void SearchFlights(String Destination) {
    bool found = false;
    for(String flight in _flights) {
      if(flight.toLowerCase().contains(Destination.toLowerCase())) {
        print("yes Aviable $Destination");
        found= true;
      }
    }
    if(!found) {
      print("Not found");
    }
  }

  void SearchHotel(String HotelName) {
    bool found = false;

    for(String hotel in _hotel) {
      if(hotel.toLowerCase().contains(HotelName.toLowerCase())) {
        print("yes availsbe found $HotelName");
          found = true;
      }
    }
    if(!found) {
      print("not found Hotel");
    }
  }

  void Book(String name, String type) {
    print("Book by this name $name");
    print("this is $type");
  }
  void Cancel(String name, String type) {
    print("Caccel this name $name");
    print("type of cancel is $type");
  }

}


void main () {
String d = "patna to Goa";
String d2 = "AmitPur";
String h ="TajHotel";
String h2 = "gya";

String type = 'Hotel';
String name = "suraj";

Tourist t = Tourist();


t.SearchHotel(h);
t.SearchHotel(h2);


}