import 'package:flutter/material.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/features/auth/presentation/view/widgets/register/choose_role_list_view.dart';
import 'package:zad/generated/l10n.dart';

class ChooseRole extends StatelessWidget {
  const ChooseRole({
    super.key,
    required this.roleTitle,
    required this.indexRole,
    required this.onChanged,
  });

  final List<String> roleTitle;
  final int indexRole;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              S.of(context).chooseRole,
              style: AppTextStyles.textStyle14Medium,
            ),
            Text(
              '*',
              style: AppTextStyles.textStyle14Medium.copyWith(
                color: AppColors.primary,
              ),
            ),
          ],
        ),
        // 16.h,
        ChooseRoleListView(
          roleTitle: roleTitle,
          indexRole: indexRole,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
