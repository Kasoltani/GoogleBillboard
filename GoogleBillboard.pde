public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup()  
{            
    first10();
}  
public void draw()  
{   
	//not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
	double num = dNum;
	if(num >=2){
		for(int i = 2; i <= Math.sqrt(num); i++){
			if(num % i == 0){
				return false;
			}
		}
	}else{
		return false;
	}
	return true;
} 

public String first10(){
	for(int i = 2; i < e.length(); i++){
    	if(isPrime(Double.parseDouble(e.substring(i,i+10)))){
    		System.out.print(e.substring(i,i+10));
    		return e.substring(i,i+10);
    	}
    }
    return "none";
}
