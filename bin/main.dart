// Write a function to merge two sorted lists.
// The output should be a sorted list as well.

void main() {
List a = [1,3,4,5,7,];
List b = [0,2,4,6,8];
print(mergeList(a, b));
 print('HEY');
}
//Ascending Order
List mergeList(List list1, List list2){
 int listLength;
 List small = list1.length < list2.length
     ? list1 : list2;
 List big = list1.length > list2.length
     ? list1 : list2;
 if(list1.length < list2.length){
  small = list1;
  big = list2;
 }
 else if(list1.length > list2.length){
  small = list2;
  big = list1;
 }
 else{
  small = list1;
  big = list2;
 }

 listLength = small.length;
 List result = [];
 for(int i = 0; i < listLength; i++){
  print(i);
  print(small[i]);
  if(small[i] < big[0]){
   result.addAll([small[i], big[0]]);
   big.removeAt(0);
  }
  else if(small[i] > big[0]){
   result.addAll([big[0], small[i]]);
   big.removeAt(0);
  }
  else {
   result.addAll([big[0], small[i]]);
   big.removeAt(0);
  }
 }
 if(big.isNotEmpty)result.addAll(big);
 return result;
}

