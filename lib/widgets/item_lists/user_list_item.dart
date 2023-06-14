import 'package:active_you/business/models/person/person.dart';
import 'package:active_you/business/providers/session_provider/session_provider.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:active_you/widgets/buttons/follow_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserListItem extends ConsumerWidget {
  const UserListItem({Key? key, required this.person}) : super(key: key);

  final Person person;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(currentPersonProvider);
    bool isFemale = person.sex == "Female";

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: ActiveYouTheme.grayMediumColor.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  CircleAvatar(
                      radius: 30,
                      backgroundImage: isFemale
                          ? const AssetImage("assets/images/profile-mock/female.png")
                          : const AssetImage("assets/images/profile-mock/male.png")),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Text(
                      "${person.name} ${person.surname}",
                      style: const TextStyle(
                        fontFamily: "Poppins-Medium",
                        fontSize: 15,
                        color: ActiveYouTheme.textBlackColor,
                      ),
                    ),
                  ),
                  FollowButton(
                    status: currentUser!.following!.contains(person.id!)
                        ? "Unfollow"
                        : "Follow",
                    onClick: () {
                      currentUser.following!.contains(person.id!) ?
                      ref.read(sessionProvider.notifier).unfollowPerson(person.id!) :
                      ref.read(sessionProvider.notifier).followPerson(person);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
