void selectAllAtOnceGo(
    Map<int, bool> selectedItem, bool isSelectItem, Function setState) {
  bool isFalseAvailable = selectedItem.containsValue(false);
  selectedItem.updateAll((key, value) => isFalseAvailable);
  setState(() {
    isSelectItem = selectedItem.containsValue(true);
  });
}
