//
//  PaletView.swift
//  Aula04
//
//  Created by Turma01-14 on 30/10/24.
//

import SwiftUI

struct PaletView: View {
    var body: some View {
        ZStack{
            Color(.gray)
                .edgesIgnoringSafeArea(.top)
            Circle()
                .fill(.black)
                .frame(width: 270, height: 270)
            Image(systemName: "paintpalette")
                .resizable()
                .foregroundColor(.gray)
                .frame(width: 200, height: 200)
        }
    }
}

#Preview {
    PaletView()
}
