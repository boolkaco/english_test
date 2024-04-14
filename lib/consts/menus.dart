import 'package:english_test/models/menu_model.dart';
import 'package:english_test/theme/app_colors.dart';

class Menus {
  static List<MenuModel> list = [
    MenuModel(
      url: 'assets/images/speak_decoration.svg',
      label: 'Speak',
      value: '2/6',
      color: AppColors.lightWater,
    ),
    MenuModel(
      url: 'assets/images/listen_decoration.svg',
      label: 'Listen',
      value: '5/6',
      color: AppColors.vanillaIce,
    ),
    MenuModel(
      url: 'assets/images/read_decoration.svg',
      label: 'Read',
      value: '3/6',
      color: AppColors.lola,
    ),
    MenuModel(
      url: 'assets/images/grammar_decoration.svg',
      label: 'Grammar',
      value: '2/6',
      color: AppColors.oldLace,
    ),
    MenuModel(
      url: 'assets/images/spelling_decoration.svg',
      label: 'Spelling',
      value: '5/6',
      color: AppColors.willowBrook,
    ),
    MenuModel(
      url: 'assets/images/vocabulary_decoration.svg',
      label: 'Vocabulary',
      value: '',
      color: AppColors.mystic,
    ),
  ];
}