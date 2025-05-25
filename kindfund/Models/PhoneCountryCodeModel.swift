import SwiftUI

struct CountryCode {
    let name: String
    let code: String
    let dialCode: String
    
    var id: String {
        return UUID().uuidString
    }
}
