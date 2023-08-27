//
//  HeaderView.swift
//  ToDoListSwiftUI
//
//  Created by iPak Tulane on 27/08/23.
//

import SwiftUI

struct HeaderView: View {

    let title: String
    let subtitle: String
    let angle: Double
    let background: Color

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle)) //"-15" inclines from right top to left bottom, and "+15" - otherwise
    

            VStack {
                // Title
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                // Subtitle
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 80)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 350)
        .offset(y: -150)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title",
                   subtitle: "Subtitle",
                   angle: 15,
                   background: .blue)
    }
}
