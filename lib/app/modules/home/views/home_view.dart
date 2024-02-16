import 'package:deep_dive_get_cli/app/shared/widgets/image_story.dart';
import 'package:deep_dive_get_cli/app/shared/widgets/post_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/model/story_model.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Image.asset(
                'assets/images/IG logo.png',
                scale: 16,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.keyboard_arrow_down),
              )
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(AssetImage('assets/images/Icons3.png')),
            ),
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(AssetImage('assets/images/Icons2.png')),
            ),
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(AssetImage('assets/images/Icons.png')),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 8,
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey),
                  ),
                ),
                height: 90,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ListView.builder(
                    itemCount: controller.storyModel.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      StoryModel data = controller.storyModel[index];
                      return Padding(
                        padding: const EdgeInsets.only(
                          right: 12,
                        ),
                        child: ImageStory(
                          story: data,
                          onTap: () {
                            controller.toStoryPageView(data.storyItems);
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Post(
                postModel: controller.postModel,
                onPressed: controller.changeIconLike,
              ),
              const SizedBox(
                height: 18,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Discovery',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/reels.png'),
              ),
              label: 'Reels',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/shop.png'),
              ),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 13,
                backgroundImage: AssetImage('assets/images/foto_profile.png'),
              ),
              label: 'Profile',
            ),
          ],
        ),
      );
    });
  }
}
