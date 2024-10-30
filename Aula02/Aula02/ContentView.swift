//
//  ContentView.swift
//  Aula02
//
//  Created by Turma01-14 on 24/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var textInput: String = ""
    @State private var showAlert: false
    var body: some View {
        ZStack{
            Image("bg_HxH")
                .resizable()
                .ignoresSafeArea()
                .blur(radius: 2.0)
            
            VStack{
                Text("Bem vindo(a), \(textInput)")
                    .font(.system(size: 34))
                TextField("nome", text: $textInput)
                    .font(.system(size: 30))
                    .multilineTextAlignment(.center)
                Spacer()
                
                Image("meruen")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150, alignment: .center)
                Spacer()
                
                Button("Entrar"){
                    showAlert = true
                }
                .alert("Important message", isPresented: $showAlert) {
                            Button("OK", role: .cancel) { }
                }
            }
        }

    }


#Preview {
    ContentView()
}
