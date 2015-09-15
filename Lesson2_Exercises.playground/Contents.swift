import UIKit

//: # Lesson 2 Exercises
//: ## Optionals
//: ### Exercise 1
//: When retrieving a value from a dictionary, Swift returns an optional.
//:
//: 1a) The variable, director, is an optional type. Its value cannot be used until it is unwrapped. Use `if let` to carefully unwrap the value returned by `moviesDict[movie]`
var director: String?

var moviesDict:Dictionary = [ "Star Wars":"George Lucas", "Point Break":"Kathryn Bigelow"]
var movie = "PointBreak"

director = moviesDict[movie]


if let director = director {
    println(director)
} else {
    println("value is nil")
}

//: 1b) Test your code by inserting different values for the variable `movie`.
// done

//: ### Exercise 2
//: The LoginViewController class below needs a UITextField to hold a user's name. Declare a variable for this text field as a property of the class LoginViewController. Keep in mind that the textfield property will not be initialized until after the view controller is constructed.
class LoginViewController: UIViewController {
    var textField: UITextField?
}

//: ### Exercise 3
//: The toInt() method of the Swift String class returns an optional of type Int?.
//:
//: 3a) Finish the code below by safely unwrapping the constant, `number`.
var numericalString = "3"
var number: Int?
number = numericalString.toInt()
//TODO: Unwrap number to make the following print statement more readable.
if let number = number {
    println("\(number) is the magic number.")
} else {
    println("That number wasn't magic.")
}

//: 3b) Change the value of numericalString to "three" and execute the playground again.
var numericalString2 = "three"
var number2: Int?
number2 = numericalString2.toInt()

if let number2 = number2 {
    println("\(number2) is the magic number.")
} else {
    println("That number wasn't magic or even a number.")
}
//: ### Exercise 4
//: The class UIViewController has a property called tabBarController.  The tabBarController property is an optional of type UITabBarController?. The tabBarController itself holds a tabBar as a property. Complete the code below by filling in the appropriate use of optional chaining to access the tab bar property.

var viewController = UIViewController()
if let tabBar = viewController.tabBarController?.tabBar {
    println("Here's the tab bar.")
} else {
    println("No tab bar controller found.")
}
//: ### Exercise 5
//: Below is a dictionary of paintings and artists.
//:
//: 5a) The variable, artist, is an optional type. Its value cannot be used until it is unwrapped. Use `if let` to carefully unwrap the value returned by `paintingDict[painting]`.

var paintingDict:Dictionary = [ "Guernica":"Picasso", "Mona Lisa": "da Vinci", "No. 5": "Pollock"]
var painting = "Guernica"
var artist: String?
artist = paintingDict[painting]

if let artist = artist {
    println("The artist is \(artist)")
} else {
    println("There is no artist")
}

//: 5b) Test your code by inserting different values for the variable `painting`.
//done
//: ### Exercise 6
//: Set the width of the cancel button below.  Notice that the cancelButton variable is declared as an implicitly unwrapped optional.
var anotherViewController = UIViewController()
var cancelButton: UIBarButtonItem!
cancelButton = UIBarButtonItem()
// TODO: Set the width of the cancel button.
cancelButton.width = 3
println(cancelButton.width)
//: ### Exercise 7
//: The class UIViewController has a property called parentViewController.  The parentViewController property is an optional of type UIViewController?. We can't always be sure that a given view controller has a parentViewController.  Safely unwrap the parentViewController property below using if let.
var childViewController = UIViewController()
// TODO: Safely unwrap childViewController.parentViewController
if let child = childViewController as? parentViewController {
    println("OK")
} else {
    println("no")
}
