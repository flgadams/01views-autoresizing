//
//  ViewController.swift
//  01views-autoresizing
//
//  Created by Glenn Adams on 6/20/22.
//

import UIKit

class RootViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .cyan
    
        let v1 = UIView(frame: CGRect(x: 100, y: 111, width: 132, height: 194))
        v1.backgroundColor = UIColor.systemRed
        let v2 = UIView(frame: CGRect(x: 0, y: 0, width: 132, height: 10))
        v2.backgroundColor = UIColor.systemGreen
        let v1b = v1.bounds
        let v3 = UIView(frame: CGRect(x: v1b.width-20, y: v1b.height-20, width: 20, height: 20))
        
        v3.backgroundColor = UIColor.systemBlue
        self.view.addSubview(v1)
        v1.addSubview(v2)
        v1.addSubview(v3)
        //view horiz margiins inflexible
        v2.autoresizingMask = .flexibleWidth
        // view height inflexible, view width inflexible
        v3.autoresizingMask = [ .flexibleTopMargin, .flexibleLeftMargin ]

        v1.bounds.size.width += 40
        v1.bounds.size.height += 50
        

    }


}

