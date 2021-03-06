import 'package:flutter/widgets.dart';
import 'package:flutter_mktd/src/bloc/conferences/conferences.dart';
import 'package:flutter_mktd/src/bloc/conferences/selected_conference.dart';

class MonkeyConfRootProvider extends InheritedWidget {
  static MonkeyConfRootProvider of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(MonkeyConfRootProvider);

  MonkeyConfRootProvider({
    @required Widget child,
    @required this.conferencesBloc,
    @required this.selectedConferenceBloc,
  }) : super(child: child);

  final ConferencesBloc conferencesBloc;
  final SelectedConferenceBloc selectedConferenceBloc;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
