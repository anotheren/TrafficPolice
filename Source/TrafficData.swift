//
//  TrafficData.swift
//  NetTrafficCounter
//
//  Created by 刘栋 on 2016/11/18.
//  Copyright © 2016年 anotheren.com. All rights reserved.
//

import Foundation

public struct TrafficData {
    
    public var received: UInt32 // btyes
    public var sent: UInt32 // btyes
    
    public static var zero: TrafficData {
        return TrafficData(received: 0, sent: 0)
    }
    
    public var total: UInt32 {
        return received + sent
    }
}

extension TrafficData: CustomStringConvertible {
    
    public var description: String {
        return "received: \(received.double.unitString), sent: \(sent.double.unitString)"
    }
}

public func +(lhs: TrafficData, rhs: TrafficData) -> TrafficData {
    var result = lhs
    result.received += rhs.received
    result.sent += rhs.sent
    return result
}
