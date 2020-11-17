//
//  iDineApp.swift
//  iDine
//
//  Created by Debbie Tseng on 2020/10/23.
//

import SwiftUI

@main
struct iDineApp: App {
    var order = Order()
    var body: some Scene {
        WindowGroup {
            //ContentView().environmentObject(order)
            
            TabView {
                        ContentView().environmentObject(order)
                            .tabItem {
                                Image(systemName: "list.dash")
                                Text("Menu")
                            }

                        OrderView()
                            .environmentObject(order)
                            .tabItem {
                                Image(systemName: "square.and.pencil")
                                Text("Order")
                            }
                    }
        }
    }
}
