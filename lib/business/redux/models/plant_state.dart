class PlantState {
  final String appTitle;
  final bool selectedPlant;

  PlantState({
    this.selectedPlant,
    this.appTitle,
  });

  PlantState copy({bool selectedPlant, String appTitle}) {
    return PlantState(
      selectedPlant: selectedPlant ?? this.selectedPlant,
      appTitle: appTitle ?? this.appTitle,
    );
  }

  static PlantState initialState() => PlantState(
        selectedPlant: false,
        appTitle: 'UNKNOWN',
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is PlantState &&
            appTitle == other.appTitle &&
            selectedPlant == other.selectedPlant;
  }

  @override
  int get hashCode => appTitle.hashCode ^ appTitle.hashCode;
}
