import SwiftUI


final class BarcodeScannerViewModel: ObservableObject {
    
    @Published var scannedBar: String = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String { scannedBar.isEmpty ? "Not Yet Scanned" : scannedBar }
    var statusTextColor: Color { scannedBar.isEmpty ? .red : .green }
}
