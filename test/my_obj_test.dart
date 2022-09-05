import 'package:dart_test_description_bug/my_obj.dart';
import 'package:test/test.dart';

void main() {
  group('$MyObj', () {
    late MyObj myObj;

    setUp(() {
      myObj = MyObj();
    });

    test('is $Object', () {
      expect(myObj, isA<Object>());
    });

    test('foo returns true and is $Object', () {
      expect(myObj.foo(), isTrue);

      expect(myObj, isA<Object>());
    });

    test('number equals 10', () {
      expect(myObj.number, equals(10));
    });
  });
}
