//: [Previous](@previous)

import UIKit
import ImageCoordinateSpace
//: Center
let image = UIImage(named: "rose.jpg")!
let imageView = UIImageView(image: image)
let square = CGSize(width: 200, height: 200)
imageView.bounds = CGRect(origin: CGPointZero, size: square)
imageView.backgroundColor = UIColor.greenColor()
imageView.contentMode = .Center
let imageSpace = imageView.contentSpace()
let topLeft = imageSpace.convertPoint(CGPointZero, toCoordinateSpace: imageView)
image.size
let bottomRight = CGPoint(x: image.size.width, y: image.size.height)
let lowerRight = imageSpace.convertPoint(bottomRight, toCoordinateSpace: imageView)

assert//: image should not be stretched
(lowerRight.x - topLeft.x == image.size.width)
assert(lowerRight.y - topLeft.y == image.size.height)

//: [Next](@next)
