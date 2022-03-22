//___FILEHEADER___

import SwiftUI

@main
struct ___PACKAGENAME:identifier___App: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ___PACKAGENAME:identifier___Router().start()
            }
        }
    }
}

public protocol RouterProtocol {
    func start() -> AnyView
}

public protocol ___PACKAGENAME:identifier___RouterProtocol: RouterProtocol {
}

public class ___PACKAGENAME:identifier___Router: ___PACKAGENAME:identifier___RouterProtocol {

    public init() {}

    public func start() -> AnyView {
        return AnyView(ContentView())
    }
}
