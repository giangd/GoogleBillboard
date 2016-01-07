public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
int beginIndex = 2;
int endIndex = 12;
String digits = e.substring(beginIndex, endIndex);
double num = Double.parseDouble(digits);
Boolean firstOperation = false;

public void setup() {
}  

public void draw() {   
  while (!isPrime(num) && !firstOperation) {
    beginIndex++;
    endIndex++;
    digits = e.substring(beginIndex, endIndex);
    num = Double.parseDouble(digits);
    firstOperation = true;
  }
  while ( ) { //do the second operation to find 5 numbers and then stop looping

  }
}

public boolean isPrime(double num) {
  if (num < 2)
    return false;
  for (int i = 2; i <= Math.sqrt(num); i ++)
    if (num % i == 0)
      return false;
  return true;
}

public boolean isSum49(int num) {
	String sNum = Integer.toString(num);
	int sum = 0;

	for (int i = 0; i < sNum.length(); i++) {
    	int part = Integer.parseInt(sNum.substring(i, i+1));
    	sum += part;
	}
	
	if (sum == 49) 
		return true;
}
