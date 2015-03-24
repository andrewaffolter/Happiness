//
//  HappinessViewController.swift
//  Happiness
//
//  Created by Andrew Affolter on 3/21/15.
//  Copyright (c) 2015 Andrew Affolter. All rights reserved.
//

import UIKit

class HappinessViewController: UIViewController, FaceViewDataSource
{

    @IBOutlet weak var faceView: FaceView!{
        didSet{
            faceView.dataSource = self
        }
    }
    
    //model
    var happiness: Int = 100 { //0 = very sad, 100 = ecstatic
        didSet{
            happiness = min(max(happiness,0),100)
            println("happiness = \(happiness)")
            updateUI()
        }
    }
    
    func updateUI(){
        faceView.setNeedsDisplay()
    }
    
    func smilinessForFaceView(sender: FaceView) -> Double? {
        return Double(happiness-50)/50
    }

}
