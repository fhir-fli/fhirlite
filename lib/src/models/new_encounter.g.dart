// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_encounter.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$newEncounterHash() => r'153b2521c8593254d8e6aa1616618e0a6000d8a3';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$NewEncounter extends BuildlessAutoDisposeNotifier<Encounter?> {
  late final EncounterType type;
  late final DateTime? dateTime;

  Encounter? build(
    EncounterType type, [
    DateTime? dateTime,
  ]);
}

/// The Provider that contains all patients stored (even temporarily) on the
/// device.
///
/// Copied from [NewEncounter].
@ProviderFor(NewEncounter)
const newEncounterProvider = NewEncounterFamily();

/// The Provider that contains all patients stored (even temporarily) on the
/// device.
///
/// Copied from [NewEncounter].
class NewEncounterFamily extends Family<Encounter?> {
  /// The Provider that contains all patients stored (even temporarily) on the
  /// device.
  ///
  /// Copied from [NewEncounter].
  const NewEncounterFamily();

  /// The Provider that contains all patients stored (even temporarily) on the
  /// device.
  ///
  /// Copied from [NewEncounter].
  NewEncounterProvider call(
    EncounterType type, [
    DateTime? dateTime,
  ]) {
    return NewEncounterProvider(
      type,
      dateTime,
    );
  }

  @override
  NewEncounterProvider getProviderOverride(
    covariant NewEncounterProvider provider,
  ) {
    return call(
      provider.type,
      provider.dateTime,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'newEncounterProvider';
}

/// The Provider that contains all patients stored (even temporarily) on the
/// device.
///
/// Copied from [NewEncounter].
class NewEncounterProvider
    extends AutoDisposeNotifierProviderImpl<NewEncounter, Encounter?> {
  /// The Provider that contains all patients stored (even temporarily) on the
  /// device.
  ///
  /// Copied from [NewEncounter].
  NewEncounterProvider(
    this.type, [
    this.dateTime,
  ]) : super.internal(
          () => NewEncounter()
            ..type = type
            ..dateTime = dateTime,
          from: newEncounterProvider,
          name: r'newEncounterProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$newEncounterHash,
          dependencies: NewEncounterFamily._dependencies,
          allTransitiveDependencies:
              NewEncounterFamily._allTransitiveDependencies,
        );

  final EncounterType type;
  final DateTime? dateTime;

  @override
  bool operator ==(Object other) {
    return other is NewEncounterProvider &&
        other.type == type &&
        other.dateTime == dateTime;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);
    hash = _SystemHash.combine(hash, dateTime.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Encounter? runNotifierBuild(
    covariant NewEncounter notifier,
  ) {
    return notifier.build(
      type,
      dateTime,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
