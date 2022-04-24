part of 'more_bloc.dart';

abstract class MoreEvent extends Equatable {
  const MoreEvent();
}

class ArabicLanguageEvent extends MoreEvent{
  BuildContext context;
  ArabicLanguageEvent(this.context);
  @override
  List<Object?> get props => [context];
}

class EnglishLanguageEvent extends MoreEvent{
  BuildContext context;
  EnglishLanguageEvent(this.context);
  @override
  List<Object?> get props => [context];
}