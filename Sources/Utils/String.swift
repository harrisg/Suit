//
//  File.swift
//  
//
//  Created by Greg Harris on 10/21/19.
//

import Foundation

extension String {

    var isNativeUTF8: Bool {
        return utf8.withContiguousStorageIfAvailable { _ in 0 } != nil
    }

    mutating func makeNativeUTF8IfNeeded() {
        if !isNativeUTF8 {
            self += ""
        }
    }
}

