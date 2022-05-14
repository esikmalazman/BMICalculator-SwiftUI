@testable import BMICalculator
import XCTest

final class BMITests: XCTestCase {
    var sut : BMI!
    
    override func setUp() {
        super.setUp()
        sut = BMI()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_categories_withNumberBelow18_shouldReturnUnderweight() {
        let results = sut.categoriesBMI(for: 17.5)
        
        XCTAssertEqual(results, "Underweight")
    }
    
    func test_categories_withNumberBetween18And24_shouldReturnNormalWeight() {
        let results = sut.categoriesBMI(for: 18.5)
        
        XCTAssertEqual(results, "Normal weight")
    }
    
    func test_categories_withNumberAboved24_shouldReturnObesity() {
        let results = sut.categoriesBMI(for: 25.9)
        
        XCTAssertEqual(results, "Obesity")
    }
}
