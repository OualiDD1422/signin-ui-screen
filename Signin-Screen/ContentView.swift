import SwiftUI

struct ContentView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    // Alert Setup
    @State var alertShow: Bool = false
    
    var body: some View {
        ZStack {
            Color("BackgroundLight")
                .ignoresSafeArea()
            
            VStack {
                HeaderView()
                VStack {
                    TextField("Email...", text: $email)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color("LightBlack"), lineWidth: 1))
                    SecureField("Password...", text: $password)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color("LightBlack"), lineWidth: 1))
                    Button("Sign In", action: {
                        alertShow = formSubmitted()
                    })
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color("LightBlack"))
                        .cornerRadius(10)
                        .alert(isPresented: $alertShow) {
                            Alert(
                                title: Text("Message!"),
                                message: Text("Form Submitted!")
                            )
                        }
                }
                .padding()
                
            }
        }
    }
    
    func formSubmitted() -> Bool {
        if((email.isEmpty && password.isEmpty) || (email.isEmpty || password.isEmpty)) {
            return false
        }
        return true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
