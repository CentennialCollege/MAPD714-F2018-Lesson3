
import UIKit

class ViewController: UIViewController {
    // Instance Variables
    var hasDecimal:Bool = false
    
    
    // IBOutlets
    @IBOutlet weak var resultArea: UITextField!
    
    
    // lifecycle functions
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    // IBActions

    @IBAction func onNumberButtonPress(_ sender: UIButton) {
        
        if(resultArea.text == "0") {
            
            if(sender.tag != -1) {
                resultArea.text = ""
                
            }
            else {
                if(hasDecimal) {
                    resultArea.text = "0"
                }
            }
            
        }
        
        if(sender.tag == -1) {
            if(!hasDecimal) {
                resultArea.text?.append(".")
                hasDecimal = true
            }
        }
        else {
          resultArea.text?.append(String(sender.tag))
        }
        
    }
    
}

