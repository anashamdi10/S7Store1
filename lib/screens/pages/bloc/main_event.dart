part of 'main_bloc.dart';

abstract class MainEvent extends Equatable {
  const MainEvent();
}

class ChangeBottomNavEvent extends MainEvent{
  int currentIndex ;
  ChangeBottomNavEvent(this.currentIndex);
  @override
  List<Object?> get props => [currentIndex];
}
