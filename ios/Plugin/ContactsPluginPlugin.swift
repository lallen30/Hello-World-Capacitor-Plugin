import Foundation
import Capacitor

@objc(ContactsPluginPlugin)
public class ContactsPluginPlugin: CAPPlugin {

    @objc func showHelloWorld(_ call: CAPPluginCall) {
            DispatchQueue.main.async {
                let helloWorldVC = HelloWorldViewController()
                let navigationController = UINavigationController(rootViewController: helloWorldVC)
                
                if let viewController = self.bridge?.viewController {
                    viewController.present(navigationController, animated: true, completion: nil)
                }
            }
            call.resolve()
        }
}
