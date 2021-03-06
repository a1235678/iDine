//
//  OrderView.swift
//  iDine
//
//  Created by Debbie Tseng on 2020/11/17.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order

        var body: some View {
            NavigationView {
                List {
                    Section {
                        ForEach(order.items) { item in
                            HStack {
                                Text(item.name)
                                Spacer()
                                Text("$\(item.price)")
                            }
                        }
                    }

                    Section {
                        NavigationLink(destination: Text("Check out")) {
                            Text("Place Order")
                        }
                    }
                }
                .navigationBarTitle("Order")
                .listStyle(GroupedListStyle())
            }
        }
}

struct OrderView_Previews: PreviewProvider {
    static let order = Order()
    static var previews: some View {
        OrderView().environmentObject(order)
    }
}
