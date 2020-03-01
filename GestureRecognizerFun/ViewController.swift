//
//  ViewController.swift
//  GestureRecognizerFun
//
//  Created by Henry Noon on 01/03/2020.
//  Copyright © 2020 Henry Noon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        let numOfSquaresPerRow = 10
        
        let width = Int(view.frame.width)
        let squareWidth = width/numOfSquaresPerRow
        
        let height = Int(view.frame.height)
        
        let numOfVerticals = height/squareWidth
        
        for i in 0...numOfSquaresPerRow {
            for j in 0...numOfVerticals {
                let square = UIView()
                square.backgroundColor = randomColor()
                square.layer.borderWidth = 0.5
                square.layer.borderColor = UIColor.black.cgColor
                square.frame = CGRect(x: i*squareWidth, y: j*squareWidth, width: squareWidth, height: squareWidth)
                view.addSubview(square)
            }
        }
    }
 
    fileprivate func randomColor() -> UIColor {
        let redRandom = CGFloat(drand48())
        let greenRandom = CGFloat(drand48())
        let blueRandom = CGFloat(drand48())
        
        return UIColor(displayP3Red: redRandom, green: greenRandom, blue: blueRandom, alpha: 1)
    }
}

