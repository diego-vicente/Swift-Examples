/* Function that computes the average of its parameters */

func averageOf (numbers: Float...) -> Float {
    var sum = 0.0, elements
    for number in numbers {
        sum += number
        elements++
    }
    return sum/elements
}

/* Example of a simple class */

class Shape {
    /* Variables */
    var numberOfSides = 0
    var name: String

     /* Initializer */
    init(name: String){
        self.name = name
        switch name {
            case "triangle":
                numberOfSides = 3
            case "square", "rectangle":
                numberOfSides = 4
            case "pentagon":
                numberOfSides = 5
            default:
                numberOfSides = 0
        }
    }

    /* Example of function */
    func simpleDescription() -> String {
        return "A shape with /(numberOfSides) sides"
    }
}

/* Example of subclasses */
class Circle: Shape {
    var radius = 0.0
    var name: String

    init(radius: Double, name: String){
        self.radius = radius
        self.name = name
    }

    func area() -> Double {
        return 6.28*radius
    }
}

class EquilateralTriangle: Shape {
    var sideLength = 0.0
    var name: String

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        self.name = name
    }

    var perimeter: Double {
        get {
            return 3.0*sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
}

/* Examples of enum */

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King

    func simpleDescription() -> String {
        switch self {
            case .Ace:
                return "ace"
            case .Jack:
                return "jack"
            case .Queen:
                return "queen"
            case .King:
                return "king"
            default:
                return String(self.toRaw())
        }
    }

    func comparedTo(Rank other) -> Rank {
        if (self.toRaw()<other.toRaw()){
            return other
        }
        else if (self.toRaw()>other.toRaw()){
            return self
        }
        else {
            println("Both cards are equal")
        }
    }
}

enum Suit: Int {
    case Spades = 1, Hearts, Diamonds, Clubs

    func simpleDescritption() -> String {
        switch self {
            case .Spades:
                return "spades"
            case .Hearts:
                return "hearts"
            case .Diamonds:
                return "diamonds"
            case .Clubs:
                return "clubs"
        }
    }

    func color() - String {
        switch self {
        case .Spades, .Clubs:
            return "black"
        case .Hearts, .Diamonds:
            return "red"
    }
}

/* Example of struct */
struct Card {
    var rank: Rank
    var suit: Suit

    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }

    func initializeDeck() -> Card[]{
        let deck: Card = [:]
        for i in 1...4 {
            for j in 1...13 {
                let card = Card(rank: .fromRaw(j), suit: .fromRaw(i))
            }
        return deck
    }
}
