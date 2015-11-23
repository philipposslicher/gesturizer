/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var gestureName: UILabel!
    @IBOutlet var singleTapRecognizer: UITapGestureRecognizer!
    @IBOutlet var doubleTapRecognizer: UITapGestureRecognizer!
    @IBOutlet var tripleTapRecognizer: UITapGestureRecognizer!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        singleTapRecognizer.requireGestureRecognizerToFail(doubleTapRecognizer)
        doubleTapRecognizer.requireGestureRecognizerToFail(tripleTapRecognizer)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func singleTap(sender: UITapGestureRecognizer){
        showGestureName("Hit me baby, one more time")
    }
    
    @IBAction func doubleTap(sender: UITapGestureRecognizer) {
        showGestureName("Double Cheeseburger")
    }

    @IBAction func fiveTap(sender: UITapGestureRecognizer) {
        showGestureName("Slow down there, buck-a-roo")
    }
    @IBAction func twoFingerDoubleTap(sender: UITapGestureRecognizer) {
        showGestureName("Two Finger Double Tap")
    }
    @IBAction func fourTap(sender: UITapGestureRecognizer) {
        showGestureName("Cheese🧀")
    }
    @IBAction func rotation(sender: UIRotationGestureRecognizer) {
        if sender.state == .Ended {
            showGestureName("🎶It Off🎶")
        }
    }

    @IBAction func pinch(sender: UIPinchGestureRecognizer) {
    showGestureName("Pinch")
    }



    
    
    func showGestureName(name: String) {
        gestureName.text = name
        UIView.animateWithDuration(1.0,
            animations: { self.gestureName.alpha = 1.0 },
            completion: { _ in
                UIView.animateWithDuration(1.0) { self.gestureName.alpha = 0 }
        })
    }

    }


