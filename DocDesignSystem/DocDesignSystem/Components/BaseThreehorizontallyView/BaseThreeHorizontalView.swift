//
//  BaseThreeHorizontalView.swift
//  DocDesignSystem
//
//  Created by Mahmoud Elkady on 14/03/2025.
//

import SwiftUI

struct BaseThreeHorizontalView<Leading:View,Middle:View,Trailing:View>: View {
    
    let leading: Leading
    let middle: Middle
    let trailing: Trailing
    
    var body: some View {
        HStack {
            leading
            Spacer()
            middle
            Spacer()
            trailing
        }
    }
}

//#Preview {
//    BaseThreeHorizontalView()
//}
