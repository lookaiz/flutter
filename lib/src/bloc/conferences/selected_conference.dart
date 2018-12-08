import 'package:rxdart/rxdart.dart';
import 'package:flutter_mktd/src/models/conference.dart';

class SelectedConferenceBloc {
  final _conference = BehaviorSubject<Conference>();

  Sink<Conference> get selectConference => _conference.sink;

  ValueObservable<Conference> get conference => _conference.stream;

  void dispose() {
    _conference.close();
  }
}
