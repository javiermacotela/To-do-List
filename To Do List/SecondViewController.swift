import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet var txtToDo: UITextField!
    @IBOutlet var txtDesc: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //Events
    @IBAction func btnAddToDo_Click(sender:UIButton){
        toDoCtrl.addToDo(txtToDo.text!, desc: txtDesc.text!)
        self.view.endEditing(true)
        txtToDo.text = ""
        txtDesc.text = ""
        self.tabBarController?.selectedIndex = 0;
    }
    
    @IBAction func btnCancelToDo_Click(sender:UIButton){
        self.view.endEditing(true)
        txtToDo.text = ""
        txtDesc.text = ""
        self.tabBarController?.selectedIndex = 0;
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        
        textField.resignFirstResponder();
        return true
    }
}

