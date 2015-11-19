import UIKit

class ViewController: UIViewController {//

    @IBOutlet weak var gestureName: UILabel
    
    @IBAction func singleTap(sender: AnyObject) {
        //showGestureName("Tap")
    }
    
    
    func showGestureName(name: String) {
        self.gestureName.text = name
        UIView.animateWithDuration(1.0,
            animations: { self.gestureName.alpha = 1.0 },
            completion: { (finished) -> Void in
                self.gestureName.alpha = 0
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }




}//