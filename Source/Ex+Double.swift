//
//  Ex+Double.swift
//  TrafficPolice
//
//  Created by 刘栋 on 2016/11/18.
//  Copyright © 2016年 anotheren.com. All rights reserved.
//

import Foundation

internal extension Double {
    
    internal var kb: Double {
        return self / 1024
    }
    
    internal var mb: Double {
        return kb / 1024
    }
    
    internal var gb: Double {
        return mb / 1024
    }
    
    internal var tb: Double {
        return gb / 1024
    }
}
