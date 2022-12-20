import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'is_mock_demo.g.dart';

@riverpod
class IsMockDemo extends _$IsMockDemo {
  @override
  bool build() => false;

  void update(bool newValue) => state = newValue;
}
