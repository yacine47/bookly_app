import 'package:bookly_app/core/utils/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: AspectRatio(
        aspectRatio: 2.65 / 4,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) => Center(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset(AssetsData.loadingImage),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


// ClipRRect(
//       borderRadius: BorderRadius.circular(12),
//       child: AspectRatio(
//         aspectRatio: 2.65 / 4,
//         child: CachedNetworkImage(
//           imageUrl: imageUrl,
//           fit: BoxFit.fill,
//         ),
//       ),
//     );



// Container(
//         decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(14),
//             image: DecorationImage(
//               fit: BoxFit.cover,
//               image: NetworkImage(imageUrl),
//             )),
//       ),