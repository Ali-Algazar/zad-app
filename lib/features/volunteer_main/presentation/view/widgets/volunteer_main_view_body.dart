import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/core/cubit/nav_cubit.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/features/donor_main/presentation/view/widgets/donor_main_view_body.dart';
import 'package:zad/generated/l10n.dart';

class VolunteerMainViewBody extends StatefulWidget {
  const VolunteerMainViewBody({super.key});

  @override
  State<VolunteerMainViewBody> createState() => _VolunteerMainViewBodyState();
}

class _VolunteerMainViewBodyState extends State<VolunteerMainViewBody> {
  int currentIndex = 0;
  final List<Widget> pages = [
    Center(child: Text('Home')),
    Center(child: Text('My Tasks')),
    Center(child: Text('Notifications')),
    Center(child: Text('MyAccount')),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocListener<NavCubit, int>(
      listener: (context, state) {
        setState(() {
          currentIndex = state;
        });
      },
      child: Column(
        children: [
          Expanded(child: pages[currentIndex]),
          CustomVolunteerNavBar(currentIndex: currentIndex),
        ],
      ),
    );
  }
}

class CustomVolunteerNavBar extends StatelessWidget {
  const CustomVolunteerNavBar({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      // height: 85,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: AppColors.error, width: .5)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: .5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],

        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          NavBarItem(
            onTap: () {
              context.read<NavCubit>().changeNavIndex(0);
            },
            activeIconPath: 'assets/svg/homa_a.svg',
            iconPath: 'assets/svg/home.svg',
            isActive: currentIndex == 0,
            title: S.of(context).home,
          ),
          NavBarItem(
            onTap: () {
              context.read<NavCubit>().changeNavIndex(1);
            },
            activeIconPath: 'assets/svg/tasks_a.svg',
            iconPath: 'assets/svg/tasks.svg',
            isActive: currentIndex == 1,
            title: S.of(context).myTasks,
          ),
          NavBarItem(
            onTap: () {
              context.read<NavCubit>().changeNavIndex(2);
            },
            activeIconPath: 'assets/svg/notifications_a.svg',
            iconPath: 'assets/svg/notifications.svg',
            isActive: currentIndex == 2,
            title: S.of(context).notifications,
          ),
          NavBarItem(
            onTap: () {
              context.read<NavCubit>().changeNavIndex(3);
            },
            activeIconPath: 'assets/svg/account_a.svg',
            iconPath: 'assets/svg/account.svg',
            isActive: currentIndex == 3,
            title: S.of(context).myAccount,
          ),
        ],
      ),
    );
  }
}
