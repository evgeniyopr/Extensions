import UIKit

extension UIViewController {
    
    func show(_ viewController: UIViewController, animated: Bool = true) {
        
        guard
            let topViewController = navigationController?.topViewController,
            topViewController.isKind(of: viewController.classForCoder) == false
        else {
            return
        }

        navigationController?.pushViewController(viewController, animated: animated)
    }
    
    func changeRoot(to viewController: UIViewController, animated: Bool = true) {
        navigationController?.setViewControllers([viewController], animated: animated)
    }
    
    func replaceCurrent(to viewController: UIViewController, animated: Bool = true) {
        
        guard var viewControllers = navigationController?.viewControllers else {
            return
        }
        
        viewControllers.removeLast()
        viewControllers.append(viewController)
        
        navigationController?.setViewControllers(viewControllers, animated: animated)
    }
    
    func pop(animated: Bool = true) {
        navigationController?.popViewController(animated: animated)
    }
}
