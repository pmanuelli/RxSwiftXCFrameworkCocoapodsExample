@testable import RxSwiftAsXCFrameworkCocoapodsExample

import XCTest
import RxBlocking

class RxSwiftAsXCFrameworkCocoapodsExampleTests: XCTestCase {

    func testExample() throws {
        
        let numbers = try? SomeClassToTest().numbers.toBlocking().toArray()
        
        XCTAssertEqual(numbers, [1, 2, 3, 4, 5])
    }
}
