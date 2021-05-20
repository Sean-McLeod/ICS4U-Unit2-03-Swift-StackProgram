/* This is a class that pushes 
   and prints out elements.

   Sean McLeod
   2021/05/19
*/

class MrCoxallStack {
    var stackArray = [Int]()

    enum IntParsingError: Error {
        case overflow
        case invalidInput
    }

    func peekElement() -> Int {
        let size = self.stackArray.count
        if size <= 0 {
            return -1
        } else {
            let topElement = self.stackArray[size - 1]
            return topElement
        }
    }

    func popElement() -> Int {
        let size = self.stackArray.count
        if size <= 0 {
            return -1
        } else {
            let lastElement = self.stackArray.remove(at: size - 1)
            return lastElement
        }
    }

    func pushNumber(preElement: String) -> Int {
        do {
            guard let anElement = Int(preElement) else {
                throw IntParsingError.invalidInput
            }
            self.stackArray.append(anElement);
            return 1
        } catch {
            return -1
        }
    }

    func printStack() {
        let size = self.stackArray.count
        if size <= 0 {
            print("****no item****")
        } else {
            for item in 0..<size {
                print(self.stackArray[item])
            }
        }
    }
}
