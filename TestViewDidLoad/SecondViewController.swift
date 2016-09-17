//
//  SecondViewController.swift
//  TestViewDidLoad
//
//  Created by Alexandre Leite on 9/17/16.
//  Copyright © 2016 Alexandre Leite. All rights reserved.
//

import UIKit

class SecondViewController: BaseViewController {

    @IBOutlet weak var testView: UIView!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.trace(eventName: "Initialize with nib name and bundle")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.trace(eventName: "Initialize with coder")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.trace(eventName: "awake from nib")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.traceFrame(view: self.testView, message: "View did load")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.traceFrame(view: self.testView, message: "View did layout subviews")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.traceFrame(view: self.testView, message: "View did appear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.traceFrame(view: self.testView, message: "View will appear")
    }
    
    override func viewDidCalculateInitialFrame() {
        super.viewDidCalculateInitialFrame()
        self.traceFrame(view: self.testView, message: "View did calculate initial frame")
        self.testView.layer.cornerRadius = self.testView.frame.size.height / 4.0
        self.testView.clipsToBounds = true
    }
    
    @IBAction func onBackTap(_ sender: AnyObject) {
        self.trace(eventName: "Tapped back")
        self.dismiss(animated: true, completion: nil)
    }

}
