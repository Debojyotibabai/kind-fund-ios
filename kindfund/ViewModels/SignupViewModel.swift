import SwiftUI

@MainActor
class SignupViewModel: ObservableObject {
    @Published var isSigningup: Bool = false
    @Published var isError: Bool = false
    @Published var isSuccess: Bool = false
    @Published var signupResponseData: SignupResponseModel?
    @Published var signupErrorData: SignupResponseModel?
    
    func resetSignupViewModel() {
        isSigningup = false
        isError = false
        isSuccess = false
        signupResponseData = nil
        signupErrorData = nil
    }
    
    func setResponseData(data: SignupResponseModel) {
        isSigningup = false
        isSuccess = true
        signupResponseData = data
        isError = false
        signupErrorData = nil
    }
    
    func setErrorData(data: SignupResponseModel) {
        isSigningup = false
        isError = true
        signupErrorData = data
        isSuccess = false
        signupResponseData = nil
    }
    
    func signup(signupRequestModel: SignupRequestModel) async {
        isSigningup = true
        
        guard let jsonData = try? JSONEncoder().encode(signupRequestModel) else {
            print("Failed to encode")
            setErrorData(data: SignupResponseModel(message: "Failed to register"))
            return
        }
        
        var request = URLRequest(url: URL(string: "https://dev-api.kindfundapp.com/auth/register")!)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        do {
            let (data, response) = try await URLSession.shared.upload(for: request, from: jsonData)
            
            guard let httpResponse = response as? HTTPURLResponse else {
                print("Invalid response type")
                setErrorData(data: SignupResponseModel(message: "Failed to sign up"))
                return
            }
            
            if((200...399).contains(httpResponse.statusCode)) {
                let response = try JSONDecoder().decode(SignupResponseModel.self, from: data)
                print("Success response: \(response)")
                setResponseData(data: response)
            } else {
                let error = try JSONDecoder().decode(SignupResponseModel.self, from: data)
                print("Error response: \(error)")
                setErrorData(data: error)
            }
        } catch {
            print("Signup failed: \(error.localizedDescription)")
            setErrorData(data: SignupResponseModel(message: "Failed to sign up"))
        }
    }
}
