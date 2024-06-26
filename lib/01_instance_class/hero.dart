import 'slime.dart';

// 함수 : input 이 동일할 때 output 항상 동일한 결과
int f(int x) {
  return x + 4;
}

void main() {
  Hero.money = 200;

  // 2
  Hero hero = Hero(name: '홍길동', hp: 100);
}

class Hero {
  // 1
  static int money = 100;

  // field, 멤버변수, 전역변수,
  String _name;

  // properties
  String get name => _name;

  set name(String value) {
    if (value.isEmpty) {
      throw Exception('길이가 0은 안되요');
    }

    _name = '$value님';
  }

  int hp;

  // 생성자
  Hero({
    required String name,
    required this.hp,
  }) : _name = name;

  // 메서드
  void attack(Slime slime) {
    print('$_name 이 공격했다');
    Hero.money = 10;
    // 이름이 김씨면 파워가 +3
    // 오씨면 +10
  }

  void run() {}

  void sleep() {
    hp = 100;
    print('$_name 가 잤다');
  }

// ...
}
