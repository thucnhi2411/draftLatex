//
//  ViewController.swift
//  draftLatex
//
//  Created by THUC NHI on 10/8/16.
//  Copyright © 2016 THUC-NHI LE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var latexView: SJLatexView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        latexView.layer.borderColor = UIColor.grayColor().CGColor
        latexView.layer.borderWidth = 2.0
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        let latexString = "When $a \\ne 0$, there are two solutions to $ax^2 + bx + c = 0$ and they are$$x = {-b \\pm \\sqrt{b^2-4ac} \\over 2a}.$$"
        latexView.loadLatexString(latexString)
    }
}

