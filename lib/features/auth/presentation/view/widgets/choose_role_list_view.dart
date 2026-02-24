import 'package:flutter/material.dart';
import 'package:zad/features/auth/presentation/view/widgets/choose_role_container.dart';

class ChooseRoleListView extends StatelessWidget {
  const ChooseRoleListView({
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
    return ListView.builder(
      itemCount: roleTitle.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 16),
        child: InkWell(
          onTap: () {
            onChanged(index);
          },
          child: ChooseRoleContainer(
            isAc: index == indexRole,
            titel: roleTitle[index],
          ),
        ),
      ),
    );
  }
}
