//
//  DetailView.swift
//  Our Farm
//
//  Created by Hananiah on 2024/5/4.
//


import SwiftUI


struct DetailView: View {
    @StateObject var data = placesObj()
    @State var dataKey = Int(0)
    @State var imageKey = Int(0)
    var alternateIconNameIsNil : Bool {
        UIApplication.shared.alternateIconName ?? "nil(string)"=="nil(string)" ? true :false
    }
    var body: some View {
        VStack {
            Text(data.places[dataKey].title)
                .padding()
                .foregroundColor(.black)
                .font(.largeTitle)
            if data.places[dataKey].images.count > 1 {
                HStack{
                    ZStack{
                        Rectangle()
                            .foregroundColor(.accentColor)
                            .frame(width: 90,height: 90)
                            .cornerRadius(15)
                        Image(systemName: "arrowshape.backward")
                    }.onTapGesture {
                        imageKey -= 1
                        if imageKey < 0 {
                            imageKey = data.places[dataKey].images.count - 1
                        }
                    }
                    .padding(.trailing,10)
                    Image(data.places[dataKey].images[imageKey])
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300, alignment: .center)
                    ZStack{
                        Rectangle()
                            .foregroundColor(.accentColor)
                            .frame(width: 90,height: 90)
                            .cornerRadius(15)
                        Image(systemName: "arrowshape.forward")
                    }.onTapGesture {
                        imageKey += 1
                        if imageKey > data.places[dataKey].images.count - 1 {
                            imageKey = 0
                        }
                    }
                    .padding(.leading,10)
                }
            }else{
                Image(data.places[dataKey].images[0])
                    .resizable()
                    .scaledToFit()
                    .frame(height: 350, alignment: .center)
            }
            if data.places[dataKey].images.count > 1 {
                Text("\(imageKey + 1)/\(data.places[dataKey].images.count)")
                    .padding([.leading , .trailing] , 4)
                    .font(.custom("", size: 10))
                    .foregroundColor(.white)
                    .background(Rectangle().cornerRadius(9).foregroundColor(Color.gray))
            }
            ScrollView(.vertical, showsIndicators: true, content: {
                Text(data.places[dataKey].description)
                    .font(data.places[dataKey].descriptionFont)
                    .padding(.all , 20)
                HStack {
                    Spacer()
                    Text(data.places[dataKey].writerName)
                        .font(data.places[dataKey].writerNameFont)
                        .padding(.trailing , 50)
                }
            })
        }
    }
}

    struct DetailView_Previews: PreviewProvider {
        static var previews: some View {
            ScrollView(.vertical) {
                DetailView(dataKey: 1)
                    .padding(.all, 15)
            }
        }
    }

