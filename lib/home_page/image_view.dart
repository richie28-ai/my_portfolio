import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageGalleryDialog extends StatefulWidget {
  final List<String> screenshots;

  const ImageGalleryDialog({Key? key, required this.screenshots}) : super(key: key);

  @override
  _ImageGalleryDialogState createState() => _ImageGalleryDialogState();
}

class _ImageGalleryDialogState extends State<ImageGalleryDialog> {
  int _currentIndex = 0;
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _navigateToPage(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: BorderSide(
          color: Colors.blueGrey,
          width: 2.0
        )
      ),
      elevation: 10.0,
      backgroundColor: Colors.transparent.withOpacity(0.8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        Padding(
          padding:  EdgeInsets.only(right: 16.0,top: 16),
          child: Align(alignment: Alignment.topRight,child:   IconButton(onPressed: (){
            Navigator.of(context).pop();

          }, icon: Icon(Icons.close,size: 42,color: Colors.white,)),),
        ),

          Expanded(
            child: AspectRatio(
              aspectRatio: 9 / 16,
              child: PageView.builder(
                // physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),


                itemCount: widget.screenshots.length,
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 16.0,right: 16.0,left: 16.0),
                    child: Image.asset(
                      widget.screenshots[index],
                      fit: BoxFit.contain,
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 16.0,right: 16.0,bottom: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: _currentIndex > 0
                      ? () => _navigateToPage(_currentIndex - 1)
                      : null,
                  icon: const Icon(Icons.arrow_back,color: Colors.white,size: 32.0,),
                ),
                Text('${_currentIndex + 1} / ${widget.screenshots.length}',style: GoogleFonts.nunitoSans(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                ),textAlign: TextAlign.center,),
                IconButton(
                  onPressed: _currentIndex < widget.screenshots.length - 1
                      ? () => _navigateToPage(_currentIndex + 1)
                      : null,
                  icon: const Icon(Icons.arrow_forward,color: Colors.white,size: 32.0,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
