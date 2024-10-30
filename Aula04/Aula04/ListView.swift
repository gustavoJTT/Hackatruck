//
//  ListView.swift
//  Aula04
//
//  Created by Turma01-14 on 30/10/24.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView{
            VStack{
                List{
                    HStack{
                        Text("Lista")
                        Spacer()
                        Image(systemName: "square.and.arrow.up")
                    }
                    HStack{
                        Text("Lista")
                        Spacer()
                        Image(systemName: "square.and.arrow.up")
                    }
                    HStack{
                        Text("Lista")
                        Spacer()
                        Image(systemName: "square.and.arrow.up")
                    }
                }.navigationTitle("Icaro")
            }
        }
    }
}

#Preview {
    ListView()
}
