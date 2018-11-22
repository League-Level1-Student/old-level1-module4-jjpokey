public class Athelete {

     static int nextBibNumber = 0;
     static String raceLocation = "New York";
     static String raceStartTime = "9.00am";

     String name;
     int speed;
     int bibNumber;

Athelete (String name, int speed){
     this.name = name;
     this.speed = speed;
     bibNumber = nextBibNumber + 1;
     nextBibNumber = bibNumber;
     
}


     //create two athletes 
	
	//print their names, bibNumbers, and the location of their race. }

}
