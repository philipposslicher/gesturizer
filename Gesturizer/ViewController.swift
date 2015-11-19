import UIKit

class ViewController: UIViewController {//

    @IBOutlet weak var gestureName: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func singleTap(sender: UITapGestureRecognizer) {
        //showGestureName("Tap")
    }

    
    /*
    func showGestureName(name: String) {
        gestureName.text = name
        gestureName.hidden = false
        UIView.animateWithDuration(1.0,
            animations: { self.gestureName.alpha = 1.0 },
            completion: { _ in
                UIView.animateWithDuration(1.0) { self.gestureName.alpha = 0 }
        })
    }
    */

}//