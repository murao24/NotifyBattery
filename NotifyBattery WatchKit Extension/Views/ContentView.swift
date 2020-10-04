//
//  ContentView.swift
//  NotifyBattery WatchKit Extension
//
//  Created by 村尾慶伸 on 2020/10/04.
//

import SwiftUI

struct ContentView: View {

    var body: some View {

        NavigationView {

            VStack {

                Text("iPhone")

                // If in charge, change text color.
                Text("92%")
                    .font(.title)
                    .foregroundColor(.orange)

                NavigationLink(
                    destination: SetView(),
                    label: {

                        Text("Norify")
                    })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
