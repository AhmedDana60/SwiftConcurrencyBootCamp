//
//  DoCatchTryThrowsBootCamp.swift
//  SwiftConcurrencyBootCamp
//
//  Created by Ahmed Dana Mohammed on 5/14/24.
//

import SwiftUI

struct DoCatchTryThrowsBootCamp: View {
    @StateObject private var viewModels = DoCatchTryThrowsBootCampViewModel()
    var body: some View {
        Text("Hello World")

        Text(viewModels.text)
            .frame(width: 300, height: 300)
            .background(.red)
            .foregroundColor(.white)

            .onTapGesture {
                viewModels.fetchTitle()
            }
    }
}

#Preview {
    DoCatchTryThrowsBootCamp()
}
