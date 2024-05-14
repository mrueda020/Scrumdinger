//
//  ThemeView.swift
//  Scrumdinger
//
//  Created by Miguel on 13/05/24.
//

import SwiftUI

struct ThemeView: View {
    
    let theme:Theme
    
    var body: some View {
        Text("\(theme.name)")
            .padding(4)
            .frame(maxWidth:.infinity)
            .background(theme.mainColor)
            .clipShape(RoundedRectangle(cornerRadius: 4))
    }
}

#Preview {
    ThemeView(theme: .buttercup)
}
