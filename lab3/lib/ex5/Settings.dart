//5.1
class Settings {
  static Settings? _instance;

  Settings._();
//5.2
  factory Settings(){
    _instance ??= Settings._();
    return _instance!;
  }
}