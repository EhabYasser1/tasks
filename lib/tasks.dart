



import 'dart:io';
import 'dart:math';


main(){
task10();
}

task10(){
  //ادخل اسامي من اليوزر وخزنها في ليست ولو اليوزر كتب كلمه end او exit او close يقف
  print("ادخل الاسماء ");
  List<String>list=[];
  while(true){
    String names = stdin.readLineSync()!;
    List<String>exitWords=["close","exit","end"];
if(exitWords.contains(names)){
  break;
}list.add(names);
  }
print(list);
}


task9(){
  //ليسته من الاسامي عاوزه يطبع اسم ويعدي اسم
  List<String> list = ["ehab","mohamed","ahmed","abdo","abdelrahman",];

  for(int i=0;i<list.length;i++)
    if(i%2==0) {
      print(list[i]);
    }
}


task8(){
  //برنامج بياخد 10 كلمات وبعد كدا يطبعهم ككلمه string
  List<String>words= [];
  for (int i = 0; i < 10; i++) {
    print("word ${i+1}");
    String word = stdin.readLineSync()!;
    words.add(word);
  }
  String x= words.join("");
  print(x);
}
task7(){
  // بياخد جمله وعاوز يمسح اي ارقام وعلامات مميزه ويسيب الكلمات بس
  print("enter words");
  String words = stdin.readLineSync()!;
  String x =words.replaceAll(RegExp("[0-9?~.,:]"), "");
  print(x);
}
task6(){
  //بياخد كلمه من اليوزر  ويقسمها لكلمات ويخزنها في ليست
  print("enter words");
  String words = stdin.readLineSync()!;
  List<String> list2= words.split("_");


  print(list2);
}
task5(){
  // بياخد حرف او 2 او 3 ويدور في ليست لو لقي كله بتبتدي ب الحروف الي دخلها بياخده يخزنها في ليست جديده
  print("ادخل حرف او عده احروف");
  String letters = stdin.readLineSync()!;
  List<String> list = ["ehab","mohamed","ahmed","abdo","abdelrahman",];
  List<String>list2=[];
  list.forEach((element) {
    if(element.startsWith(letters)){
      list2.add(element);}
  }
  );
  print(list2);
}
task4(){
  // 2 ميثود واحد بتطبع الارقام الزوجيه واخري الفرديه
  print("please entar First number");
  int number1 =int.tryParse(stdin.readLineSync()!)??0;
  print("please entar Second number");
  int number2 =int.tryParse(stdin.readLineSync()!)??0;
  print(evenNumbers(number1, number2));
  print(oddNumbers(number1, number2));

}

evenNumbers(int num1,int num2){
  for(int i = num1;i<=num2;i++){
    if(i%2==0){
      print(i);
    }
  }
}
oddNumbers(int num1,int num2){
  for(int i = num1;i<=num2;i++){
    if(i%2!=0){
      print(i);
    }
  }
}


task3(){
  // بياخد من اليوزر الايميل والباسورد وبيعمل تحقق عليهم
  for(int i =1;i<=3;i++) {
    print("enter email");
    String email = stdin.readLineSync()!;
    print("enter password");
    String password = stdin.readLineSync()!;
    if(i==3){
      print("انتهت جميع المحاولات");

    }
    else if (email.contains("@gmail.com") == false && password.length<7) {
      print("البريد الإلكتروني أو كلمة المرور غير صحيحة");
    } else if (password.length<7) {
      print("الباسورد يجب ان يكون اكبر من 7 ارقام ");
    } else if (email.contains("@gmail.com") == false) {
      print("الايميل  يجب ان يحتوي علي @gmail.com ");
    } else {
      print("تم التسجيل بنجاح ");
    }
  }
}



task2(){
  //لسته اسامي  افلام هيلف عليها باستخدام ال forEach ويخزن الي بيبتدي بh في لسته جديده
  List<String> movies = [
    'Harry Potter',
    'The Hobbit',
    'The Hunger Games',
    'Inception',
    'Halloween',
    'Spider-Man: Homecoming'
  ];
  List<String> list2= [];
  movies.forEach((element) {
    if (element.toLowerCase().startsWith("h")){
      list2.add(element);
    }
  });
  print("كل الافلام");
  print(movies);
  print(" افلام بتبدا بحرف H");
  print(list2);
}


task1(){

  List<String>list=["cat","dog","cow"];
  list.forEach((element) {
    print(element);
  });
}









class AtmAhly extends AccountOperation{
    double mybalance=1000;
   late double chargeNumber;
    late double withdrawNumber;

   @override
  getCharge() {
    return (mybalance+chargeNumber-10);
  }

  @override
  getWithdraw() {
    print("entar AMOUNT withdraw");
    int withdrawNumber=int.tryParse(stdin.readLineSync()!)??0;
    double x;
    return x= (mybalance-withdrawNumber-5);
  }

}



abstract class AccountOperation{

  getCharge();
  chosse(){
    print("1= charge");
    print("2= Withdraw");
   int chosse1= int.tryParse(stdin.readLineSync()!)??0;
     if(chosse1==1){
  getCharge();
     } else{
  getWithdraw();
     }
  }
  getWithdraw();
  getPrint(){
     print("blance aftar charge = ${getCharge()} And blance aftar Withdraw  = ${getWithdraw()}");
   }

}























// class Circle extends Shape{
//   late double radius;
//   @override
//   getArea() {
//     return pow(radius, 2)*pi;
//   }
//   @override
//   getMo7it() {
//     return 2*pi*radius;
//   }
//   }
// class Rectangel extends Shape{
//   late double width;
//   late double height;
//   @override
//   getArea() {
//     return 2*(width+height);
//   }
//   @override
//   getMo7it() {
//     return width*height;
//   }
// }
// abstract class Shape{
//   getArea();
//   getMo7it();
//   getPrint(){
//     print("Area = ${getArea()} And Mo7it = ${getMo7it()}");
//   }
// }