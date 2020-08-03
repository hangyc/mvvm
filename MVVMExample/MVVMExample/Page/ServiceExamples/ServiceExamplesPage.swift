//
//  ServiceExamplesPage.swift
//  MVVMExample
//
//  Created by pham.minh.tien on 5/14/20.
//  Copyright © 2020 Sun*. All rights reserved.
//

import UIKit
import MVVM
import RxCocoa
import RxSwift
import Action

class ServiceExamplesPage: TableOfContentsPage {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    override func initialize() {
        super.initialize()
        DependencyManager.shared.registerService(Factory<MailService> { MailService() })
        DependencyManager.shared.registerService(Factory<AlertService> { AlertService() })
        DependencyManager.shared.registerService(Factory<ShareService> { ShareService() })
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
