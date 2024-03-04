import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _completed = false;
  bool get completed => _completed;
  set completed(bool _value) {
    _completed = _value;
  }

  DocumentReference? _currenttask;
  DocumentReference? get currenttask => _currenttask;
  set currenttask(DocumentReference? _value) {
    _currenttask = _value;
  }

  int _currentlistindex = 0;
  int get currentlistindex => _currentlistindex;
  set currentlistindex(int _value) {
    _currentlistindex = _value;
  }

  int _currenttaskforstudent = 0;
  int get currenttaskforstudent => _currenttaskforstudent;
  set currenttaskforstudent(int _value) {
    _currenttaskforstudent = _value;
  }

  String _currentSearchedUser = '';
  String get currentSearchedUser => _currentSearchedUser;
  set currentSearchedUser(String _value) {
    _currentSearchedUser = _value;
  }

  DocumentReference? _currentTaskForStudentInProgressUpdate;
  DocumentReference? get currentTaskForStudentInProgressUpdate =>
      _currentTaskForStudentInProgressUpdate;
  set currentTaskForStudentInProgressUpdate(DocumentReference? _value) {
    _currentTaskForStudentInProgressUpdate = _value;
  }

  List<String> _progressImageForStudent = [];
  List<String> get progressImageForStudent => _progressImageForStudent;
  set progressImageForStudent(List<String> _value) {
    _progressImageForStudent = _value;
  }

  void addToProgressImageForStudent(String _value) {
    _progressImageForStudent.add(_value);
  }

  void removeFromProgressImageForStudent(String _value) {
    _progressImageForStudent.remove(_value);
  }

  void removeAtIndexFromProgressImageForStudent(int _index) {
    _progressImageForStudent.removeAt(_index);
  }

  void updateProgressImageForStudentAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _progressImageForStudent[_index] =
        updateFn(_progressImageForStudent[_index]);
  }

  void insertAtIndexInProgressImageForStudent(int _index, String _value) {
    _progressImageForStudent.insert(_index, _value);
  }

  ProgressLogStruct _progressLog = ProgressLogStruct.fromSerializableMap(
      jsonDecode('{\"ProgressImage\":\"[]\"}'));
  ProgressLogStruct get progressLog => _progressLog;
  set progressLog(ProgressLogStruct _value) {
    _progressLog = _value;
  }

  void updateProgressLogStruct(Function(ProgressLogStruct) updateFn) {
    updateFn(_progressLog);
  }

  List<DocumentReference> _listOfVolunteers = [];
  List<DocumentReference> get listOfVolunteers => _listOfVolunteers;
  set listOfVolunteers(List<DocumentReference> _value) {
    _listOfVolunteers = _value;
  }

  void addToListOfVolunteers(DocumentReference _value) {
    _listOfVolunteers.add(_value);
  }

  void removeFromListOfVolunteers(DocumentReference _value) {
    _listOfVolunteers.remove(_value);
  }

  void removeAtIndexFromListOfVolunteers(int _index) {
    _listOfVolunteers.removeAt(_index);
  }

  void updateListOfVolunteersAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _listOfVolunteers[_index] = updateFn(_listOfVolunteers[_index]);
  }

  void insertAtIndexInListOfVolunteers(int _index, DocumentReference _value) {
    _listOfVolunteers.insert(_index, _value);
  }

  List<String> _QuestionList = [];
  List<String> get QuestionList => _QuestionList;
  set QuestionList(List<String> _value) {
    _QuestionList = _value;
  }

  void addToQuestionList(String _value) {
    _QuestionList.add(_value);
  }

  void removeFromQuestionList(String _value) {
    _QuestionList.remove(_value);
  }

  void removeAtIndexFromQuestionList(int _index) {
    _QuestionList.removeAt(_index);
  }

  void updateQuestionListAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _QuestionList[_index] = updateFn(_QuestionList[_index]);
  }

  void insertAtIndexInQuestionList(int _index, String _value) {
    _QuestionList.insert(_index, _value);
  }

  List<String> _OptionList = [];
  List<String> get OptionList => _OptionList;
  set OptionList(List<String> _value) {
    _OptionList = _value;
  }

  void addToOptionList(String _value) {
    _OptionList.add(_value);
  }

  void removeFromOptionList(String _value) {
    _OptionList.remove(_value);
  }

  void removeAtIndexFromOptionList(int _index) {
    _OptionList.removeAt(_index);
  }

  void updateOptionListAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _OptionList[_index] = updateFn(_OptionList[_index]);
  }

  void insertAtIndexInOptionList(int _index, String _value) {
    _OptionList.insert(_index, _value);
  }

  String _Question = '';
  String get Question => _Question;
  set Question(String _value) {
    _Question = _value;
  }

  int _QuestionNumber = 0;
  int get QuestionNumber => _QuestionNumber;
  set QuestionNumber(int _value) {
    _QuestionNumber = _value;
  }

  int _Points = 0;
  int get Points => _Points;
  set Points(int _value) {
    _Points = _value;
  }

  int _lengthofquestions = 0;
  int get lengthofquestions => _lengthofquestions;
  set lengthofquestions(int _value) {
    _lengthofquestions = _value;
  }

  List<DocumentReference> _ListOfDocuments = [];
  List<DocumentReference> get ListOfDocuments => _ListOfDocuments;
  set ListOfDocuments(List<DocumentReference> _value) {
    _ListOfDocuments = _value;
  }

  void addToListOfDocuments(DocumentReference _value) {
    _ListOfDocuments.add(_value);
  }

  void removeFromListOfDocuments(DocumentReference _value) {
    _ListOfDocuments.remove(_value);
  }

  void removeAtIndexFromListOfDocuments(int _index) {
    _ListOfDocuments.removeAt(_index);
  }

  void updateListOfDocumentsAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _ListOfDocuments[_index] = updateFn(_ListOfDocuments[_index]);
  }

  void insertAtIndexInListOfDocuments(int _index, DocumentReference _value) {
    _ListOfDocuments.insert(_index, _value);
  }

  int _currques = 0;
  int get currques => _currques;
  set currques(int _value) {
    _currques = _value;
  }

  List<int> _SelectedOptions = [];
  List<int> get SelectedOptions => _SelectedOptions;
  set SelectedOptions(List<int> _value) {
    _SelectedOptions = _value;
  }

  void addToSelectedOptions(int _value) {
    _SelectedOptions.add(_value);
  }

  void removeFromSelectedOptions(int _value) {
    _SelectedOptions.remove(_value);
  }

  void removeAtIndexFromSelectedOptions(int _index) {
    _SelectedOptions.removeAt(_index);
  }

  void updateSelectedOptionsAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _SelectedOptions[_index] = updateFn(_SelectedOptions[_index]);
  }

  void insertAtIndexInSelectedOptions(int _index, int _value) {
    _SelectedOptions.insert(_index, _value);
  }

  String _reportImage = '';
  String get reportImage => _reportImage;
  set reportImage(String _value) {
    _reportImage = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
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
