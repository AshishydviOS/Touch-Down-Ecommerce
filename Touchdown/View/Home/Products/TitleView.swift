//
//  TitleView.swift
//  Touchdown
//
//  Created by Ashish Yadav on 29/03/23.
//

import SwiftUI

struct TitleView: View {
    // MARK: - Properties
    var titleString: String
    
    // MARK: - Body
    var body: some View {
        HStack {
            Text(titleString)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        }// :HStack
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
        
    }
}

// MARK: - Preview
struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(titleString: "Helmets")
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
