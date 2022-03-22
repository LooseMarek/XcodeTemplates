//___FILEHEADER___

protocol ___VARIABLE_productName___InteractorProtocol {
    func loadData(request: ___VARIABLE_productName___.FetchData.Request)
}

class ___VARIABLE_productName___Interactor: ___VARIABLE_productName___InteractorProtocol {
    var presenter: ___VARIABLE_productName___PresenterProtocol?

    func loadData(request: ___VARIABLE_productName___.FetchData.Request) {
        Task {
            let response = ___VARIABLE_productName___.FetchData.Response()
            presenter?.presentData(response: response)
        }
    }
}
