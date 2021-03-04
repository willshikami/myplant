import 'package:async_redux/async_redux.dart';
import 'package:myplants/business/redux/app_state.dart';

class PlantStateAction extends ReduxAction<AppState> {
  final bool selectedPlant;

  PlantStateAction({
    this.selectedPlant,
  });

  @override
  AppState reduce() {
    return state.rebuild((AppStateBuilder b) => b
      ..plantState = state.plantState.copy(
        selectedPlant: selectedPlant,
      ));
  }
}
