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

    func area () -> Double {
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
