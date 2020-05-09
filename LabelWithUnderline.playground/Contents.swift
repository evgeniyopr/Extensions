import UIKit

extension UILabel {

    func addUnderline(with width: CGFloat = 2, underlineColor: UIColor? = nil) {
        
		let attributed: [NSAttributedString.Key: Any] = [
			NSAttributedString.Key.underlineStyle: width,
			NSAttributedString.Key.underlineColor: underlineColor ?? .black]
        
        let attributedString = NSMutableAttributedString(string: text ?? "", attributes:attributed)
        
        self.attributedText = attributedString
    }
    
    func addUnderline(with width: CGFloat = 1) {
        addUnderline(with: width, underlineColor: textColor)
    }
    
    func removeUnderline() {
        
		let attributed: [NSAttributedString.Key: Any] = [
			NSAttributedString.Key.underlineColor: UIColor.clear]
        
        let attributedString = NSMutableAttributedString(string:text ?? "", attributes:attributed)
        
        self.attributedText = attributedString
    }
}
