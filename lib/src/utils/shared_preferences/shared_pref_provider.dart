// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Project imports:
import 'shared_preferences_interaction.dart';

part 'shared_pref_provider.g.dart';

@riverpod
class SharedPref extends _$SharedPref {
  @override
  Future<SPInteraction> build(SPInteraction interaction) async {
    final prefs = await SharedPreferences.getInstance();
    return interaction.map(
      setInt: (_) async =>
          interaction.copyWith(success: await prefs.setInt(_.key, _.value)),
      setBool: (_) async =>
          interaction.copyWith(success: await prefs.setBool(_.key, _.value)),
      setDouble: (_) async =>
          interaction.copyWith(success: await prefs.setDouble(_.key, _.value)),
      setString: (_) async =>
          interaction.copyWith(success: await prefs.setString(_.key, _.value)),
      setStringList: (_) async => interaction.copyWith(
          success: await prefs.setStringList(_.key, _.value)),
      getInt: (_) async {
        final value = prefs.getInt(_.key);
        return (interaction as SPInteractionGetInt)
            .copyWith(value: value, success: value != null);
      },
      getBool: (_) async {
        final value = prefs.getBool(_.key);
        return (interaction as SPInteractionGetBool)
            .copyWith(value: value, success: value != null);
      },
      getDouble: (_) async {
        final value = prefs.getDouble(_.key);
        return (interaction as SPInteractionGetDouble)
            .copyWith(value: value, success: value != null);
      },
      getString: (_) async {
        final value = prefs.getString(_.key);
        return (interaction as SPInteractionGetString)
            .copyWith(value: value, success: value != null);
      },
      getStringList: (_) async {
        final value = prefs.getStringList(_.key);
        return (interaction as SPInteractionGetStringList)
            .copyWith(value: value, success: value != null);
      },
      remove: (_) async =>
          interaction.copyWith(success: await prefs.remove(_.key)),
    );
  }
}
