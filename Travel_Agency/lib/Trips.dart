import 'dart:io';

class Trip {
  int id;
  String location;
  int limit;
  String date;
  double price;
  //List<String>nam
//  int row = 3;
//  int col = 4;
//  var twoDList = List.generate(3, (i) => List(4), growable: false);
  var listTrip= List<Trip>();
  //Map<int,String>passengers;
  var passengers=List<String>(500);
//  Travel_Agency(int id, String location, int limit, String date, double price) {
//    this.id = id;
//    this.location = location;
//    this.limit = limit;
//    this.date = date;
//    this.price = price;
//  }
  //Trip();
  void AddTrip(int id, String location, int limit, String date, double price) {
    Trip t = new Trip();
    t.id = id;
    t.location = location;
    t.limit = limit;
    t.date = date;
    t.price = price;
    t.passengers=[];
    listTrip.add(t);

    //listTrip.insert(id, t);
  }

  void editTrip(int id,String location, int limit, String date, double price) {
    for (int i = 0; i < listTrip.length; i++) {
      //int limit = listTrip[i].limit;
      if (listTrip[i].id == id) {
        listTrip[i].location= location;
        listTrip[i].limit== limit;
        listTrip[i].date=date;
        listTrip[i].price=price;
      }
    }
  }

  void delete(int id) {
    for (int i = 0; i < listTrip.length; i++) {
      if (listTrip[i].id == id) {
        listTrip.removeAt(i);
      }
    }
  }
  void viewTrips(String date){
    for (int i = 0;i<listTrip.length; i++) {
      if(listTrip[i].date==date) {
        print(listTrip[i].toString());
      }
    }
  }

  String searchTrip(double price){
    for (int i = 0; i < listTrip.length; i++) {
      if (listTrip[i].price == price) {
        return listTrip[i].toString();
      }
    }
  }
  String reserve(int id,String name){

    for (int i = 0; i < listTrip.length; i++) {
      int limit = listTrip[i].limit;
      if (listTrip[i].id == id) {
        if(limit>=1) {
          listTrip[i].passengers.add(name);
          limit--;
          return "";
        }
      }

    }
//      passengers.putIfAbsent(id, () => 'four');

    return "There isn't place";
  }
  void lastTrips(){
    for (int i = listTrip.length-1; i >= listTrip.length-10&&i>=0; i--) {
      print(listTrip[i].toString());
    }
  }
  double disCount(int id){
    for (int i = 0; i < listTrip.length; i++) {
      if(listTrip[i].id==id){
        if(listTrip[i].price>=10000){
          print(listTrip[i].price*(20/100));
          return 0;
        }
      }
    }
    }

  void viewPassenger(){
    for(int i=0;i<listTrip.length;i++){
      //print(listTrip.length);
      //print(listTrip[i].passengers.length);
      print("[ The Trip to => "+listTrip[i].location+"   ,   Limit of Trip =  "+listTrip[i].limit.toString()
          +"  ,   Number Of passengers = "
          +(listTrip[i].passengers.length).toString()+"]\n");
      //print(listTrip[i].location);
      stdout.write('[');
      for(int s=0;s<listTrip[i].passengers.length;s++){

        stdout.write(listTrip[i].passengers[s]+"  ,  ");
      }
      stdout.write(']');
      print("");
    }
  }

  String toString(){
    return "id =$id  Location = $location  Limit = $limit   Date = $date  Price = $price ";
  }
}