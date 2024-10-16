part of "./home_cubit.dart";

class HomeState extends Equatable {
  final int currrentIndex;
  const HomeState({this.currrentIndex = 0});

  @override
  List<Object?> get props => [currrentIndex];

  HomeState copyWith({
    int? currrentIndex,
  }) {
    return HomeState(
      currrentIndex: currrentIndex ?? this.currrentIndex,
    );
  }
}
