//
//  ThreeDCardDataSource.swift
//  Pods-ThreeDCardView_Example
//
//  Created by Fomagran on 2021/12/30.
//

import UIKit

public protocol ThreeDCardDataSource:AnyObject {
    func setCardImages() -> [UIImage]
}
