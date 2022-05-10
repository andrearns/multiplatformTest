import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                ForEach(HelpSingleton.shared.helpModelList, id: \.self) { helpModel in
                    HStack {
                        Text(helpModel.title)
                            .bold()
                        Spacer()
                        Text(helpModel.type.rawValue)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.red)
                    .cornerRadius(8)
                }
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
