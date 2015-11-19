import UIKit

class ViewController: UIViewController {//

    
    @IBOutlet weak var gestureName: UILabel!
    @IBOutlet var singleTapRecognizer: UITapGestureRecognizer!
    
    @IBOutlet var doubleTapRecognizer: UITapGestureRecognizer!
    
    @IBAction func singleTap(sender: UITapGestureRecognizer) {
        //gestureName.text = "Single Tap"
        //gestureName.hidden = false
        showGestureName("Tap")
    }
    
    @IBAction func doubleTap(sender: AnyObject) {
        showGestureName("<0x001>")
        
    }
    
    func showGestureName(name: String) {
        self.gestureName.text = name
        UIView.animateWithDuration(0.2,
            animations: { self.gestureName.alpha = 1.0 },
            completion: { _ in
                UIView.animateWithDuration(1.0) { self.gestureName.alpha = 0 }
        })
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if motion == .MotionShake {
            showGestureName("Shake")
        }
    }
    
    override func canBecomeFirstResponder() -> Bool {
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        singleTapRecognizer.requireGestureRecognizerToFail(doubleTapRecognizer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    



}//