import Foundation
import SwiftUI

enum CameraError: String {
    case invalidDeviceInput = "Something is wrong with the camera. We are unable to capture the input."
    case invalidScannedValue = "The value scanned is not valid. This app scans EAN-8 and EAN-13"
}

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(
        title: "Invalid Device Input",
        message: CameraError.invalidDeviceInput.rawValue,
        dismissButton: .default(Text("Ok"))
    )
    
    static let invalidScannedValue = AlertItem(
        title: "Invalid Scanned Value",
        message: CameraError.invalidScannedValue.rawValue,
        dismissButton: .default(Text("Ok"))
    )
}
