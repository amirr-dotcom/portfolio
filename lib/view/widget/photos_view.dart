import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PhotosView extends StatefulWidget {

  final List<String> images;

  const PhotosView({super.key, required this.images});

  @override
  State<PhotosView> createState() => _PhotosViewState();
}

class _PhotosViewState extends State<PhotosView> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CarouselSlider.builder(
            options: CarouselOptions(
              viewportFraction: 1,
              initialPage: 0,
              autoPlay: true,
              autoPlayAnimationDuration: const Duration(seconds: 3),
              enableInfiniteScroll: true,
              scrollDirection: Axis.horizontal,
              onPageChanged: ((index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              }),
            ),
            itemCount: widget.images.length,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              String image = widget.images[index];
              return CachedNetworkImage(
                imageUrl: image,
                imageBuilder: (context, imageProvider) =>
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: imageProvider,
                        ),
                        borderRadius: BorderRadius.circular(40)
                      ),
                    ),
                placeholder: (context, url) => const Icon(Icons.error),
                errorWidget: (context, url, error) => const Center(child: CircularProgressIndicator()),
              );
            },
          ),
        ),
        const SizedBox(height: 20,),
        Wrap(
          alignment: WrapAlignment.center,
          children: widget.images.asMap().entries.map((entry) {
            return Container(
              width: 8.0,
              height: 8.0,
              margin: const EdgeInsets.symmetric(
                  vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(
                    _currentIndex == entry.key ? 0.9 : 0.4),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}