//
//  TrafficPackage.swift
//  TrafficPolice
//
//  Created by 刘栋 on 2016/11/18.
//  Copyright © 2016年 anotheren.com. All rights reserved.
//

import Foundation

public struct TrafficPackage {
    
    public var wwan: TrafficData
    public var wifi: TrafficData
    
    public static var zero: TrafficPackage {
        return TrafficPackage(wwan: .zero, wifi: .zero)
    }
}

extension TrafficPackage: CustomStringConvertible {
    
    public var description: String {
        return "wwan:\(wwan), wifi:\(wifi)"
    }
}
