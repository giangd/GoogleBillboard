public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059921817413596629043572900334295260595630738132328627943490763233829880753195251019011573834187930702154089149934884167509244761460668082264800168477411853742345442437107539077744992069551702761838606261331384583000752044933826560297606737113200709328709127443747047230696977209310141692836819025515108";  
int beginIndex = 1;
int endIndex = 11;
String digits = e.substring(beginIndex, endIndex);
double num = Double.parseDouble(digits);\
boolean repeat = true;
int numsFound = 0;

public void setup() {
}  

public void draw() {   
  while (!isPrime(num) && repeat) {
    beginIndex++;
    endIndex++;
    digits = e.substring(beginIndex, endIndex);
    num = Double.parseDouble(digits);
  }
  if (repeat) {
  	repeat = false;
    println("First prime found: " + digits);
    beginIndex = 1;
	endIndex = 11;
  }

  while (numsFound != 5) { //finds five numbers that digits add up to 49
  	beginIndex++;
    endIndex++;
    digits = e.substring(beginIndex, endIndex);
    if (isSum49(digits)) {
    	numsFound ++;
    	println(numsFound + ": " + digits);
    }
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

public boolean isSum49(String sNum) {
	int sum = 0;

	for (int i = 0; i < sNum.length(); i++) {
    	int part = Integer.parseInt(sNum.substring(i, i+1));
    	sum += part;
	}
	
	if (sum == 49) 
		return true;
	else
		return false; 
}
