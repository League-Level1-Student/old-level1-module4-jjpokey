
public class RaceRuners {
public static void main(String[] args) {
	Athelete a = new Athelete("Joe", 1);
    Athelete b = new Athelete("Jane", 2);
    Athelete c = new Athelete("John", 4);
    
    System.out.println(a.bibNumber);
    System.out.println(a.name);
    System.out.println(b.bibNumber);
    System.out.println(b.name);
    System.out.println(c.bibNumber);
    System.out.println(c.name);
    System.out.println(Athelete.raceLocation);
    
}
}
