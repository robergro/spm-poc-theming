//
//  Theme.swift
//  SparkTheming
//
//  Created by louis.borlee on 23/02/2023.
//  Copyright © 2023 Adevinta. All rights reserved.
//

import Foundation
import SwiftUI

// sourcery: AutoMockable
public protocol Theme {
    var border: Theming.Border { get }
    var colors: Theming.Colors { get }
    var elevation: Theming.Elevation { get }
    var layout: Theming.Layout { get }
    var typography: Theming.Typography { get }
    var dims: Theming.Dims { get }
}
