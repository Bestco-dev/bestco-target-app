import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/res/gaps.dart';
import '../../../view_models/auth/user_view_model.dart';

class AccountInfo extends ConsumerWidget {
  const AccountInfo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userViewModelProvider);

    return SizedBox(
      width: double.infinity,
      // height: 360,
      child: user == null
          ? const SizedBox()
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ResVerticalGap.gap03,
                SafeArea(
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white70,
                      border: Border.all(
                        width: 2,
                        color: const Color(0xffe8e8e8),
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        // FakeImages.randomImage(),
                        user.avatarUrl ?? '',
                      ),
                      // backgroundImage: AssetImage('assets/images/logo.png'),
                    ),
                  ),
                ),
                ResVerticalGap.gap05,
                Text(
                  user.name ?? '',
                  textAlign: TextAlign.center,
                  // maxLines: 1,
                  // overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.white,
                      ),
                ),
                ResVerticalGap.gap03,
                Text(
                  // "job title",
                  user.jobTitle ?? '',
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                ResVerticalGap.gap03,
                Text(
                  // "company",
                  user.company.name ?? '',
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
    );
  }
}
