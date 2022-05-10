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
                    ForEach(codeHelpList, id: \.self) { helpModel in
                        HStack {
                            Text(helpModel.title)
                                .bold()
                                .padding()
                            Spacer()
                            Text(helpModel.type.rawValue)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.red)
                        .cornerRadius(8)
                    }
                    Spacer()
                }
                .padding()
                
                VStack {
                    Text("Ajuda Design")
                    ForEach(designHelpList, id: \.self) { helpModel in
                        HStack {
                            Text(helpModel.title)
                                .bold()
                                .padding()
                            Spacer()
                            Text(helpModel.type.rawValue)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.red)
                        .cornerRadius(8)
                    }
                    Spacer()
                }
                .padding()
                
                VStack {
                    Text("Ajuda Business")
                    ForEach(businessHelpList, id: \.self) { helpModel in
                        HStack {
                            Text(helpModel.title)
                                .bold()
                                .padding()
                            Spacer()
                            Text(helpModel.type.rawValue)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.red)
                        .cornerRadius(8)
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
    }
}
