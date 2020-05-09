import UIKit

extension UIApplication {
    
    static func setRootViewController(_ controller: UIViewController?, animated: Bool) {
        
        if let window = shared.keyWindow, let controller = controller {
            
            if animated {
                UIView.transition(with: window, duration: 0.1, options: .transitionCrossDissolve, animations: {
                    window.rootViewController = controller
                }, completion: nil)
            } else {
                window.rootViewController = controller
            }
        }
    }
    
    static func topViewController(_ base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        
        if let nav = base as? UINavigationController {
            return topViewController(nav.visibleViewController)
        }
        
        if let tab = base as? UITabBarController {
            if let selected = tab.selectedViewController {
                return topViewController(selected)
            }
        }
        
        if let presented = base?.presentedViewController {
            return topViewController(presented)
        }
        
        return base
    }
    
    static func appDelegate() -> AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
}
