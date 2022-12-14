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

// TAKE
//
//let disposeBag = DisposeBag()
//
//Observable.of(1,2,3,4,5,6)
//    .take(3)
//    .subscribe(onNext: {
//        print($0)
//    }).disposed(by: disposeBag)

// TAKE WHILE
//
//let disposeBag = DisposeBag()
//
//Observable.of(2,4,6,7,8,10)
//    .takeWhile {
//        return $0 % 2 == 0
//    }.subscribe(onNext: {
//        print($0)
//    }).disposed(by: disposeBag)

// TAKE UNTIL
//
//let disposeBag = DisposeBag()
//
//let subject = PublishSubject<String>()
//let trigger = PublishSubject<String>()
//
//subject.takeUntil(trigger)
//    .subscribe(onNext: {
//        print($0)
//    }).disposed(by: disposeBag)
//
//subject.onNext("1")
//subject.onNext("2")
//
//trigger.onNext("X")
//
//subject.onNext("3")

//-------------------------------------------------//
// SECTION 6: IMPLEMENTING APP - GOODLIST          //
//-------------------------------------------------//

//-------------------------------------------------//
// SECTION 7: TRANSFORMING OPERATORS               //
//-------------------------------------------------//

// TO ARRAY
//
//let disposeBag = DisposeBag()
//
//Observable.of(1,2,3,4,5)
//    .toArray()
//    .subscribe(onNext: {
//        print($0)
//    }).disposed(by: disposeBag)

// MAP
//
//let disposeBag = DisposeBag()
//
//Observable.of(1,2,3,4,5)
//    .map {
//        return $0 * 2
//    }.subscribe(onNext: {
//        print($0)
//    }).disposed(by: disposeBag)

// FLAT MAP
//
//let disposeBag = DisposeBag()
//
//struct Student {
//    var score: BehaviorRelay<Int>
//}
//
//let john = Student(score: BehaviorRelay(value: 75))
//let mary = Student(score: BehaviorRelay(value: 95))
//
//let student = PublishSubject<Student>()
//
//student.asObservable()
//    .flatMap { $0.score.asObservable() }
//    .subscribe(onNext: {
//        print($0)
//    }).disposed(by: disposeBag)
//
//student.onNext(john)
//john.score.accept(100)
//
//student.onNext(mary)
//mary.score.accept(80)
//
//john.score.accept(43)

// FLAT MAP LATEST
//
//let disposeBag = DisposeBag()
//
//struct Student {
//    var score: BehaviorRelay<Int>
//}
//
//let john = Student(score: BehaviorRelay(value: 75))
//let mary = Student(score: BehaviorRelay(value: 95))
//
//let student = PublishSubject<Student>()
//
//student.asObservable()
//    .flatMapLatest { $0.score.asObservable() }
//    .subscribe(onNext: {
//        print($0)
//    }).disposed(by: disposeBag)
//
//student.onNext(john)
//john.score.accept(100)
//
//student.onNext(mary)
//john.score.accept(45)
//mary.score.accept(99)

//-------------------------------------------------//
// SECTION 8: IMPLEMENTING APP - GOODNEWS          //
//-------------------------------------------------//

//-------------------------------------------------//
// SECTION 9: COMBINING OPERATORS                  //
//-------------------------------------------------//
//
// STARTS WITH
//
//let disposeBag = DisposeBag()
//let numbers = Observable.of(2,3,4)
//let observable = numbers.startWith(1)
//observable.subscribe(onNext: {
//    print($0)
//}).disposed(by: disposeBag)

// CONCAT
//
//let disposeBag = DisposeBag()
//
//let first = Observable.of(1,2,3)
//let second = Observable.of(4,5,6)
//
//let observable = Observable.concat([first, second])
//observable.subscribe(onNext: {
//    print($0)
//}).disposed(by: disposeBag)

// MERGE
//
//let disposeBag = DisposeBag()
//
//let left = PublishSubject<Int>()
//let right = PublishSubject<Int>()
//
//let source = Observable.of(left.asObservable(),right.asObservable())
//let observable = source.merge()
//observable.subscribe(onNext: {
//    print($0)
//}).disposed(by: disposeBag)
//
//left.onNext(5)
//left.onNext(3)
//right.onNext(2)
//right.onNext(1)
//left.onNext(99)

// COMBINE LATEST
//
//let disposeBag = DisposeBag()
//let left = PublishSubject<Int>()
//let right = PublishSubject<Int>()
//
//let observable = Observable.combineLatest(left,right,resultSelector: { lastLeft, lastRight in
//    "\(lastLeft) \(lastRight)"
//})
//
//let disposable = observable.subscribe(onNext: { value in
//    print(value)
//})
//
//left.onNext(45)
//right.onNext(1)
//left.onNext(30)
//right.onNext(1)
//right.onNext(2)

// WITH LATEST FROM
//
//let disposeBag = DisposeBag()
//
//let button = PublishSubject<Void>()
//let textField = PublishSubject<String>()
//
//let observable = button.withLatestFrom(textField)
//let disposable = observable.subscribe(onNext: {
//    print($0)
//})
//
//textField.onNext("Sw")
//textField.onNext("Swif")
//textField.onNext("Swift")
//textField.onNext("Swift Rocks!")
//
//button.onNext(())
//button.onNext(())

// REDUCE
//
//let disposeBag = DisposeBag()
//
//let source = Observable.of(1,2,3)
//source.reduce(0, accumulator: +)
//    .subscribe(onNext: {
//        print($0)
//    }).disposed(by: disposeBag)
//
//// OTHER WAY
//
//source.reduce(0, accumulator: {
//    summary, newValue in
//    return summary + newValue
//}).subscribe(onNext: {
//    print($0)
//}).disposed(by: disposeBag)

// SCAN
//
//let disposeBag = DisposeBag()
//let source = Observable.of(1,2,3,4,5,6)
//
//source.scan(0, accumulator: +)
//    .subscribe(onNext: {
//        print($0)
//    }).disposed(by: disposeBag)
