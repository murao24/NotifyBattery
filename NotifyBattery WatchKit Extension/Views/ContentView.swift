//
//  ContentView.swift
//  NotifyBattery WatchKit Extension
//
//  Created by 村尾慶伸 on 2020/10/04.
//

import SwiftUI

struct ContentView: View {

    init() {

        WKInterfaceDevice.current().isBatteryMonitoringEnabled = true
    }

    var body: some View {

        NavigationView {

            VStack {

                Text("iPhone")

                // If in charge, change text color.
                Text("92%")
                    .font(.title)
                    .foregroundColor(.orange)

                Button(action: {

                    let level = WKInterfaceDevice.current().batteryLevel
                    print(level)
                }, label: {

                    Text("Update")
                })

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
