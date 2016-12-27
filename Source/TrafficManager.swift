//
//  TrafficManager.swift
//  TrafficPolice
//
//  Created by 刘栋 on 2016/11/17.
//  Copyright © 2016年 anotheren.com. All rights reserved.
//

import Foundation

public class TrafficManager {
    
    public static let shared = TrafficManager()
    
    public private(set) var interval: Double = 1
    
    public weak var delegate: TrafficManagerDelegate?
    
    private lazy var timer: DispatchSourceTimer = {
        let timer = DispatchSource.makeTimerSource()
        timer.scheduleRepeating(deadline: .now() + self.interval, interval: self.interval)
        timer.setEventHandler(handler: { [weak self] in
            guard let strongSelf = self else { return }
            strongSelf.updateSummary()
        })
        return timer
    }()
    
    private var counter: TrafficCounter = TrafficCounter()
    
    private var summary: TrafficSummary?
    
    public init() { }
    
    public func reset() {
        summary = nil
    }

    public func resume() {
        timer.resume()
    }
    
    public func cancel() {
        timer.cancel()
    }
    
    public func update(interval: Double) {
        if timer.isCancelled {
            self.interval = interval
            timer.scheduleRepeating(deadline: .now() + interval, interval: interval)
        }
    }
    
    private func updateSummary() {
        let newSummary: TrafficSummary = {
            if let summary = self.summary {
                return summary.update(by: counter.usage, time: interval)
            } else {
                return TrafficSummary(origin: counter.usage)
            }
        }()
        delegate?.post(summary: newSummary)
        summary = newSummary
    }
}

public protocol TrafficManagerDelegate: class {
    
    func post(summary: TrafficSummary)
}
