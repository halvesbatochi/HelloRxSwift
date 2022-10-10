import UIKit
import RxSwift
import RxCocoa
import PlaygroundSupport


//-------------------------------------------------//
// SECTION 5: OBSERVABLES                          //
//-------------------------------------------------//

//let observable  = Observable.just(1)
//let observable2 = Observable.of(1,2,3)
//let observable3 = Observable.of([1,2,3])
//let observable4 = Observable.from([1,2,3,4,5])

// Lecture 1 - Types Obseervables
//observable4.subscribe { event in
//    if let element = event.element {
//        print(element)
//    }
//}
//
//observable4.subscribe(onNext: { element in
//    print(element)
//})
//
//observable3.subscribe { event in
//    if let element = event.element {
//        print(element)
//    }
//}

// Lecture 2 - DISPOSED
//let disposeBag = DisposeBag()
//Observable.of("A", "B", "C")
//    .subscribe {
//        print($0)
//    }.disposed(by: disposeBag)
//
//Observable<String>.create { observer in
//
//    observer.onNext("A")
//    observer.onCompleted()
//    observer.onNext("?")
//    return Disposables.create()
//}.subscribe(onNext: { print($0) }, onError: { print($0)}, onCompleted: { print("Completed")}, onDisposed: { print("Disposed")})
//    .disposed(by: disposeBag)

//-------------------------------------------------//
// SECTION 3: SUBJECTS                             //
//-------------------------------------------------//

// Lecture 3 - Subjects
//let disposeBag = DisposeBag()
// PUBLISH SUBJECTS
//let subject = PublishSubject<String>()
//
//subject.onNext("Issue 1")
//subject.subscribe { event in
//    print(event)
//}
//subject.onNext("Issue 2")
//subject.onNext("Issue 3")
//subject.dispose()
//subject.onCompleted()
//subject.onNext("Issue 4")

// BEHAVIOR SUBJECTS
//let disposeBag = DisposeBag()
//let subject = BehaviorSubject(value: "Initial Value")
//
//subject.onNext("Last Issue")
//
//subject.subscribe { event in
//    print(event)
//}
//
//subject.onNext("Issue 1")

// REPLAY SUBJECTS
//let disposeBag = DisposeBag()
//let subject = ReplaySubject<String>.create(bufferSize: 2)
//subject.onNext("Issue 1")
//subject.onNext("Issue 2")
//subject.onNext("Issue 3")
//subject.subscribe {
//    print($0)
//}
//subject.onNext("Issue 4")
//subject.onNext("Issue 5")
//subject.onNext("Issue 6")
//print("[Subscription 2]")
//subject.subscribe {
//    print($0)
//}

// VARIABLES
//let disposeBag = DisposeBag()
//let variable = Variable([String]())
//variable.value.append("Item 1")
//variable.asObservable()
//    .subscribe {
//        print($0)
//    }
//variable.value.append("Item 2")

// BEHAVIORRELAY
//let disposeBag = DisposeBag()
//let relay = BehaviorRelay(value: ["Item 0"])
//relay.accept(relay.value + ["Item 1"])
//var value = relay.value
//value.append("Item 2")
//value.append("Item 3")
//
//relay.asObservable()
//    .subscribe {
//        print($0)
//    }

//-------------------------------------------------//
// SECTION 3: IMPLEMENTING APP - CAMERA FILTER     //
//-------------------------------------------------//

//-------------------------------------------------//
// SECTION 3: IMPLEMENTING APP - CAMERA FILTER     //
//-------------------------------------------------//

//-------------------------------------------------//
// SECTION 5: FILTERING OPERATORS                  //
//-------------------------------------------------//

// IGNORE

//let strikes = PublishSubject<String>()
//let disposeBag = DisposeBag()
//
//strikes
//    .ignoreElements()
//    .subscribe { _ in
//        print("[Subscription is called]")
//    }.disposed(by: disposeBag)
//
//strikes.onNext("A")
//strikes.onNext("B")
//strikes.onNext("C")
//
//strikes.onCompleted()

// ELEMENT AT
//
//let strikes = PublishSubject<String>()
//let disposeBag = DisposeBag()
//
//strikes.elementAt(2)
//    .subscribe(onNext: { _ in
//        print("You are out!")
//    }).disposed(by: disposeBag)
//
//strikes.onNext("X")
//strikes.onNext("X")
//strikes.onNext("X")

// FILTER
//
//let disposeBag = DisposeBag()
//
//Observable.of(1,2,3,4,5,6,7)
//    .filter { $0 % 2 == 0 }
//    .subscribe(onNext: {
//        print($0)
//    }).disposed(by: disposeBag)

// SKIP
//
//let disposeBag = DisposeBag()
//
//Observable.of("A", "B", "C", "D", "E", "F")
//    .skip(3)
//    .subscribe(onNext: {
//        print($0)
//    }).disposed(by: disposeBag)

// SKIP WHILE
//
//let disposeBag = DisposeBag()
//
//Observable.of(2,2,3,4,4)
//    .skipWhile { $0 % 2 == 0 }
//    .subscribe(onNext: {
//        print($0)
//    }).disposed(by: disposeBag)

// SKIP UNTIL
//
//let disposeBag = DisposeBag()
//
//let subject = PublishSubject<String>()
//let trigger = PublishSubject<String>()
//
//subject.skipUntil(trigger)
//    .subscribe(onNext: {
//        print($0)
//    }).disposed(by: disposeBag)
//
//subject.onNext("A")
//subject.onNext("B")
//
//trigger.onNext("X")
//
//subject.onNext("C")
