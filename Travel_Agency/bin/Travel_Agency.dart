import 'dart:io';

import 'package:Travel_Agency/Travel_Agency.dart' as Travel_Agency;
import 'package:Travel_Agency/Trips.dart';

void main(List<String> arguments) {
  Trip a = new Trip();
  print("Click : ");
  print("0 => Close program");
  print("1 => Add Trip");
  print("2 => Edit Trip");
  print("3 => Delete Trip");
  print("4 => View Trips");
  print("5 => Search Trip");
  print("6 => reserve");
  print("7 => lastTrips");
  print("8 => viewPassenger");
  print("9 => Show Price After discount");
  int funNum = int.parse(stdin.readLineSync());
  for(int i=0;i==0;){

    switch (funNum) {
      case 0:
        {
          return;
        }break;
      case 1:
        {
          print('\nThe function to be executed ===> addTrip()\n');
          print('Enter id Of Trip');
          int id = int.parse(stdin.readLineSync());
          print('Enter Location Of Trip');
          String location = stdin.readLineSync();
          print('Enter Limit Of Trip');
          int limit = int.parse(stdin.readLineSync());
          print('Enter Date Of Trip');
          String date = stdin.readLineSync();
          print('Enter Price Of Trip');
          double price = double.parse(stdin.readLineSync());
          a.AddTrip(id,location,limit,date,price);
          funNum=choose('addTrip');
        }
        break;
      case 2:
        {
          print('\nThe function to be executed ===> editTrip()\n');
          print('Enter id Of Trip');
          int id = int.parse(stdin.readLineSync());
          print('Enter Location Of Trip');
          String location = stdin.readLineSync();
          print('Enter Limit Of Trip');
          int limit = int.parse(stdin.readLineSync());
          print('Enter Date Of Trip');
          String date = stdin.readLineSync();
          print('Enter Price Of Trip');
          double price = double.parse(stdin.readLineSync());
          a.editTrip(id,location,limit,date,price);
          funNum=choose('editrip');
        }
        break;
      case 3:
        {
          print('\nThe function to be executed ===> deleteTrip()\n');
          print('Enter id Of Trip that you want remove ');
          int id = int.parse(stdin.readLineSync());
          a.delete(id);
          funNum=choose('deleteTrip');
        }
        break;
      case 4:
        {
          print('\nThe function to be executed ===> viewTrips()\n');
          print('Enter Date Of Trip');
          String date = stdin.readLineSync();
          a.viewTrips(date);
          funNum=choose('viewTrips');
        }
        break;
      case 5:
        {
          print('\nThe function to be executed ===> searchTrips()\n');
          print('Enter Price Of Trip');
          double price = double.parse(stdin.readLineSync());
          a.searchTrip(price);
          funNum=choose('searchTrips');
        }
        break;
      case 6:
        {
          print('\nThe function to be executed ===> reverse()\n');
          print('Enter id Of Trip that you want reserve ');
          int id = int.parse(stdin.readLineSync());
          print('Enter your name');
          String name = stdin.readLineSync();
          a.reserve(id,name);
          funNum=choose('reserve');
        }
        break;
      case 7:
        {
          print('\nThe function to be executed ===> latestTrips()\n');
          a.lastTrips();
          funNum=choose('lastTrips');
        }
        break;
      case 8:
        {
          print('\nThe function to be executed ===> viewPassengers()\n');
          a.viewPassenger();
          funNum=choose('viewPassenger');
        }break;
      case 9:
        {
          print('Enter id Of Trip that you want to know price it After discount ');
          int id = int.parse(stdin.readLineSync());
          a.disCount(id);
          funNum=choose('disCount');
        }break;
      default:
        {
          print('\nEnter Another Number From List\n');
          funNum = int.parse(stdin.readLineSync());
        }
        break;
    }

  }
  }
  int choose(String nameFunction){
  print("\nDo you want to another $nameFunction ");
  print('If you want to it ');
  print('(Enter yes) Else (Enter No) ');
  String d = stdin.readLineSync();
  d=d.toLowerCase();
  if(d=="yes"){
    switch(nameFunction){
      case 'addTrip': return 1;
      case 'editTrip': return 2;
      case 'deleteTrip': return 3;
      case 'viewTrips': return 4;
      case 'searchTrips': return 5;
      case 'reserve': return 6;
      case 'lastTrips': return 7;
      case 'viewPassenger': return 8;
      case 'disCount': return 9;
      default:
        print("\nlook to list and choose corect\n");
        return 0;
    }
  }
  // else{
  //   choose(nameFunction);
  // }
  }
  //print("6 => AddTrip");
  // a.AddTrip(1, 'Alex', 4, '4/5/2020', 200);
  // a.reserve(1, 'Ali');
  // a.reserve(1, 'saffffsd');
  // a.AddTrip(2, 'Cairo', 3, '4/5/2020', 200);
  // a.viewTrips('4/5/2020');
  // a.reserve(1, 'Amr');
  // a.reserve(2, 'Omer');
  // a.reserve(2, 'Ahmed');
  // a.viewPassenger();
//}
