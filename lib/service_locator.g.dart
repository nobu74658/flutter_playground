// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_locator.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$courseRepositoryHash() => r'70879fe2e8a7a47b3d0de2a52c91436d843e955e';

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

/// See also [courseRepository].
@ProviderFor(courseRepository)
const courseRepositoryProvider = CourseRepositoryFamily();

/// See also [courseRepository].
class CourseRepositoryFamily extends Family<CourseRepository> {
  /// See also [courseRepository].
  const CourseRepositoryFamily();

  /// See also [courseRepository].
  CourseRepositoryProvider call({
    required String areaId,
    required String producerId,
  }) {
    return CourseRepositoryProvider(
      areaId: areaId,
      producerId: producerId,
    );
  }

  @override
  CourseRepositoryProvider getProviderOverride(
    covariant CourseRepositoryProvider provider,
  ) {
    return call(
      areaId: provider.areaId,
      producerId: provider.producerId,
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
  String? get name => r'courseRepositoryProvider';
}

/// See also [courseRepository].
class CourseRepositoryProvider extends Provider<CourseRepository> {
  /// See also [courseRepository].
  CourseRepositoryProvider({
    required String areaId,
    required String producerId,
  }) : this._internal(
          (ref) => courseRepository(
            ref as CourseRepositoryRef,
            areaId: areaId,
            producerId: producerId,
          ),
          from: courseRepositoryProvider,
          name: r'courseRepositoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$courseRepositoryHash,
          dependencies: CourseRepositoryFamily._dependencies,
          allTransitiveDependencies:
              CourseRepositoryFamily._allTransitiveDependencies,
          areaId: areaId,
          producerId: producerId,
        );

  CourseRepositoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.areaId,
    required this.producerId,
  }) : super.internal();

  final String areaId;
  final String producerId;

  @override
  Override overrideWith(
    CourseRepository Function(CourseRepositoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CourseRepositoryProvider._internal(
        (ref) => create(ref as CourseRepositoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        areaId: areaId,
        producerId: producerId,
      ),
    );
  }

  @override
  ProviderElement<CourseRepository> createElement() {
    return _CourseRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CourseRepositoryProvider &&
        other.areaId == areaId &&
        other.producerId == producerId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, areaId.hashCode);
    hash = _SystemHash.combine(hash, producerId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CourseRepositoryRef on ProviderRef<CourseRepository> {
  /// The parameter `areaId` of this provider.
  String get areaId;

  /// The parameter `producerId` of this provider.
  String get producerId;
}

class _CourseRepositoryProviderElement extends ProviderElement<CourseRepository>
    with CourseRepositoryRef {
  _CourseRepositoryProviderElement(super.provider);

  @override
  String get areaId => (origin as CourseRepositoryProvider).areaId;
  @override
  String get producerId => (origin as CourseRepositoryProvider).producerId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
