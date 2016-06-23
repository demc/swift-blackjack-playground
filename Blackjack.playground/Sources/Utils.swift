import UIKit;

public protocol Card
{
    var suit: String { get set }
    var rank: String { get set }
}

public protocol Deck
{
    var cards: [Card] { get set }
}

public protocol Shoe
{
    var cards: [Card] { get set }
}

public func layoutCards(suits: [String], ranks: [String], cardWidth: Int, cardHeight: Int, container: UIView)
{
    for (sIndex, suit) in suits.enumerate()
    {
        for (rIndex, rank) in ranks.enumerate()
        {
            let name = "\(rank)_of_\(suit)";
            let image = UIImage(named: name);
            
            let xPadding = 10 + sIndex * 10;
            let yPadding = 10 + rIndex * 10;
            
            let frame = CGRect(x: cardWidth * sIndex + xPadding, y: cardHeight * rIndex + yPadding, width: cardWidth, height: cardHeight);
            let imageView = UIImageView(frame: frame);
            
            imageView.image = image;
            
            container.addSubview(imageView);
        }
    }
}

public func layoutDeck(deck: Deck, cardWidth: Int, cardHeight: Int, container: UIView)
{
    var rowIndex = 0;
    
    for (index, card) in deck.cards.enumerate()
    {
        let columnIndex = index % 4;
        
        if index > 3 && columnIndex == 0
        {
            rowIndex = rowIndex + 1;
        }
        
        let name = "\(card.rank)_of_\(card.suit)";
        let image = UIImage(named: name);
        print(name);
        let xPadding = 10 + columnIndex * 10;
        let yPadding = 10 + rowIndex * 10;
            
        let frame = CGRect(x: cardWidth * columnIndex + xPadding, y: cardHeight * rowIndex + yPadding, width: cardWidth, height: cardHeight);
        let imageView = UIImageView(frame: frame);
            
        imageView.image = image;
            
        container.addSubview(imageView);
        

    }
}

public func layoutCard(card: Card, cardWidth: Int, cardHeight: Int, container: UIView)
{
    let name = "\(card.rank)_of_\(card.suit)";
    let image = UIImage(named: name);
    
    let xPadding = 10;
    let yPadding = 10;
    
    let frame = CGRect(x: cardWidth + xPadding, y: cardHeight + yPadding, width: cardWidth, height: cardHeight);
    let imageView = UIImageView(frame: frame);
 
    imageView.image = image;
    
    container.addSubview(imageView);
}