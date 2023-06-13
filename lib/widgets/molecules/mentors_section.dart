import 'package:flutter/material.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/widgets/atoms/mentor_tile.dart';
import 'package:mm_flutter_app/widgets/atoms/section_tile.dart';

class MentorsSection extends StatelessWidget {
  const MentorsSection({Key? key}) : super(key: key);

  List<Widget> _createMentorTiles() {
    //TODO(m-rosario): Fetch data from backend instead of using hardcoded mocks.
    return const [
      MentorTile(
        avatarUrl:
            'https://media.istockphoto.com/id/1307694427/photo/portrait-of-businessman-in-glasses-holding-smartphone-in-hand.jpg?s=612x612&w=0&k=20&c=P4FDNemdXlXQi3O_yLePrJVzuTYmJx84-iIySj91fGQ=',
        mentorName: 'Mahesh Aksana',
        mentorLocation: 'Washington',
      ),
      MentorTile(
        avatarUrl:
            'https://media.istockphoto.com/id/1280371040/photo/confident-stylish-european-mature-middle-aged-woman-standing-at-workplace-stylish-older.jpg?s=612x612&w=0&k=20&c=AntzoG_Z1hN6tYVBXbu58Rvz4jweBYa8669bV75yWRw=',
        mentorName: 'Oneida Laurentine',
        mentorLocation: 'New York',
      ),
      MentorTile(
        avatarUrl:
            'https://www.blackenterprise.com/wp-content/blogs.dir/1/files/2019/06/iStock-525366712-e1571237677235.jpg',
        mentorName: 'Paul Allen',
        mentorLocation: 'Massachusetts',
      ),
      MentorTile(
        avatarUrl:
            'https://media.istockphoto.com/id/1160811064/photo/portrait-of-a-handsome-latin-man.jpg?s=612x612&w=0&k=20&c=MxkLwUFZ9ChfzFdB-OmmiWBnZrSioj9MmfSdlwCk4-4=',
        mentorName: 'Pedro Rosa',
        mentorLocation: 'Florida',
      ),
      MentorTile(
        avatarUrl:
            'https://st4.depositphotos.com/9999814/39958/i/600/depositphotos_399584092-stock-photo-attractive-young-woman-profile-portrait.jpg',
        mentorName: 'Nina Jeroen',
        mentorLocation: 'California',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SectionTile(
      title: 'Recommended Mentors',
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: Insets.widgetSmallInset),
          child: Row(
            children: _createMentorTiles(),
          ),
        ),
      ),
    );
  }
}
