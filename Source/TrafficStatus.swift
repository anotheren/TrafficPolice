//
//  TrafficStatus.swift
//  TrafficPolice
//
//  Created by 刘栋 on 2016/11/18.
//  Copyright © 2016年 anotheren.com. All rights reserved.
//

import Foundation

public struct TrafficStatus {
    
    public let speed: TrafficSpeed
    public let data: TrafficData
    
    private init(speed: TrafficSpeed, data: TrafficData) {
        self.speed = speed
        self.data = data
    }
    
    public init(origin data: TrafficData) {
        self.speed = .zero
        self.data = data
    }
    
    public func update(by data: TrafficData, time interval: Double) -> TrafficStatus {
        let speed = TrafficSpeed(old: self.data, new: data, interval: interval)
        return TrafficStatus(speed: speed, data: data)
    }
}
