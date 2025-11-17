import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _CurrentPage =
          await secureStorage.getString('ff_CurrentPage') ?? _CurrentPage;
    });
    await _safeInitAsync(() async {
      _Currentpage =
          await secureStorage.getString('ff_Currentpage') ?? _Currentpage;
    });
    await _safeInitAsync(() async {
      _savedEmail =
          await secureStorage.getString('ff_savedEmail') ?? _savedEmail;
    });
    await _safeInitAsync(() async {
      _rememberMe = await secureStorage.getBool('ff_rememberMe') ?? _rememberMe;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _CurrentPage = 'home';
  String get CurrentPage => _CurrentPage;
  set CurrentPage(String value) {
    _CurrentPage = value;
    secureStorage.setString('ff_CurrentPage', value);
  }

  void deleteCurrentPage() {
    secureStorage.delete(key: 'ff_CurrentPage');
  }

  String _Currentpage = '';
  String get Currentpage => _Currentpage;
  set Currentpage(String value) {
    _Currentpage = value;
    secureStorage.setString('ff_Currentpage', value);
  }

  void deleteCurrentpage() {
    secureStorage.delete(key: 'ff_Currentpage');
  }

  Color _colorBtnDesactivado = Color(4284744708);
  Color get colorBtnDesactivado => _colorBtnDesactivado;
  set colorBtnDesactivado(Color value) {
    _colorBtnDesactivado = value;
  }

  /// Botón de transfemoral presionado
  bool _isTransfemoralEnabled = false;
  bool get isTransfemoralEnabled => _isTransfemoralEnabled;
  set isTransfemoralEnabled(bool value) {
    _isTransfemoralEnabled = value;
  }

  bool _isTranshumeralEnabled = false;
  bool get isTranshumeralEnabled => _isTranshumeralEnabled;
  set isTranshumeralEnabled(bool value) {
    _isTranshumeralEnabled = value;
  }

  bool _isTransradialEnabled = false;
  bool get isTransradialEnabled => _isTransradialEnabled;
  set isTransradialEnabled(bool value) {
    _isTransradialEnabled = value;
  }

  bool _isTrasntibialEnabled = false;
  bool get isTrasntibialEnabled => _isTrasntibialEnabled;
  set isTrasntibialEnabled(bool value) {
    _isTrasntibialEnabled = value;
  }

  List<dynamic> _json = [];
  List<dynamic> get json => _json;
  set json(List<dynamic> value) {
    _json = value;
  }

  void addToJson(dynamic value) {
    json.add(value);
  }

  void removeFromJson(dynamic value) {
    json.remove(value);
  }

  void removeAtIndexFromJson(int index) {
    json.removeAt(index);
  }

  void updateJsonAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    json[index] = updateFn(_json[index]);
  }

  void insertAtIndexInJson(int index, dynamic value) {
    json.insert(index, value);
  }

  String _tipoAmputacionSeleccionada = '';
  String get tipoAmputacionSeleccionada => _tipoAmputacionSeleccionada;
  set tipoAmputacionSeleccionada(String value) {
    _tipoAmputacionSeleccionada = value;
  }

  String _savedEmail = '';
  String get savedEmail => _savedEmail;
  set savedEmail(String value) {
    _savedEmail = value;
    secureStorage.setString('ff_savedEmail', value);
  }

  void deleteSavedEmail() {
    secureStorage.delete(key: 'ff_savedEmail');
  }

  bool _rememberMe = false;
  bool get rememberMe => _rememberMe;
  set rememberMe(bool value) {
    _rememberMe = value;
    secureStorage.setBool('ff_rememberMe', value);
  }

  void deleteRememberMe() {
    secureStorage.delete(key: 'ff_rememberMe');
  }

  bool _searchisactive = false;
  bool get searchisactive => _searchisactive;
  set searchisactive(bool value) {
    _searchisactive = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
