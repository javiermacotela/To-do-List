import UIKit

var toDoCtrl: ToDoController = ToDoController()

struct toDo {
    var name = "Un-Named"
    var desc = "Un-Described"
}

class ToDoController: NSObject {
    
    var toDoList = [toDo]()
    
    func addToDo(name: String, desc:String){
            toDoList.append(toDo(name: name, desc: desc))
    }
}
