//: [Previous](@previous)

/*:
 ## Swift Class
 
 So far we've used Swift types `Int`, `Float`, `Bool`, and `String`. We've also used `UIKit` types `UILabel`, `UIButton`, `UISlider`, and many others. But what do we do if we want to define *our own* type? The Swift `class` construct allows us to do that.

 For our game, we need a way of holding all the variables to represent a single card. The `BlackjackCard` class below does that.

 When a variable belongs to a `class` we call it a `property`.

 - Important: Notice that the variables (properties) are not inside a `func`. They are inside a `class`.
 */

class BlackjackCard: Card
{
    var suit: String = "";
    var rank: String = "";
}

var twoOfHearts = BlackjackCard();
twoOfHearts.suit = "hearts";
twoOfHearts.rank = "ace";

//: - callout(Try it out): Try changing the `suit` and `rank` of the card variable above.

//: - callout(Check for Understanding): What types of `properties` did we define on our `ViewController` in previous apps?

//: - callout(Add this): Add a `property` called `value` to `BlackjackCard` that holds the value of the card. This is useful for telling which cards are greater than others. For example, a king is greater than a 10 always.

/*:
 ## Initializers
 
 When we declared the variable `twoOfHearts` above, we had to set the `suit`, `rank`, and `value` properties separately. As we add more properties this becomes more of a burden because it takes one line of code to set the value of each `property`.
 
 Swift has a shortcut for us: initializers. An initializer is a special function that takes input variables and provides initialization for our class. 
 
 We can add an initializer to a class by adding `init()` to our class.
 
 Here's an example using a new `Player` class:
 */

class Player
{
    var name: String;
    var score: Int;
    
    init(name: String)
    {
        self.name = name;
        // A player always starts the game with zero points.
        self.score = 0;
    }
}

//: - Important: Notice that `init()` does not use the `func` keyword like other functions we've seen before.
var bobby = Player(name: "Little Bobby Tables");

//: - callout(Add this): Add an `init` function to `BlackjackCard. The `init()` function should have two parameters, `suit` and `rank`. These parameters should use the same data type as the properties `suit` and `rank`. Use the parameters to set the values of the properties.




//: [Previous](@previous) | [Next](@next)




















/*:
 Don't worry about this code. It handles the display.
 */
import UIKit;
import XCPlayground;
var view = UIView(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: 450, height: 1895)));
view.backgroundColor = UIColor.lightGray;

layoutCard(card: twoOfHearts, cardWidth: 100, cardHeight: 145, container: view);

XCPlaygroundPage.currentPage.liveView = view;
//: [Next](@next)

