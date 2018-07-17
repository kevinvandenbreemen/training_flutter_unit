
int doSomethingCool(bool doIt, int num){
  if(doIt){
    if(num % 2 == 0){
      return -1;
    }
    else{
      return 298;
    }
  }
  return 42;  //  User did not want to re-compute the answer to the ultimate question
}