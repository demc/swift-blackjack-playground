//: [Previous](@previous)

class BlackjackCard: Card
{
    var suit: String = "";
    var rank: String = "";
}

var twoOfHearts = BlackjackCard();
twoOfHearts.suit = "hearts";
twoOfHearts.rank = "2";


import UIKit;
import XCPlayground;
var view = UIView(frame: CGRect(origin: CGPointZero, size: CGSize(width: 450, height: 1895)));
view.backgroundColor = UIColor.lightGrayColor();

layoutCard(twoOfHearts, cardWidth: 100, cardHeight: 145, container: view);

XCPlaygroundPage.currentPage.liveView = view;
//: [Next](@next)

