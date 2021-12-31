# 🌌 ThreeDCardView

[![Version](https://img.shields.io/cocoapods/v/ThreeDCardView.svg?style=flat)](https://cocoapods.org/pods/ThreeDCardView)  

[![License](https://img.shields.io/badge/Licese-MIT-blueviolet)](https://cocoapods.org/pods/FomaViewableSound)   

[![Platform](https://img.shields.io/badge/Platform-iOS-yellow)](https://cocoapods.org/pods/FomaViewableSound)   

[![Language](https://img.shields.io/badge/Swift-5.0-orange)](https://cocoapods.org/pods/FomaViewableSound)   

[![Author](https://img.shields.io/badge/Author-Fomagran-green)](https://cocoapods.org/pods/FomaViewableSound)   

## Usage

First you have to import 'ThreeDCardView'   

```swift
import 'ThreeDCardView'
```

Create ThreeDCardView and set the frame 

``` swift
let threeDCardView:ThreeDCardView = ThreeDCardView(frame:)
```

Set the datasource

```swift
threeDCardView.dataSource = self
 
extension ViewController:ThreeDCardDataSource {
    func setCardImages() -> [UIImage] {
        let images:[UIImage] = [UIImage(named: "")!,UIImage(named: "")!,UIImage(named: "")!,UIImage(named: "")!]
        return images
    }
}
```

ipad pro 5th            |  iphone 13 pro
:-------------------------:|:-------------------------:
![](https://user-images.githubusercontent.com/47676921/147451696-6b363d59-5775-44a8-b602-ef000c9ac5c2.gif)  |  ![](https://user-images.githubusercontent.com/47676921/147451723-83a6749c-e27f-47c8-8c6b-f6893abe68ab.gif)

## Requirements

* iOS 11
* Swift 5.0

## Installation

FomaViewableSound is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ThreeDCardView'
```

## Author

fomagran, fomagran6@naver.com

## License

FomaViewableSound is available under the MIT license. See the LICENSE file for more info.
