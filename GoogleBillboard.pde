public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
int beginIndex = 2;
int endIndex = 12;
String digits = e.substring(beginIndex,endIndex);
double num = Double.parseDouble(digits);

public void setup() {}  

public void draw() {   
	while (!isPrime(num)) {
		beginIndex++;
		endIndex++;
		digits = e.substring(beginIndex,endIndex);
		num = Double.parseDouble(digits);
	}
	println("First prime found: " + digits);
	noLoop();
}

public boolean isPrime(double num) {
  if (num < 2)
    return false;
  for (int i = 2; i <= Math.sqrt(num); i ++)
    if (num % i == 0)
      return false;
  return true;
}
