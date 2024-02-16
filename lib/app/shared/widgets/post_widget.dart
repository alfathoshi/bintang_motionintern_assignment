import 'package:deep_dive_get_cli/app/data/model/post_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Post extends StatelessWidget {
  final PostModel postModel;
  final void Function()? onPressed;
  const Post({
    super.key,
    required this.postModel,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13.0),
          child: Row(
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      strokeAlign: BorderSide.strokeAlignOutside,
                      width: 2,
                      color: Colors.red,
                    )),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: CircleAvatar(
                    radius: 14,
                    backgroundImage: AssetImage(
                      postModel.fotoProfile.isEmpty
                          ? ""
                          : 'assets/images/${postModel.postingGambar}.png',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      postModel.namaAkun.isEmpty ? "" : postModel.namaAkun,
                      style: GoogleFonts.roboto(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    postModel.isSponsor
                        ? Text(
                            "Sponsored",
                            style: GoogleFonts.roboto(
                              fontSize: 11,
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
              IconButton(
                onPressed: (){},
                icon: const Icon(
                  Icons.more_horiz,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Image.asset(
          'assets/images/${postModel.postingGambar}.png',
        ),
        const SizedBox(
          height: 9.25,
        ),
        Row(
          children: [
            IconButton(
              onPressed: onPressed,
              icon: ImageIcon(
                postModel.isLike
                    ? const AssetImage(
                        'assets/images/liked.png',
                      )
                    : const AssetImage('assets/images/like.png'),
                color: postModel.isLike ? Colors.red : Colors.black87,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(AssetImage('assets/images/comments.png')),
            ),
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(AssetImage('assets/images/share.png')),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13.0),
          child: Text(
            '${postModel.jumlahLike} Likes',
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13.0),
          child: RichText(
            text: TextSpan(
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 14,
              ),
              children: [
                TextSpan(
                    text: postModel.namaAkun,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                  text: postModel.description,
                )
              ],
            ),

            // '${postModel.namaAkun} ${postModel.description}',
          ),
        ),
      ],
    );
  }
}
