import SwiftUI

struct SignupRequestModel: Codable {
    var userType: String
    var firstName: String
    var lastName: String
    var emailAddress: String
    var password: String
}

struct SignupResponseModel: Codable {
    var message: String
}
