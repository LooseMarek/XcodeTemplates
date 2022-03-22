//___FILEHEADER___

protocol ___VARIABLE_productName___PresenterProtocol {
    func presentData(response: ___VARIABLE_productName___.FetchData.Response)
}

class ___VARIABLE_productName___Presenter: ___VARIABLE_productName___PresenterProtocol {
    var view: ___VARIABLE_productName___ViewProtocol?

    func presentData(response: ___VARIABLE_productName___.FetchData.Response) {
        let viewModel = ___VARIABLE_productName___.FetchData.ViewModel(
            helloLabel: "___VARIABLE_productName___ Scene",
            navigateToDemoSceneButtonLabel: "Navigate to Demo Scene",
            navigateToOtherModuleButtonLabel: "Navigate to Other Module"
        )
        view?.display(viewModel)
    }
}
