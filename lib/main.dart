void main() {
  //===============
  //=== Null체크
  int? age1;
  int myAge1;
  int? result = age1 ?? 20;
  print(result);

  int? age = 24;
  int? myAge = 30;
  result = (myAge ?? age);
  print(result);
  // ??은 null인 경우 오른쪽 대입
  // 콘솔 에러가 날 수 있는데 작동하는데는 문제가 없음
  //===============
  //===============
  // === 비교 방법 ===
  // === is 연산자
  //이거 deep 까지 체크하는 건가?
  //
  // === 캐스팅 방법 ===
  // === as 연산자
  //===============
  //===============
  //===파라미터 기본===
  //===1.일반 파라미터
  // 1.1. 일반파라미터
  void test(String juso) {
    print("juso = $juso");
  }

  test("서울시");
  //1.2. 일반파라미터의 옵셔널 사용
  void test0(String juso, [int? q]) {
    print("juso = $juso");
  }

  test0("서울시");

  //1.3. 일반파라미터 옵셔널의 디폴트 값
  void test_0(String juso, [int? q = 100]) {
    print("juso = $juso");
    print("bunzi = $q");
  }

  test_0("서울시");

  //===2.네임드파라미터
  //2.1. 네임드 파라미터는 무조건 required나 null safety를 해줘야 한다.
  void test1({int? age, required String name}) {
    print("age = $age");
    print("name = $name");
  }

  test1(name: "홍길동", age: 10);

  //2.2. 네임드파라미터에서 옵셔널 사용법
  void test2(String juso, {int? age, required String name}) {
    print("juso = $juso");
    print("age = $age");
    print("name = $name");
  }

  test2("서울시", name: "홍길동");

  //2.3. 네임드파파라미터에서 옵셔널의 디폴트값 설정
  void test3(String juso, {int? age = 10, required String name}) {
    print("2.2 네임드파파라미터에서 옵셔널의 디폴트값 설정");
    print("juso = $juso");
    print("age = $age");
    print("name = $name");
  }

  test3("서울시", name: "홍길동");

// 일반파라미터 옵셔널과 네임드 옵셔널들 모두 사용한 예제를 할려고 했는데
  // 이런 경우는 일반파라미터는 옵셔널 기능을 사용할 수 없다.
  void test4(String juso, int? buzi, {int? age = 10, required String name}) {
    print("2.2 네임드파파라미터에서 옵셔널의 디폴트값 설정");
    print("juso = $juso");
    print("age = $age");
    print("name = $name");
  }

  //test4("서울시", name: "홍길동");
}
