protocol HomeworkService {
    // Функция деления с остатком, должна вернуть в первой части результат деления, во второй части остаток.
    func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int)

    // Функция должна вернуть числа фибоначчи.
    func fibonacci(n: Int) -> [Int]

    // Функция должна выполнить сортировку пузырьком.
    func sort(rawArray: [Int]) -> [Int]

    // Функция должна преобразовать массив строк в массив первых символов строки.
    func firstLetter(strings: [String]) -> [Character]
    
}

struct Homework1: HomeworkService {
    
    func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int) {
        return (x/y, x%y)
    }
    
    func fibonacci(n: Int) -> [Int] {
        if n == 0 {
            return [0]
        }
        if n == 1 {
            return [1]
        }
        else{
            var result = [0,1]
            
            for i in  2...n {
                result.append(result[i-1] + result[i-2])
            }
            return result
        }
    }
    

    func sort(rawArray: [Int]) -> [Int] {
        var rawArray = [5, 10, 3, 7, 1, 9, 6]
        for i in 0..<rawArray.count {
            let index = (rawArray.count - 1) - i
            for j in 0..<index {
                let number = rawArray[j]
                let nextNumber = rawArray[j + 1]
                if number > nextNumber {
                    rawArray[j] = nextNumber
                    rawArray[j + 1] = number
                    }
                }
            }
            return rawArray
        }
    
    
    func firstLetter(strings: [String]) -> [Character] {
        var result = [Character]()
        for string in strings {
            if !string.isEmpty{
                result.append(string.first!)
            }
        }
       return result
    }
}








