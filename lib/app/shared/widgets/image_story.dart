import 'dart:math';

import 'package:deep_dive_get_cli/app/data/model/story_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageStory extends StatelessWidget {
  final StoryModel story;
  final void Function()? onTap;
  const ImageStory({
    super.key,
    required this.story,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: Stack(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    border: Border.all(
                        strokeAlign: BorderSide.strokeAlignOutside,
                        width: 2,
                        color: !story.isLoginAccount
                            ? Colors.red
                            : Colors.transparent),
                  ),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.transparent,
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/${story.image}.png'),
                      radius: 28,
                    ),
                  ),
                ),
                story.isLoginAccount
                    ? Align(
                        alignment: Alignment.bottomRight,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(50)),
                            width: 20,
                            height: 20,
                            child: const Icon(
                              Icons.add,
                              size: 16,
                              color: Colors.white,
                            ),
                          ),
                        ))
                    : const SizedBox(),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 72,
            child: Text(
              story.namaAkun,
              style: GoogleFonts.roboto(
                fontSize: 11.5,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
