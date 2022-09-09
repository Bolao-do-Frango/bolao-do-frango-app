// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FaqController on FaqControllerBase, Store {
  late final _$panelsAtom =
      Atom(name: 'FaqControllerBase.panels', context: context);

  @override
  List<bool> get panels {
    _$panelsAtom.reportRead();
    return super.panels;
  }

  @override
  set panels(List<bool> value) {
    _$panelsAtom.reportWrite(value, super.panels, () {
      super.panels = value;
    });
  }

  late final _$FaqControllerBaseActionController =
      ActionController(name: 'FaqControllerBase', context: context);

  @override
  void setExpansionPanels(int index) {
    final _$actionInfo = _$FaqControllerBaseActionController.startAction(
        name: 'FaqControllerBase.setExpansionPanels');
    try {
      return super.setExpansionPanels(index);
    } finally {
      _$FaqControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
panels: ${panels}
    ''';
  }
}
