import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    private let disposeBag = DisposeBag()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let numbers = Observable<Int>.of(1, 2, 3, 4, 5)
        let interval = Observable<Int>.interval(.seconds(1), scheduler: MainScheduler.instance)
        
        Observable
            .zip(numbers, interval)
            .map(\.0)
            .do(onNext: { print("Number \($0)") })
            .subscribe()
            .disposed(by: disposeBag)
    }
}

class SomeClassToTest {
    let numbers = Observable<Int>.of(1, 2, 3, 4, 5)
}
