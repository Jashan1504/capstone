
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
//final List<String> PDFs = <String>['assests/sample.pdf'];



class PDF_api extends StatefulWidget {


  @override
  _PDF_apiState createState() => _PDF_apiState();
}

class _PDF_apiState extends State<PDF_api> {
  late PdfViewerController _pdfViewerController;
  final GlobalKey<SfPdfViewerState> _pdfViewerStateKey = GlobalKey();
  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SfPdfViewer.asset('assets/CSE101.pdf',
              controller: _pdfViewerController,
              key: _pdfViewerStateKey),
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                  onPressed: () {
                    _pdfViewerStateKey.currentState!.openBookmarkView();
                  },
                  icon: const Icon(
                    Icons.bookmark,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {
                    _pdfViewerController.jumpToPage(5);
                  },
                  icon: const Icon(
                    Icons.arrow_drop_down_circle,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {
                    _pdfViewerController.zoomLevel = 1.25;
                  },
                  icon:const Icon(
                    Icons.zoom_in,
                    color: Colors.white,
                  ))
            ],
          ),
        ));
  }
}