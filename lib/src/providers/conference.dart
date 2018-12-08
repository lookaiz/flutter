import 'package:flutter/widgets.dart';
import 'package:flutter_mktd/src/bloc/conferences/conference.dart';

class ConferenceProvider extends InheritedWidget {
  static ConferenceProvider of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(ConferenceProvider);

  ConferenceProvider({
    @required Widget child,
    @required this.conferenceBloc,
  }) : super(child: child);

  final ConferenceBloc conferenceBloc;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
