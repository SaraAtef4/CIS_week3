void problem4(){

  List<int>a = [0];
  List<int>b = [1, 2, 3, 4, 8, 9, 10, 11, 12];
  Set<int> common={};
  for(int numA in a){
    for(int numB in b){
      if(numB==numA){
        common.add(numB);
      }
    }
  }
  /// another way //////////
  // List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  // List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  // Set<int> setA = a.toSet();
  // Set<int> setB = b.toSet();
  // Set<int> common = setA.intersection(setB);

  if(common.isNotEmpty){
    print('The common numbers are: $common');
  }
  else{
    print('There is no common numbers');
  }
}
