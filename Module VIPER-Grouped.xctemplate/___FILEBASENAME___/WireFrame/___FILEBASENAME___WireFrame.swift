//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit


class ___VARIABLE_productName___WireFrame {

    // MARK: Static methods

    static func createModule() -> UIViewController {
        
        // TODO: Put here the identifier of UIViewController
        let viewController = ___VARIABLE_productName___Storyboard.instantiateViewController(withIdentifier: "")
       
        if let vc = viewController as? ___VARIABLE_productName___ViewController {
            let presenter: ___VARIABLE_productName___PresenterProtocol & ___VARIABLE_productName___InteractorOutputProtocol = ___VARIABLE_productName___Presenter()
            let wireFrame: ___VARIABLE_productName___WireFrameProtocol = ___VARIABLE_productName___WireFrame()
            let interactor:  ___VARIABLE_productName___InteractorInputProtocol =  ___VARIABLE_productName___Interactor()

            vc.presenter =  presenter

            presenter.view = vc
            presenter.wireFrame = wireFrame
            presenter.interactor = interactor

            interactor.presenter = presenter

            return vc
        }
        
        return UIViewController()
    }
    
    static var ___VARIABLE_productName___Storyboard: UIStoryboard {
        return UIStoryboard(name:  "'" ___VARIABLE_productName___ "'", bundle: Bundle.main)
    }
    
}

extension ___VARIABLE_productName___WireFrame: ___VARIABLE_productName___WireFrameProtocol {
    // TODO: Implement wireframe methods
}
  
