import 'package:mobx/mobx.dart';
part 'faq.controller.g.dart';

class FaqController = FaqControllerBase with _$FaqController;

abstract class FaqControllerBase with Store {
  @observable
  late List<bool> panels = [false, false, false, false];

  @action
  void setExpansionPanels(int index) {
    panels[index] = !panels[index];
  }
}
