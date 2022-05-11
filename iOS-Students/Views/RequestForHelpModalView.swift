import SwiftUI

struct RequestHelpModalView: View {
    @State var text: String = ""
    
    var body: some View {
        VStack {
            TextField("Qual anúncio você gostaria de fazer?", text: $text)
                .padding()
                .background(Color.white)
                .cornerRadius(8)
                .padding()
                .shadow(color: .black.opacity(0.05), radius: 16, x: 0, y: 0)
        }
    }
}

struct RequestHelpModalView_Previews: PreviewProvider {
    static var previews: some View {
        RequestHelpModalView()
    }
}
