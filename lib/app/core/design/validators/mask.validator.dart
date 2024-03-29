import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MaskValidator {
  static MaskTextInputFormatter cellphoneValidator = MaskTextInputFormatter(
    mask: '(##) # ####-####',
    filter: {'#': RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

    static MaskTextInputFormatter scoreValidator = MaskTextInputFormatter(
    mask: '##',
    filter: {'#': RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );
}
