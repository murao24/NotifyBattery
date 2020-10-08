//
//  ContentView.swift
//  NotifyBattery WatchKit Extension
//
//  Created by 村尾慶伸 on 2020/10/04.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var vm = ViewModel()

    init() {

        WKInterfaceDevice.current().isBatteryMonitoringEnabled = true
        vm.level = WKInterfaceDevice.current().batteryLevel * 100
        print(vm.level)
    }

    var body: some View {

        NavigationView {

            VStack {

                Text("iPhone")

                // If in charge, change text color.
                Text("\(vm.level)%")
                    .font(.title)
                    .foregroundColor(.orange)

                Button(action: {

                    vm.level = round(WKInterfaceDevice.current().batteryLevel * 100)
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
