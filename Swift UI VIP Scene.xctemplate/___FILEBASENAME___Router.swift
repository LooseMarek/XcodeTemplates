//___FILEHEADER___

import SwiftUI
import Presentation

public protocol ___VARIABLE_productName___RouterProtocol: RouterProtocol {
    func navigateToDemoSceneInModule<T: View>(context: NavigationContext<T>) -> AnyView?
    func navigateToOtherModule<T: View>(context: NavigationContext<T>) -> AnyView?
}

public protocol ___VARIABLE_productName___RouterDelegate: AnyObject {
    func navigateToOtherModule<T: View>(context: NavigationContext<T>) -> AnyView?
}

public class ___VARIABLE_productName___Router: ___VARIABLE_productName___RouterProtocol {

    var demoRouter: RouterProtocol

    var delegate: ___VARIABLE_productName___RouterDelegate?

    public init(demoRouter: RouterProtocol = DemoRouter()) {
        self.demoRouter = demoRouter
    }

    public func start() -> AnyView {
        let router = self
        var view = ___VARIABLE_productName___View()
        let interactor = ___VARIABLE_productName___Interactor()
        let presenter = ___VARIABLE_productName___Presenter()
        view.router = router
        view.interactor = interactor
        interactor.presenter = presenter
        presenter.view = view

        return AnyView(view)
    }

    public func navigateToDemoSceneInModule<T: View>(context: NavigationContext<T>) -> AnyView? {
        return AnyView(NavigationLink(destination: demoRouter.start()) {
            context()
        })
    }

    public func navigateToOtherModule<T: View>(context: NavigationContext<T>) -> AnyView? {
        return delegate?.navigateToOtherModule {
            context()
        }
    }
}
