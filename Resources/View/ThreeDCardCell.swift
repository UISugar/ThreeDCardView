//
//  ThreeDCardCell.swift
//  Pods-ThreeDCardView_Example
//
//  Created by Fomagran on 2021/12/30.
//

import UIKit

class ThreeDCardCell: UIView {
    
    var card:Card
        
    init(frame: CGRect,card:Card) {
        self.card = card
        super.init(frame: frame)
        configure()
        setGradient()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        let imageLayer = CAShapeLayer()
        let reflectionLayer = CAShapeLayer()
        addSubLayer(imageLayer, CGRect(x: 0, y: 0, width: frame.width, height: frame.height/5*4), false)
        addSubLayer(reflectionLayer, CGRect(x: 0, y: frame.height/5*4+1, width: frame.width, height: frame.height/5*1), true)
    }
    
    private func addSubLayer(_ layer:CAShapeLayer,_ frame:CGRect,_ isRefelction:Bool) {
        var img = card.image
        if isRefelction {
            if #available(iOS 11.0, *) {
                layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
            }
            img = card.image.flipImageVertically()!
        }
        layer.contents = img.cgImage
        layer.masksToBounds = true
        layer.cornerRadius = 10
        layer.frame = frame
        self.layer.addSublayer(layer)
    }
    
    private func setGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [
            UIColor.white.withAlphaComponent(1).cgColor,
            UIColor.white.withAlphaComponent(0).cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.75)
        gradientLayer.endPoint = CGPoint(x:0.0,y:1.0)
        layer.mask = gradientLayer
    }
}

extension UIImage {
    func flipImageVertically() -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(size, false, scale)
        let bitmap = UIGraphicsGetCurrentContext()!
        bitmap.translateBy(x: size.width / 2, y: size.height / 2)
        bitmap.scaleBy(x: 1.0, y: 1.0)
        bitmap.translateBy(x: -size.width / 2, y: -size.height / 2)
        bitmap.draw(self.cgImage!, in: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}

