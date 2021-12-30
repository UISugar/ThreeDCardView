//
//  ViewController.swift
//  ThreeDCardView
//
//  Created by fomagran on 12/30/2021.
//  Copyright (c) 2021 fomagran. All rights reserved.
//

import UIKit
import Pods_ThreeDCardView_Example

class ViewController: UIViewController {
    
    var threeDCardView:ThreeDCardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        threeDCardView = ThreeDCardView(frame: view.frame)
        threeDCardView.backgroundColor = .systemRed
        threeDCardView.dataSource = self
        view.addSubview(threeDCardView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController:ThreeDCardDataSource {
    func setCardImages() -> [UIImage] {
        let images:[UIImage] = [UIImage(named: "살바도르달리.jpeg")!,UIImage(named: "폴고갱.jpeg")!,UIImage(named: "반고흐.png")!,UIImage(named: "마르셀 뒤샹.png")!]
        return images
    }
}

