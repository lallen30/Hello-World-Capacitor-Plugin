import Foundation
import Capacitor

@objc(ContactsPluginPlugin)
public class ContactsPluginPlugin: CAPPlugin {

    @objc func showHelloWorld(_ call: CAPPluginCall) {
        print("showHelloWorld function called") // Added console log
        DispatchQueue.main.async {
            let helloWorldVC = HelloWorldViewController()
            let navigationController = UINavigationController(rootViewController: helloWorldVC)
            
            navigationController.pushViewController(navigationController, animated: true)
        }
        call.resolve()
    }

    @objc func showHelloWorld2(_ call: CAPPluginCall) {
        print("showHelloWorld function called") // Added console log
        DispatchQueue.main.async {
            let helloWorldVC = HelloWorldViewController()
            let navigationController = UINavigationController(rootViewController: helloWorldVC)
            
            navigationController.pushViewController(navigationController, animated: true)
        }
        call.resolve()
    }
}
