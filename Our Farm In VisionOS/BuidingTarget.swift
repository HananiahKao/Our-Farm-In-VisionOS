//
//  BuidingTarget.swift
//  Our Farm
//
//  Created by Hananiah on 2024/7/8.
//

import SwiftUI

struct BuidingTarget: View {
    @State var show = false
    var Index : Int
    var name : String
    var body: some View {
        VStack {
            Text(name)
                .foregroundStyle(Color.white)
            Image(systemName: "mappin")
                .foregroundStyle([Color.red,Color.orange,Color.yellow,Color.green,Color.blue,Color.purple,Color.pink][Index])
                .imageScale(.large)
        }
        .onTapGesture {
            show = true
        }
        .popover(isPresented: $show,arrowEdge: .top, content: {
            ScrollView(.vertical, showsIndicators: true, content: {
                DetailView(dataKey: Index)
            })
            .padding()
        })

    }
}

#Preview {
    BuidingTarget(Index: 0,name: "name")
}
