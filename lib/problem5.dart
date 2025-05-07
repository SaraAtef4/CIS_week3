void problem5(){
  List<int>a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List<int> evenNums=[];
  for(int num in a){
    if(num%2==0){
      evenNums.add(num);
    }

  }
print('Even elements are: $evenNums');
}