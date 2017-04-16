/*:
 # Let's Build Blackjack
 
 If you're unfamiliar with the rules of Blackground, check [here](http://wizardofodds.com/games/blackjack/basics/).
 
 We are going to build our own version of blackjack. We'll start by building our deck of cards. A standard deck of cards has 4 unique suits and 13 unique ranks. 52 cards in total.
 */

/*:
 ## Suits

 We need an array to store the suits of our deck. The first suit has been added for you. If you can't remember, check [here](https://en.wikipedia.org/wiki/Standard_52-card_deck#Rank_and_color).
 
 - callout(Hint): Make sure to spell the suits correctly using lowercase letters.
 */

let suits: [String] = ["hearts"];

/*:
 ## Ranks
 
 We need an array to store the ranks of our deck. The first rank has been added for you. If you can't remember, check [here](https://en.wikipedia.org/wiki/Standard_52-card_deck#Rank_and_color).
 
 - callout(Hint): Make sure to spell the suits correctly using lowercase letters.
 */

let ranks: [String] = ["ace"];

/*:
 ## Embedded Loops
 
 When we put a `for` loop inside of another `for` loop, the inner loop will execute completely before the outer loop moves to the next item. Let's see how we can use loops inside of other loops.
 
 - callout(Hint): What type is `suit` and `rank`?
 */

for suit in suits
{
    for rank in ranks
    {
        // Use `print()` to print the name of each card as a human would say it.
        // For example, print("Ace of Diamonds");
    }
}


//: [Previous](@previous) | [Next](@next)




















/*:
 Don't worry about this code. It handles the display.
 */
import UIKit;
import XCPlayground;
var view = UIView(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: 450, height: 1895)));
view.backgroundColor = UIColor.lightGray;

layoutCards(suits: suits, ranks: ranks, cardWidth: 100, cardHeight: 145, container: view);

XCPlaygroundPage.currentPage.liveView = view;
