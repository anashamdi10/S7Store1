part of 'main_bloc.dart';

abstract class MainState extends Equatable {
  const MainState();
}

class MainInitial extends MainState {
  @override
  List<Object> get props => [];
}

class ChangeBottomNavState extends MainState{
  final int currentIndex;
  const ChangeBottomNavState(this.currentIndex);
  @override
  List<Object?> get props => [currentIndex];
}