import UIKit

import EquatableOpen

struct SmallNoEquatable {
    var a: Int = 123
}

struct BigNoEquatable {
    var a: Int = 123
    var b: Int = 234
    var c: Int = 345
    var d: Int = 456
}

struct SmallEquatable: Equatable {
    var a: Int = 123
}

struct BigEquatable: Equatable {
    var a: Int = 123
    var b: Int = 234
    var c: Int = 345
    var d: Int = 456
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print(anyIsEqual(SmallNoEquatable(), SmallNoEquatable()))
        print(anyIsEqual(BigNoEquatable(), BigNoEquatable()))
        print(anyIsEqual(SmallEquatable(), SmallEquatable()))
        print(anyIsEqual(BigEquatable(), BigEquatable()))
    }


}

