//
//  HeaderView.swift
//  ToDoListSwiftUI
//
//  Created by iPak Tulane on 27/08/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {

        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.pink)
                .rotationEffect(Angle(degrees: 15)) //"-15" inclains from right top to left bottom

            VStack {
                // Title
                Text("To Do List")
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                // Subtitle
                Text("Get Things Done")
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 300)
        .offset(y: -100)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
