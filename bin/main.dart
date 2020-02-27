// Write a function to merge two sorted lists.
// The output should be a sorted list as well.

void main() {

 print('HEY');
}
//Ascending Order
List mergeList(List list1, List list2){
 int listLength = list1.length < list2.length
     ? list1.length : list2.length;
 List small = list1.length < list2.length
     ? list1 : list2;
 List big = list1.length > list2.length
     ? list1 : list2;
 List result;
 for(int i = 0; i < listLength; i++){
  if(small[i] < big[i]){
   result.addAll([small[i], big[i]]);
   big.removeAt(i);
  }
  else if(small[i] > big[i]){
   result.addAll([big[i], small[i]]);
   big.removeAt(i);
  }
  else {
   result.addAll([big[i], small[i]]);
   big.removeAt(i);
  }
 }
 result.addAll(big);
 return result;
}

