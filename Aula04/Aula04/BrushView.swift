//
//  BrushView.swift
//  Aula04
//
//  Created by Turma01-14 on 30/10/24.
//

import SwiftUI

struct BrushView: View {
    var body: some View {
        ZStack{
            Color(.pink)
                .edgesIgnoringSafeArea(.top)
            Circle()
                .fill(.black)
                .frame(width: 270, height: 270)
            Image(systemName: "paintbrush")
                .resizable()
                .foregroundColor(.pink)
                .frame(width: 200, height: 200)
        }
    }
}

#Preview {
    BrushView()
}
