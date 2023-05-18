// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'atsign_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$atSignUpdateFhirResourceHash() =>
    r'63482e37d59a822fb98b38bd708ae53778ad4a20';

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

abstract class _$AtSignUpdateFhirResource
    extends BuildlessAutoDisposeAsyncNotifier<SuccessOrErrorMessage> {
  late final Resource resource;

  Future<SuccessOrErrorMessage> build(
    Resource resource,
  );
}

/// Provider writes to your atsign and returns a message of success or failure
///
/// Copied from [AtSignUpdateFhirResource].
@ProviderFor(AtSignUpdateFhirResource)
const atSignUpdateFhirResourceProvider = AtSignUpdateFhirResourceFamily();

/// Provider writes to your atsign and returns a message of success or failure
///
/// Copied from [AtSignUpdateFhirResource].
class AtSignUpdateFhirResourceFamily
    extends Family<AsyncValue<SuccessOrErrorMessage>> {
  /// Provider writes to your atsign and returns a message of success or failure
  ///
  /// Copied from [AtSignUpdateFhirResource].
  const AtSignUpdateFhirResourceFamily();

  /// Provider writes to your atsign and returns a message of success or failure
  ///
  /// Copied from [AtSignUpdateFhirResource].
  AtSignUpdateFhirResourceProvider call(
    Resource resource,
  ) {
    return AtSignUpdateFhirResourceProvider(
      resource,
    );
  }

  @override
  AtSignUpdateFhirResourceProvider getProviderOverride(
    covariant AtSignUpdateFhirResourceProvider provider,
  ) {
    return call(
      provider.resource,
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
  String? get name => r'atSignUpdateFhirResourceProvider';
}

/// Provider writes to your atsign and returns a message of success or failure
///
/// Copied from [AtSignUpdateFhirResource].
class AtSignUpdateFhirResourceProvider
    extends AutoDisposeAsyncNotifierProviderImpl<AtSignUpdateFhirResource,
        SuccessOrErrorMessage> {
  /// Provider writes to your atsign and returns a message of success or failure
  ///
  /// Copied from [AtSignUpdateFhirResource].
  AtSignUpdateFhirResourceProvider(
    this.resource,
  ) : super.internal(
          () => AtSignUpdateFhirResource()..resource = resource,
          from: atSignUpdateFhirResourceProvider,
          name: r'atSignUpdateFhirResourceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$atSignUpdateFhirResourceHash,
          dependencies: AtSignUpdateFhirResourceFamily._dependencies,
          allTransitiveDependencies:
              AtSignUpdateFhirResourceFamily._allTransitiveDependencies,
        );

  final Resource resource;

  @override
  bool operator ==(Object other) {
    return other is AtSignUpdateFhirResourceProvider &&
        other.resource == resource;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, resource.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<SuccessOrErrorMessage> runNotifierBuild(
    covariant AtSignUpdateFhirResource notifier,
  ) {
    return notifier.build(
      resource,
    );
  }
}

String _$atSignGetFhirResourceHash() =>
    r'f1ff73568386136d1a3d01171622c84ba0171363';

abstract class _$AtSignGetFhirResource
    extends BuildlessAutoDisposeAsyncNotifier<Resource> {
  late final R4ResourceType resourceType;
  late final String id;

  Future<Resource> build(
    R4ResourceType resourceType,
    String id,
  );
}

/// Provider requests a resource from your atsign
///
/// Copied from [AtSignGetFhirResource].
@ProviderFor(AtSignGetFhirResource)
const atSignGetFhirResourceProvider = AtSignGetFhirResourceFamily();

/// Provider requests a resource from your atsign
///
/// Copied from [AtSignGetFhirResource].
class AtSignGetFhirResourceFamily extends Family<AsyncValue<Resource>> {
  /// Provider requests a resource from your atsign
  ///
  /// Copied from [AtSignGetFhirResource].
  const AtSignGetFhirResourceFamily();

  /// Provider requests a resource from your atsign
  ///
  /// Copied from [AtSignGetFhirResource].
  AtSignGetFhirResourceProvider call(
    R4ResourceType resourceType,
    String id,
  ) {
    return AtSignGetFhirResourceProvider(
      resourceType,
      id,
    );
  }

  @override
  AtSignGetFhirResourceProvider getProviderOverride(
    covariant AtSignGetFhirResourceProvider provider,
  ) {
    return call(
      provider.resourceType,
      provider.id,
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
  String? get name => r'atSignGetFhirResourceProvider';
}

/// Provider requests a resource from your atsign
///
/// Copied from [AtSignGetFhirResource].
class AtSignGetFhirResourceProvider
    extends AutoDisposeAsyncNotifierProviderImpl<AtSignGetFhirResource,
        Resource> {
  /// Provider requests a resource from your atsign
  ///
  /// Copied from [AtSignGetFhirResource].
  AtSignGetFhirResourceProvider(
    this.resourceType,
    this.id,
  ) : super.internal(
          () => AtSignGetFhirResource()
            ..resourceType = resourceType
            ..id = id,
          from: atSignGetFhirResourceProvider,
          name: r'atSignGetFhirResourceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$atSignGetFhirResourceHash,
          dependencies: AtSignGetFhirResourceFamily._dependencies,
          allTransitiveDependencies:
              AtSignGetFhirResourceFamily._allTransitiveDependencies,
        );

  final R4ResourceType resourceType;
  final String id;

  @override
  bool operator ==(Object other) {
    return other is AtSignGetFhirResourceProvider &&
        other.resourceType == resourceType &&
        other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, resourceType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<Resource> runNotifierBuild(
    covariant AtSignGetFhirResource notifier,
  ) {
    return notifier.build(
      resourceType,
      id,
    );
  }
}

String _$atSignGetAllFhirResourcesHash() =>
    r'89e6068e983235be33b9ac27d5a7d29007419491';

/// Provider requests a resource from your atsign
///
/// Copied from [AtSignGetAllFhirResources].
@ProviderFor(AtSignGetAllFhirResources)
final atSignGetAllFhirResourcesProvider = AutoDisposeAsyncNotifierProvider<
    AtSignGetAllFhirResources, List<Resource>>.internal(
  AtSignGetAllFhirResources.new,
  name: r'atSignGetAllFhirResourcesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$atSignGetAllFhirResourcesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AtSignGetAllFhirResources = AutoDisposeAsyncNotifier<List<Resource>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
