
import Foundation

// T.TYPEとTの違いについて

// Tは型の値を使いたいときに利用する
protocol Named {
    static var name: String { get }
}


struct A: Named {
    static let name = "A"
}


func f1<T: Named>(_ type: T.Type) {
    print(type.name)
}

f1(A.self)
