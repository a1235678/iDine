//
//  ItemDetail.swift
//  iDine
//
//  Created by Debbie Tseng on 2020/10/26.
//

import SwiftUI

struct ItemDetail: View {
    var item: MenuItem
    var body: some View {
        VStack {
            Image(item.mainImage)
            Text(item.description)
                .padding()
            Spacer()
            Bool().toggle()
        }
        .navigationBarTitle(item.name, displayMode: .inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ItemDetail(item: MenuItem.example)
        }
    }
}
