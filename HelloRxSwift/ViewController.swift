//
//  ViewController.swift
//  HelloRxSwift
//
//  Created by Henrique Alves Batochi on 04/10/22.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = Observable.from([1,2,3,4,5])
    }


}

