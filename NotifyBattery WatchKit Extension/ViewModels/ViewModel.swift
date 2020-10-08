//
//  ViewModel.swift
//  NotifyBattery WatchKit Extension
//
//  Created by 村尾慶伸 on 2020/10/08.
//

import Foundation
import Combine

class ViewModel: ObservableObject {

    @Published var level: Float = 0
}
