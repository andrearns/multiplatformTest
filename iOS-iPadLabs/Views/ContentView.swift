import SwiftUI

struct ContentView: View {
    
    @State var codeHelpList: [HelpModel] = []
    @State var designHelpList: [HelpModel] = []
    @State var businessHelpList: [HelpModel] = []
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("Ajuda Progs")
                        .font(.title2)
                        .bold()
                    ForEach(codeHelpList, id: \.self) { helpModel in
                        HelpCard(helpModel: helpModel)
                    }
                    Spacer()
                }
                .padding()
                
                VStack {
                    Text("Ajuda Design")
                        .font(.title2)
                        .bold()
                    ForEach(designHelpList, id: \.self) { helpModel in
                        HelpCard(helpModel: helpModel)
                    }
                    Spacer()
                }
                .padding()
                
                VStack {
                    Text("Ajuda Business")
                        .font(.title2)
                        .bold()
                    ForEach(businessHelpList, id: \.self) { helpModel in
                        HelpCard(helpModel: helpModel)
                    }
                    Spacer()
                }
                .padding()
            }
            
            Spacer()
        }
        .onAppear {
            separateList()
        }
        .statusBar(hidden: true)
        .padding()
    }
    
    func separateList() {
        codeHelpList = HelpSingleton.shared.helpModelList.filter({ helpModel in
            helpModel.type == .code
        })
        
        designHelpList = HelpSingleton.shared.helpModelList.filter({ helpModel in
            helpModel.type == .design
        })
        
        businessHelpList = HelpSingleton.shared.helpModelList.filter({ helpModel in
            helpModel.type == .business
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
