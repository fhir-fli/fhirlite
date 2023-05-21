// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_pref_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sharedPrefHash() => r'90ff2c95772ad6c29d7f47721ff68a640ca94600';

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

abstract class _$SharedPref
    extends BuildlessAutoDisposeAsyncNotifier<SPInteraction> {
  late final SPInteraction interaction;

  Future<SPInteraction> build(
    SPInteraction interaction,
  );
}

/// See also [SharedPref].
@ProviderFor(SharedPref)
const sharedPrefProvider = SharedPrefFamily();

/// See also [SharedPref].
class SharedPrefFamily extends Family<AsyncValue<SPInteraction>> {
  /// See also [SharedPref].
  const SharedPrefFamily();

  /// See also [SharedPref].
  SharedPrefProvider call(
    SPInteraction interaction,
  ) {
    return SharedPrefProvider(
      interaction,
    );
  }

  @override
  SharedPrefProvider getProviderOverride(
    covariant SharedPrefProvider provider,
  ) {
    return call(
      provider.interaction,
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
  String? get name => r'sharedPrefProvider';
}

/// See also [SharedPref].
class SharedPrefProvider
    extends AutoDisposeAsyncNotifierProviderImpl<SharedPref, SPInteraction> {
  /// See also [SharedPref].
  SharedPrefProvider(
    this.interaction,
  ) : super.internal(
          () => SharedPref()..interaction = interaction,
          from: sharedPrefProvider,
          name: r'sharedPrefProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sharedPrefHash,
          dependencies: SharedPrefFamily._dependencies,
          allTransitiveDependencies:
              SharedPrefFamily._allTransitiveDependencies,
        );

  final SPInteraction interaction;

  @override
  bool operator ==(Object other) {
    return other is SharedPrefProvider && other.interaction == interaction;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, interaction.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<SPInteraction> runNotifierBuild(
    covariant SharedPref notifier,
  ) {
    return notifier.build(
      interaction,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
