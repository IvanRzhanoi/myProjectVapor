//
//  ByteBuffer+Data.swift
//
//
//  Created by Ivan Rzhanoi on 4.6.2024.
//

import Vapor


public extension ByteBuffer {
    var data: Data? {
        getData(at: 0, length: readableBytes)
    }
}
