import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(spacing: 5) {
            Text("Sign In").font(.title).bold()
            Text("Signin into your account")
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
