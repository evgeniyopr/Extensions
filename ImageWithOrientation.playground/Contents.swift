import UIKit
import CoreGraphics

extension UIImage {
    
    func fixedOrientation() -> UIImage? {
        
        if imageOrientation == .up {
            return self
        } else {
            UIGraphicsBeginImageContextWithOptions(size, false, scale)
            let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
            draw(in: rect)
            let normalizedImage = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            return normalizedImage
        }
    }
}
