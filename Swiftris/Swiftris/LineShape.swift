//
//  LineShape.swift
//  Swiftris
//
//  Created by Jessie Link on 9/19/14.
//  Copyright (c) 2014 Bloc. All rights reserved.
//

import Foundation
class LineShape:Shape {
    /*
        Orientation 0 and 180:
        | 0. |
        | 1 |
        | 2 |
        | 3 |
    
    
        Orientations of 90 and 270:
        | 0 | 1. | 2 | 3 |
    */
    
    // Hinges about the second block
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
        return [
            Orientation.Zero: [(0,0), (0,1), (0,2), (0,3)],
            Orientation.Ninety: [(-1,0), (0,0), (1,0), (2,0)],
            Orientation.OneEighty: [(0,0), (0,1), (0,2), (0,3)],
            Orientation.TwoSeventy: [(-1,0), (0,0), (1,0), (2,0)],
            ]
    }
    
    override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
        return [
            Orientation.Zero: [blocks[FourthBlockIdx]],
            Orientation.Ninety: blocks,
            Orientation.OneEighty: [blocks[FourthBlockIdx]],
            Orientation.TwoSeventy: blocks
            ]
    }
    
}