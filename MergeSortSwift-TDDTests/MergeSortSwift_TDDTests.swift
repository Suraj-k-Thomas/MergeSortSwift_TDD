//
//  MergeSortSwift_TDDTests.swift
//  MergeSortSwift-TDDTests
//
//  Created by Suraj  Thomas on 08/03/25.
//

import Testing
@testable import MergeSortSwift_TDD
import XCTest

class MergeSortSwift_TDDTests : XCTestCase {

    
    func testfirst() {
        
        let unsortedArray = [1,2,3,4,5]
        let sortedArray = [1,2,3,4,5]
        
        XCTAssertNotEqual(mergesort(unsortedArray), sortedArray)
    }

}
