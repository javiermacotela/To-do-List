
import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tblToDo: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnAddNewToDo_Click(sender:UIButton){
        self.view.endEditing(true)
        self.tabBarController?.selectedIndex = 1;
    }
    override func viewWillAppear(animated: Bool) {
        tblToDo.reloadData();
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if(editingStyle == UITableViewCellEditingStyle.Delete){
            toDoCtrl.toDoList.removeAtIndex(indexPath.row)
            tblToDo.reloadData();
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoCtrl.toDoList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->
        UITableViewCell {
        
            let cell: UITableViewCell = UITableViewCell(style : UITableViewCellStyle.Subtitle,  reuseIdentifier: "test")
            
            cell.textLabel?.text = toDoCtrl.toDoList[indexPath.row].name
            cell.detailTextLabel!.text = toDoCtrl.toDoList[indexPath.row].desc
            
            return cell
    }
    
    


}

