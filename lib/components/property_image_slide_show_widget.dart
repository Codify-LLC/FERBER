import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PropertyImageSlideShowWidget extends StatefulWidget {
  const PropertyImageSlideShowWidget({
    Key? key,
    this.record,
  }) : super(key: key);

  final dynamic record;

  @override
  _PropertyImageSlideShowWidgetState createState() =>
      _PropertyImageSlideShowWidgetState();
}

class _PropertyImageSlideShowWidgetState
    extends State<PropertyImageSlideShowWidget> {
  PageController? pageViewController;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          constraints: BoxConstraints(
            maxHeight: 150,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryColor,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
                  child: Text(
                    'Property Images',
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'Nunito',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () async {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () async {
                  await pageViewController?.previousPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                },
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1,
                  decoration: BoxDecoration(),
                  child: Builder(
                    builder: (context) {
                      final propertyImageUrls = getJsonField(
                        widget.record,
                        r'''$.fields[ 'Property Image']''',
                      ).toList();
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 1,
                        child: Stack(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                              child: PageView.builder(
                                controller: pageViewController ??=
                                    PageController(
                                        initialPage: min(
                                            0, propertyImageUrls.length - 1)),
                                scrollDirection: Axis.horizontal,
                                itemCount: propertyImageUrls.length,
                                itemBuilder: (context, propertyImageUrlsIndex) {
                                  final propertyImageUrlsItem =
                                      propertyImageUrls[propertyImageUrlsIndex];
                                  return Image.network(
                                    getJsonField(
                                      propertyImageUrlsItem,
                                      r'''$.url''',
                                    ),
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  );
                                },
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 1),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                child:
                                    smooth_page_indicator.SmoothPageIndicator(
                                  controller: pageViewController ??=
                                      PageController(
                                          initialPage: min(
                                              0, propertyImageUrls.length - 1)),
                                  count: propertyImageUrls.length,
                                  axisDirection: Axis.horizontal,
                                  onDotClicked: (i) {
                                    pageViewController!.animateToPage(
                                      i,
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.ease,
                                    );
                                  },
                                  effect:
                                      smooth_page_indicator.ExpandingDotsEffect(
                                    expansionFactor: 2,
                                    spacing: 8,
                                    radius: 16,
                                    dotWidth: 12,
                                    dotHeight: 12,
                                    dotColor: Color(0xFF9E9E9E),
                                    activeDotColor: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    paintStyle: PaintingStyle.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () async {
                  await pageViewController?.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
