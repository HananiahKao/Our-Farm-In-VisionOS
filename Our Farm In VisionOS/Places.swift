import SwiftUI

class placesObj : ObservableObject {
    @Published var places = [
        place(
            title: "小木屋",
            images: ["小木屋1","小木屋2"],
            description: "小木屋是我們每天生活、工作的地方。早上，負責準備午餐的同學們會在廚房裡忙進忙出；在我們上課時，老師會在小木屋裡處理事務；下午我們要回家時，我們會把鑰匙放到小木屋，為著明天的再來做準備。",
            descriptionFont: .custom("Kaiti SC", fixedSize: 40),
            writerName: " By Hananiah",
            writerNameFont: Font.custom("snell RoundHand", size: 30),
            x: 770.6,
            y: 254.4,
            height:9,
            width: 157,
            rotationAngle: Angle(degrees: 37.6),
            patternImage: "X",
            dataKey: 0),
        
        place(
            title: "鐵皮屋",
            images: ["鐵皮屋1","鐵皮屋2"],
            description: "鐵皮屋是上課用的空間之一，我們在裡面開班會、寫作文等等。在每一次學校舉辦的大型活動前，大家也會聚集在這裡，發表自己的意見，一起討論要如何進行活動。",
            descriptionFont: .title,
            writerName: "hananiah",
            writerNameFont: .custom("Zapfino", size: 20),
            x: 465.6,
            y: 623.8,
            height: 98,
            width:180,
            rotationAngle: Angle(degrees: 0),
            patternImage: "place holder",
            dataKey: 1),
        place(
            title: "第一草皮",
            images: ["第一草皮"],
            description: "第一草皮是很多人對農場的第一印象。雖然平時滿地是落葉，但是只要有人要來，或是要在農場舉辦活動，第一草皮都會被打掃得煥然一新。夏天，同學們最喜歡到第一草皮的樹蔭下吃午餐，涼風吹拂，真是無比享受。",
            descriptionFont: .title,
            writerName: "Hananiah",
            writerNameFont: .custom("Menlo", size: 20),
            x: 516.7,
            y: 315.1,
            height: 100,
            width: 100,
            rotationAngle: Angle(degrees: 3),
            patternImage: "",
            dataKey: 2
             ),
        place(
            title: "第二草皮",
            images: ["第二草皮1","第二草皮2"],
            description: "第二草皮的環境很自然，生態池就在草皮旁邊，裡面生長著各種植物，有時候幼兒園的小朋友會來我們農場進行一日遊，就會讓小朋友們到第二草皮旁的河裡玩水、抓蝦。",
            descriptionFont: .custom("", size: 40),
            writerName: "Hananiah Kao",
            writerNameFont: .custom("Menlo", size: 20),
            x: 196.6,
            y: 278.5,
            height: 0,
            width: 0,
            rotationAngle: Angle(degrees: 0),
            patternImage: "",
            dataKey: 3
        ),
        place(
            title: "木工教室",
            images: ["木工教室1","木工教室2"],
            description: "木工教室是我們製作各樣木工作品的地方，同學們經常在教室裡鏗鏗鏘鏘得捶打、裁切木頭，發揮自己的創意。",
            descriptionFont: .title,
            writerName: "H.K.",
            writerNameFont: .custom("snell RoundHand", size: 20),
            x: 154.9,
            y: 567,
            height: 0,
            width: 0,
            rotationAngle: Angle(degrees: 0),
            patternImage: "",
            dataKey: 4
        ),place(
            title: "資材室",
            images: ["資財室"],
            description: "資材室是我們存放雜物的地方。剛來農場時，我很害怕資材室裡面會有奇怪的昆蟲突然跑出來，所以都不敢進入資材室。直到有一次為了要整理資材室，硬著頭皮在裡面待了一段時間，才發現其實也沒有那麼可怕！",
            descriptionFont: .title,
            writerName: "高睦郇 → 那位戰勝了恐懼的人...",
            writerNameFont: .custom("Kaiti SC", size: 20),
            x: 918.4,
            y: 233.5,
            height: 0,
            width: 0,
            rotationAngle: Angle(degrees: 0),
            patternImage: "",
            dataKey: 5
        ),
        place(
            title: "藝術教室",
            images: ["藝術教室1"],
            description: "藝術教室是同學們學習陶藝的地方，室內的牆上擺滿了各樣新奇的陶藝作品。這裡也是我們上國文、數學課的地方，我們上數學課的時候會使用電視，老師會把講義顯示在電視上，讓大家都可以看到。",
            descriptionFont: .title,
            writerName: "Hananiah",
            writerNameFont: .custom("Zapfino", size: 20),
            x: 760,
            y: 455.1,
            height: 0,
            width: 0,
            rotationAngle: Angle(degrees: 0),
            patternImage: "",
            dataKey: 6
        )
    ]
    
}
struct place : Identifiable {
    var title : String
    var images : [String]
    var description : String
    var descriptionFont : Font
    var writerName : String
    var writerNameFont : Font
    var x : CGFloat
    var y : CGFloat
    var height : CGFloat
    var width : CGFloat
    var rotationAngle : Angle
    var patternImage : String
    var dataKey : Int
    var showInfoPopOver = false
    
    
    var id = UUID()
}

