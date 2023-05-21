import 'package:fhirlite/src/utils/shared_preferences/shared_preferences.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> sharedPreferences() async {
  group('Try setting and reading Shared Preferences Provider', () {
    final container = ProviderContainer();
    test('Int', () async {
      container
          .read(
              sharedPrefProvider(SPInteraction.setInt(key: 'int1', value: 42)))
          .when(
            data: (data) {
              print('got data');
              expect(data, SPInteraction.setInt(key: 'int1', value: 40));
            },
            error: (e, s) {},
            loading: () {},
          );

      // .asData.map(data: data, error: error, loading: loading);
      // .whenData((value) => print(value));
      // expect(int1, SPInteraction.setInt(key: 'int1', value: 40));
      // });
      container
          .read(sharedPrefProvider(SPInteraction.getInt(key: 'int1')))
          .whenData((data) {
        expect(
            data, SPInteraction.getInt(key: 'int1', value: 42, success: true));
      });
      container
          .read(
              sharedPrefProvider(SPInteraction.setInt(key: 'int1', value: 42)))
          .whenData((data) {
        expect(data, SPInteraction.setInt(key: 'int1', value: 42));
      });
      container
          .read(sharedPrefProvider(SPInteraction.getInt(key: 'int1')))
          .whenData((data) {
        expect(
            data, SPInteraction.getInt(key: 'int1', value: 42, success: true));
      });
    });
  });
}
//       ProviderScope(
//         child: MaterialApp(
//           home: Scaffold(body: HookConsumer(
//             builder: (context, ref, child) {
//               ref
//                   .read(sharedPrefProvider(
//                       SPInteraction.setBool(key: 'bool1', value: true)))
//                   .whenData((data) {
//                 expect(data, SPInteraction.setBool(key: 'bool1', value: true));
//               });
//               ref
//                   .read(sharedPrefProvider(
//                       SPInteraction.getBool(key: 'bool1')))
//                   .whenData((data) {
//                 expect(
//                     data,
//                     SPInteraction.getBool(
//                         key: 'bool1', value: true, success: true));
//               });
//               ref
//                   .read(sharedPrefProvider(
//                       SPInteraction.setDouble(key: 'double1', value: 3.3)))
//                   .whenData((data) {
//                 expect(
//                     data, SPInteraction.setDouble(key: 'double1', value: 3.3));
//               });
//               ref
//                   .read(sharedPrefProvider(
//                       SPInteraction.getDouble(key: 'double1')))
//                   .whenData((data) {
//                 expect(
//                     data,
//                     SPInteraction.getDouble(
//                         key: 'double1', value: 3.3, success: true));
//               });
//               ref
//                   .read(sharedPrefProvider(SPInteraction.setString(
//                       key: 'string1', value: 'String1')))
//                   .whenData((data) {
//                 expect(data,
//                     SPInteraction.setString(key: 'string1', value: 'String2'));
//               });
//               ref
//                   .read(sharedPrefProvider(
//                       SPInteraction.getString(key: 'string1')))
//                   .whenData((data) {
//                 expect(
//                     data,
//                     SPInteraction.getString(
//                         key: 'string1', value: 'String1', success: true));
//               });
//               ref
//                   .read(sharedPrefProvider(SPInteraction.setStringList(
//                       key: 'stringlist1', value: ['String1', 'String2'])))
//                   .whenData((data) {
//                 expect(
//                     data,
//                     SPInteraction.setStringList(
//                         key: 'stringlist1', value: ['String1', 'String2']));
//               });
//               ref
//                   .read(sharedPrefProvider(
//                       SPInteraction.getStringList(key: 'stringlist1')))
//                   .whenData((data) {
//                 expect(
//                     data,
//                     SPInteraction.getStringList(
//                         key: 'stringlist1',
//                         value: ['String1', 'String2'],
//                         success: true));
//               });

//               return Container();
//             },
//           )),
//         ),
//       ),
//     );
//   });
// }

  //   remove: (_) async =>
  //       interaction.copyWith(success: await prefs.remove(_.key)),
