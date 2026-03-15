import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zad/core/cubit/nav_cubit.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/features/home_donor/presentation/view/home_donor_view.dart';
import 'package:zad/features/my_donations/presentation/view/my_donations_view.dart';
import 'package:zad/features/notifications/presentation/view/notifications_view.dart';
import 'package:zad/features/profile/presentation/view/profile_view.dart';
import 'package:zad/generated/l10n.dart';

class DonorMainViewBody extends StatefulWidget {
  const DonorMainViewBody({super.key});

  @override
  State<DonorMainViewBody> createState() => _DonorMainViewBodyState();
}

class _DonorMainViewBodyState extends State<DonorMainViewBody> {
  final List<Widget> pages = [
    HomeDonorView(),
    MyDonationsView(),
    NotificationsView(),
    ProfileView(),
  ];
  int currentIndex = 0;
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
          Expanded(
            child: IndexedStack(index: currentIndex, children: pages),
          ),
          CustomDonorNavBar(currentIndex: currentIndex),
        ],
      ),
    );
  }
}

class CustomDonorNavBar extends StatelessWidget {
  const CustomDonorNavBar({super.key, required this.currentIndex});

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
            activeIconPath: 'assets/svg/donations_a.svg',
            iconPath: 'assets/svg/donations.svg',
            isActive: currentIndex == 1,
            title: S.of(context).myDonations,
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

class NavBarItem extends StatelessWidget {
  const NavBarItem({
    super.key,
    required this.isActive,
    required this.title,
    required this.iconPath,
    required this.activeIconPath,
    required this.onTap,
  });
  final bool isActive;
  final String title;
  final String iconPath;
  final String activeIconPath;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          SvgPicture.asset(
            isActive ? activeIconPath : iconPath,
            width: 24,
            height: 24,
          ),
          4.h,
          Text(
            title,
            style: TextStyle(
              color: isActive ? AppColors.primary : Color(0xff99A1AF),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
