//
//  SwiftPrint.swift
//  testdelegate
//
//  Created by kangyu on 2020/6/26.
//  Copyright © 2020 kangyu. All rights reserved.
//

import Foundation
import UIKit

class  SwiftPrint: UIViewController, PrintProtocolDelegate {
    var delegate:PrintProtocolDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate?=self
    }
    
    func processCompleted() {
        print("Swift Process Completed")
    }
}
