// Janet Weber : iOS App Dev I   : DUE 1/24/2016
//
// Assignment:
// Design a Class using the 4 step process that calculates 
// what year your 64th birthday will be in.

import UIKit
class Years {
    //*********************************************
    // Properties - to expand class add more here
    //*********************************************
    var born : Int  // birth year
    
    // ********************************************
    // Used in initialization of instance
    // ********************************************
    
    init(yearBorn : Int) {
        // Use date of birth passed in to initialize property
        born = yearBorn
    }
    
    init() {
        // If no DoB given, use current year to initialize (i.e. a newborn)
        // http://classictutorials.com/2015/07/how-to-get-current-day-month-and-year-in-nsdate-using-swift/
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components([.Day, .Month, .Year], fromDate: date)
        born =  components.year
    }
    
    // *******************************************
    // Methods
    // *******************************************
    func whenIm(age : Int) -> Int {  // This function returns the year a person will
        return self.born + age       // reach the age in the input parameter "age".
    }
}  // end of Year class

// **************************************************
// Main Program showing use of class Years
// **************************************************
var me = Years(yearBorn: 1964)      // create/init 3 instances of the class Years
var infant = Years()
var nate = Years(yearBorn: 1997)

nate.born                           // These here to confirm DoB's --------------> --------------> --------------> -------------->
infant.born
me.born
                                    // Display output
print("I was born in",me.born,"and I will be 64 years old in",me.whenIm(75))
print("An infant born today (",infant.born,") will be 64 years old in",infant.whenIm(64))
print("Nate was born in",nate.born,"and will be 64 years old in",nate.whenIm(64))