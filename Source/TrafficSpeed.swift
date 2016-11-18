//
//  TrafficSpeed.swift
//  TrafficPolice
//
//  Created by 刘栋 on 2016/11/18.
//  Copyright © 2016年 anotheren.com. All rights reserved.
//

import Foundation

public struct TrafficSpeed {
    
    public var received: Double  // down btyes per second
    public var sent: Double  // up btyes per second
    
    private init(received: Double, sent: Double) {
        self.received = received
        self.sent = sent
    }
    
    public init(old: TrafficData, new: TrafficData, interval: Double) {
        self.received = (new.received.double - old.received.double) / interval
        self.sent = (new.sent.double - old.sent.double) / interval
    }
    
    public static var zero: TrafficSpeed {
        return self.init(received: 0, sent: 0)
    }
}

extension TrafficSpeed: CustomStringConvertible {
    
    public var description: String {
        return "download: \(received.unitString)/s, upload: \(sent.unitString)/s"
    }
}

public func +(lhs: TrafficSpeed, rhs: TrafficSpeed) -> TrafficSpeed {
    var result = lhs
    result.received += rhs.received
    result.sent += rhs.sent
    return result
}
