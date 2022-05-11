import SwiftUI

struct HelpListView: View {
    
    var helpModelList: [HelpModel] = HelpSingleton.shared.helpModelList
    @State var showRequestHelpModal: Bool = false
    @State var currentHelpModelList: [HelpModel] = []
    @State var categoryChosen: HelpType? = nil {
        didSet {
            switch categoryChosen {
            case .code:
                currentHelpModelList = helpModelList.filter({ helpModel in
                    helpModel.type == .code
                })
            case .design:
                currentHelpModelList = helpModelList.filter({ helpModel in
                    helpModel.type == .design
                })
            case .business:
                currentHelpModelList = helpModelList.filter({ helpModel in
                    helpModel.type == .business
                })
            default:
                currentHelpModelList = helpModelList
            }
        }
    }
    
    var body: some View {
        ZStack {
            ScrollView(.vertical, showsIndicators: true) {
                VStack {
                    VStack {
                        HStack {
                            Text("Fila de ajuda")
                                .font(.title)
                                .bold()
                            
                            Spacer()
                        }
                        .padding()
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                Button(action: {
                                    categoryChosen = nil
                                }) {
                                    Text("Todas")
                                        .padding(.horizontal, 16)
                                        .padding(.vertical, 4)
                                        .background(Color.gray)
                                        .font(.system(size: 16, weight: .bold, design: .rounded))
                                        .foregroundColor(.white)
                                        .cornerRadius(16)
                                        .padding(.bottom, 8)
                                }
                                
                                Button(action: {
                                    categoryChosen = .code
                                }) {
                                    Text("Programação")
                                        .padding(.horizontal, 16)
                                        .padding(.vertical, 4)
                                        .background(Color.green)
                                        .font(.system(size: 16, weight: .bold, design: .rounded))
                                        .foregroundColor(.white)
                                        .cornerRadius(16)
                                        .padding(.bottom, 8)
                                }
                                
                                Button(action: {
                                    categoryChosen = .design
                                }) {
                                    Text("Design")
                                        .padding(.horizontal, 16)
                                        .padding(.vertical, 4)
                                        .background(Color.pink)
                                        .font(.system(size: 16, weight: .bold, design: .rounded))
                                        .foregroundColor(.white)
                                        .cornerRadius(16)
                                        .padding(.bottom, 8)
                                }
                                
                                Button(action: {
                                    categoryChosen = .business
                                }) {
                                    Text("Business")
                                        .padding(.horizontal, 16)
                                        .padding(.vertical, 4)
                                        .background(Color.blue)
                                        .font(.system(size: 16, weight: .bold, design: .rounded))
                                        .foregroundColor(.white)
                                        .cornerRadius(16)
                                        .padding(.bottom, 8)
                                }
                                
                                Spacer()
                            }
                        }
                        .padding(.leading)
                        .padding(.bottom)
                        
                        ForEach(currentHelpModelList, id: \.self) { helpModel in
                            HelpCard(helpModel: helpModel)
                        }
                    }
                    
                    Spacer()
                }
            }
            VStack {
                Spacer()
                HStack(alignment: .bottom) {
                    Spacer()
                    
                    Button(action: {
                        showRequestHelpModal = true
                    }) {
                        ZStack {
                            Circle()
                            Image(systemName: "plus")
                                .foregroundColor(.white)
                                .font(.title)
                        }
                        .frame(maxWidth: 60, maxHeight: 60)
                        .padding()
                    }
                }
            }
        }
        .sheet(isPresented: $showRequestHelpModal) {
            RequestHelpModalView()
        }
        .onAppear {
            currentHelpModelList = helpModelList
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HelpListView()
    }
}
