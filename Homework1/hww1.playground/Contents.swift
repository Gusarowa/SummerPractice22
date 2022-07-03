enum Year: Int {
    case Romance = 2000
    case Action = 2010
    case Science = 2020
}

enum BookType {
    case Romance
    case Action
    case Science
}

public struct Rack {
    let type: BookType
    let count : Int
}

public struct Floor {
    let floor: String
    let type: BookType
}

private struct Hall {
    let room: String
    let square: Int
    let count_seats: Int
}

protocol TakingBook {
    func takeBook()
}

protocol TakingNumber {
    func takeNumber()
}

class Human {
    var name: String = " "
    func sayHello(){
        print("Hello, my name is\(name)")
    }
}

class Visitor: Human, TakingBook {
    func takeBook() {
        print("I want to read books")
    }
}

class Administrator: Human {
    func Help(){
        print ("I am administrator, how can i help you?")
    }
}

class Garderobshik: Human,
TakingNumber {
    func takeNumber() {
        print("Take a number")
    }
}

class Cleaner: Human {
    func warning(){
        print("Be careful! Dont run!")
    }
}

