//: [Previous](@previous)

/*:
 ## Card Deck
 
 To play Blackjack, we need a way to represent a deck of cards. We will use a class for that as well.

 - callout(Add this): Fix this initializer.
 */
class BlackjackDeck: Deck
{
    var cards: [Card] = [];
 
    init(cards: [Card])
    {
      // FIXME: How do you set the cards property using the cards paramter?
    }
}

/*:
 ## Creating Cards for our Deck
 
 The initialize for `BlackjackDeck` will expect an array of cards to hold. We will need to use our previous experience with loops to create all 52 cards using our `BlackjackCard` type.
 
 Use the suits array, ranks array, and embedded `for` loops on the first page of this lesson to see how to make every combination of card necessary to make a deck.

  * Important: A standard deck of cards has 4 suits, 13 ranks, and 52 cards.
 
 
  * Callout(Add this): Go back to the previous page and copy your `BlackjackCard` class to the lines below.
 */
// FIXME: Paste BlackjackCard class here

// FIXME: Paste suits array here

// FIXME: Paste ranks array here

var cards: [Card] = [];

for suit in suits
{
    for rank in ranks
    {
      // FIXME:
      // 1. Create a card object using the BlackjackCard class. Make sure to the initializer to set the rank and suit of the card.
      // 2. Append the card object to the cards array
    }
}

// Create a BlackjackDeck using the array of cards
var deck = BlackjackDeck(cards: cards);




















/*:
 Don't worry about this code. It handles the display.
 */
import UIKit;
import XCPlayground;
var view = UIView(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: 450, height: 1895)));
view.backgroundColor = UIColor.lightGray;

layoutDeck(deck: deck, cardWidth: 100, cardHeight: 145, container: view);

XCPlaygroundPage.currentPage.liveView = view;
