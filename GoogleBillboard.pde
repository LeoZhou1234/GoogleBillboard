public final static String e = "27182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  

public void setup()  {
  System.out.println("Soln to prob 1: " + problem1());
  System.out.println("Soln to prob 2: " + problem2());
}  

public String problem1() {
  boolean prime = false;
  int index = 0;
  while (!prime) {
    prime = isPrime(getDigits(index));
    index++;
  }
  return(e.substring(index-1, index+9));
}

public String problem2() {
  //each set of consecutive digits sums to 49
  //therefore f(5) is the fifth set of 10 consecutive digits that sums to 49
  int n = 0;
  int index = 0;
  while (n < 5) {
    if (sum(index) == 49) n++;
    index++;
  }
  return(e.substring(index-1, index+9));
}

public boolean isPrime(double dNum) {   
    for (int i = 2; i <= (int)(Math.sqrt(dNum)); i++) {
      if (dNum%i == 0) return false;
    }
    return true;
}

public double getDigits(int index) {
  String digitString = e.substring(index, index+10);
  return Double.parseDouble(digitString);
}
  
public int sum(int index) {
  String digitString = e.substring(index, index+10);
  int sum = 0;
  for (int i = 0; i < 10; i++) {
    sum += Integer.parseInt(String.valueOf(digitString.charAt(i)));
  }
  return sum;
}
