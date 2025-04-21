typedef FactoryFunction<T> = T Function();

/// A simple service locator to register and retrieve services.
///
/// Example:
/// ```dart
/// Locator.registerLazySingleton(() => MyService());
/// final myService = Locator.get<MyService>();
/// ```
///
/// You can always use any other registered singleton within the factory, but you need to ensure the other
/// singleton is also registered in the locator.
///
/// ```dart
/// Locator.registerLazySingleton(() => MyRepository());
/// Locator.registerLazySingleton(() => MyService(Locator.get<MyRepository>());
/// final myService = Locator.get<MyService>();
/// ```
class Locator {
  /// Get a singleton instance of [T].
  static T get<T>() => _Locator.instance.get<T>();

  /// Register a lazy singleton factory function for [T].
  ///
  /// The factory function will only be called once and the instance will be cached.
  static void registerLazySingleton<T>(FactoryFunction<T> factoryFunction) =>
      _Locator.instance.registerLazySingleton(factoryFunction);

  /// Reset the locator to its initial state, removing all registered services.
  static void reset() => _Locator.instance.reset();
}

class _Locator {
  _Locator._internal();

  static final _Locator instance = _Locator._internal();

  final _factories = <Type, FactoryFunction>{};
  final _singletons = <Type, dynamic>{};

  // Register a factory function
  void registerLazySingleton<T>(FactoryFunction<T> factoryFunction) {
    _factories[T] = factoryFunction;
  }

  // Retrieve instance, instantiate lazily if needed
  T get<T>() {
    if (_singletons.containsKey(T)) {
      return _singletons[T] as T;
    }

    final factoryFunction = _factories[T];
    if (factoryFunction == null) {
      throw Exception("Factory for type $T not registered");
    }

    final instance = factoryFunction();
    _singletons[T] = instance;
    return instance;
  }

  // For testing purposes: reset the locator
  void reset() {
    _factories.clear();
    _singletons.clear();
  }
}
