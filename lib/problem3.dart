import 'dart:io';
import 'dart:math';
void problem3(){
  String lower='abcdefghijklmnopqrstuvwxyz';
  String upper='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  String digits='0123456789';
  String symbols='!@#%^&*(){}[]?|/~';
  String pasword='';
  String all=lower+upper+digits+symbols;
  int passLength =10;
  List<String> charsList= all.split('');
  Random random = Random();

  for(int i=0;i<passLength;i++){
    pasword +=charsList[random.nextInt(charsList.length)];
    
  }
  print('\n🔐 Your password is :\n   $pasword');
  print('if you like the password press 1️⃣ , if you want another one press 2️⃣');
      int? choice= int.tryParse(stdin.readLineSync()!);
      if (choice==1){
        return;
      }
      else if(choice==2){
        problem3();
      }else{
        print('❌ An invalid choice, Exiting...');
        return;
      }
}