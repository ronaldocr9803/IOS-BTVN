//
//  ViewController.swift
//  BTVN2.1
//
//  Created by APPLE on 11/19/1 R.
//  Copyright © 1 Reiwa APPLE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightConstraintlbl: NSLayoutConstraint!
    
    @IBOutlet weak var lblDemo: UILabel!
    
    @IBOutlet weak var btnDemo: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    var initialCenter = CGPoint()  // The initial center point of the view.
    
    @IBAction func zoomPinch(_ gestureRecognizer: UIPinchGestureRecognizer) {
        guard gestureRecognizer.view != nil else {return}
        if gestureRecognizer.state == .began || gestureRecognizer.state == .changed {
            gestureRecognizer.view?.transform = (gestureRecognizer.view?.transform.scaledBy(x: gestureRecognizer.scale, y: gestureRecognizer.scale))!
            gestureRecognizer.scale = 1.0
        }
    }
    @IBAction func movePan(_ gestureRecognizer: UIPanGestureRecognizer) {
        guard gestureRecognizer.view != nil else {return}
        let piece = gestureRecognizer.view!
        // Get the changes in the X and Y directions relative to
        // the superview's coordinate space.
        let translation = gestureRecognizer.translation(in: piece.superview)
        if gestureRecognizer.state == .began {
            // Save the view's original position.
            self.initialCenter = piece.center
        }
        // Update the position for the .began, .changed, and .ended states
        if gestureRecognizer.state != .cancelled {
            // Add the X and Y translation to the view's original position.
            let newCenter = CGPoint(x: initialCenter.x + translation.x, y: initialCenter.y + translation.y)
            piece.center = newCenter
        }
        else {
            // On cancellation, return the piece to its original location.
            piece.center = initialCenter
    }
    }
    @IBAction func touchDemo(_ sender: Any) {
        heightConstraintlbl.constant=heightConstraintlbl.constant * 2
        self.view.layoutIfNeeded()

        
        //lblDemo.backgroundColor=UIColor.blue
        

    }
   
    
    
//    @IBAction func handlePan(recognizer:UIPanGestureRecognizer) {
//        let translation = recognizer.translation(in: self.view)
//        if let view = recognizer.view {
//            view.center = CGPoint(x:view.center.x + translation.x,
//                                  y:view.center.y + translation.y)
//        }
//        recognizer.setTranslation(CGPoint.zero, in: self.view)
//    }



}

