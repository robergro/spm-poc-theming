//
//  SparkTheme.swift
//  Spark
//
//  Created by robin.lemaire on 28/02/2023.
//  Copyright © 2023 Adevinta. All rights reserved.
//

import Combine
import SparkTheming
import Foundation

public struct SparkTheme: Theme {

    // MARK: - Properties

    public static var shared = Self()

    public init() {}

    public let border: Border = SparkBorder()
    public var colors: Colors = SparkColors()
    public let elevation: Elevation = SparkElevation()
    public let layout: Layout = SparkLayout()
    public let typography: Typography = SparkTypography()
    public let dims: Dims = SparkDims()
}
