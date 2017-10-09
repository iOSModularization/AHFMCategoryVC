//
//  ViewController.swift
//  AHFMCategoryVC_Example
//
//  Created by Andy Tong on 10/8/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

import AHFMCategoryVCServices

import AHServiceRouter
import AHFMKeywordVCManager
import AHFMCategoryVCManager

public class ViewController: UIViewController {
    public override func viewDidLoad() {
        super.viewDidLoad()
        AHFMKeywordVCManager.activate()
        AHFMCategoryVCManager.activate()
    }
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let navVC = self.navigationController else {
            return
        }
        let type: AHServiceNavigationType = .push(navVC: navVC)
        AHServiceRouter.navigateVC(AHFMCategoryVCServices.service, taskName: AHFMCategoryVCServices.taskNavigation, userInfo: [:], type: type, completion: nil)
    }
    
}

