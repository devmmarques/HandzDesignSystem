//
//  DSSpacingTheme.swift
//  HandzPlayground
//
//  Created by Marco Henrique on 27/12/25.
//

import Foundation

public protocol DSSpacingTheme {
    func value(for token: DSSpacingToken) -> CGFloat
}

