//
//  TTDLoginTests.swift
//  TTDLoginTests
//
//  Created by Nathaniel Whittington on 2/10/22.
//

import XCTest
@testable import TTDLogin

class TTDLoginTests: XCTestCase {
    
    var vm : Text?

    override func setUpWithError() throws {
        vm = Text()
       
    }

    override func tearDownWithError() throws {
       vm = nil
    }

    func testForText(){
        
        XCTAssertTrue(self.vm?.validateTextFieldCount(text: "awe"))
        
    }
}
