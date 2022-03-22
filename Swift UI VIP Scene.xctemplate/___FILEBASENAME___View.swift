//___FILEHEADER___

import SwiftUI

protocol ___VARIABLE_productName___ViewProtocol {
    func display(_ viewModel: ___VARIABLE_productName___.FetchData.ViewModel)
}

class ___VARIABLE_productName___ViewDisplayData: ObservableObject {
    @Published var helloLabel: String = ""
    @Published var navigateToDemoSceneButtonLabel: String = ""
    @Published var navigateToOtherModuleButtonLabel: String = ""
}

struct ___VARIABLE_productName___View: View {
    var router: ___VARIABLE_productName___RouterProtocol?
    var interactor: ___VARIABLE_productName___InteractorProtocol?

    @ObservedObject var displayData = ___VARIABLE_productName___ViewDisplayData()

    var body: some View {
        VStack {
            Text(displayData.helloLabel)
                .padding()
            Button(action: {}, label: {
                router?.navigateToDemoSceneInModule() {
                    Text(displayData.navigateToDemoSceneButtonLabel)
                }
            })
                .padding()
            Button(action: {}, label: {
                router?.navigateToOtherModule() {
                    Text(displayData.navigateToOtherModuleButtonLabel)
                }
            })
                .padding()
        }
        .onAppear {
            loadData()
        }
    }
}

extension ___VARIABLE_productName___View: ___VARIABLE_productName___ViewProtocol {
    func display(_ viewModel: ___VARIABLE_productName___.FetchData.ViewModel) {
        DispatchQueue.main.async {
            displayData.helloLabel = viewModel.helloLabel
            displayData.navigateToDemoSceneButtonLabel = viewModel.navigateToDemoSceneButtonLabel
            displayData.navigateToOtherModuleButtonLabel = viewModel.navigateToOtherModuleButtonLabel
        }
    }

    func loadData() {
        let request = ___VARIABLE_productName___.FetchData.Request()
        interactor?.loadData(request: request)
    }
}

struct ___VARIABLE_productName___View_Previews: PreviewProvider {
    static var previews: some View {
        ___VARIABLE_productName___View()
    }
}
