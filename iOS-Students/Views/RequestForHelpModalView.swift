import SwiftUI

struct RequestHelpModalView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var categoryChosen: HelpType? = nil
    @State var subject: String = ""
    @State var description: String = ""
    @State var location: String = ""
    
    var body: some View {
        VStack {
            Text("Precisa de ajuda?")
                .bold()
                .font(.title2)
                .padding(.vertical, 32)
            
            VStack(alignment: .leading) {
                    Text("Categoria")
                        .bold()
                    
                    HStack {
                        Button(action: {
                            categoryChosen = .code
                        }) {
                            Text("Progs")
                                .padding(.horizontal, 16)
                                .padding(.vertical, 4)
                                .background(categoryChosen == .code ? Color.green : Color.gray)
                                .font(.system(size: 16, weight: .bold, design: .rounded))
                                .foregroundColor(.white)
                                .cornerRadius(16)
                        }
                        
                        Button(action: {
                            categoryChosen = .design
                        }) {
                            Text("Design")
                                .padding(.horizontal, 16)
                                .padding(.vertical, 4)
                                .background(categoryChosen == .design ? Color.pink : Color.gray)
                                .font(.system(size: 16, weight: .bold, design: .rounded))
                                .foregroundColor(.white)
                                .cornerRadius(16)
                        }
                        
                        Button(action: {
                            categoryChosen = .business
                        }) {
                            Text("Business")
                                .padding(.horizontal, 16)
                                .padding(.vertical, 4)
                                .background(categoryChosen == .business ? Color.blue : Color.gray)
                                .font(.system(size: 16, weight: .bold, design: .rounded))
                                .foregroundColor(.white)
                                .cornerRadius(16)
                        }
                    
                    Spacer()
                }
                
            }
            .padding(.horizontal)
            .padding(.bottom)
            
            VStack(alignment: .leading) {
                Text("Assunto principal")
                    .bold()
                TextField("Seu desafio em poucas palavras", text: $subject)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .shadow(color: .black.opacity(0.10), radius: 16, x: 0, y: 0)
            }
            .padding(.horizontal)
            .padding(.bottom)
            
            VStack(alignment: .leading) {
                Text("Descri????o")
                    .bold()
                TextField("Descreva com mais detalhes o que voc?? est?? tentando fazer e o que voc?? j?? tentou at?? aogra", text: $description)
                    .padding()
                    .frame(height: 150)
                    .background(Color.white)
                    .cornerRadius(8)
                    .shadow(color: .black.opacity(0.10), radius: 16, x: 0, y: 0)
            }
            .padding(.horizontal)
            .padding(.bottom)
            
            VStack(alignment: .leading) {
                Text("Onde voc?? est???")
                    .bold()
                TextField("Onde a ajuda poder?? te encontrar", text: $location)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .shadow(color: .black.opacity(0.10), radius: 16, x: 0, y: 0)
            }
            .padding(.horizontal)
            .padding(.bottom)
            
            Button(action: {
                print("Save new help request on Firebase Database")
                presentationMode.wrappedValue.dismiss()
            }) {
                VStack {
                    Text("Pedir ajuda")
                        .foregroundColor(.white)
                        .bold()
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(30)
                .padding()
            }
            
            Spacer()
        }
    }
}

struct RequestHelpModalView_Previews: PreviewProvider {
    static var previews: some View {
        RequestHelpModalView()
    }
}
