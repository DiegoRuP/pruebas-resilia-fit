import '/components/navigationbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'pantalla_inicio_widget.dart' show PantallaInicioWidget;
import 'package:flutter/material.dart';

class PantallaInicioModel extends FlutterFlowModel<PantallaInicioWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for HomeCarousel widget.
  CarouselSliderController? homeCarouselController;
  int homeCarouselCurrentIndex = 3;

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // Model for Navigationbar component.
  late NavigationbarModel navigationbarModel;

  @override
  void initState(BuildContext context) {
    navigationbarModel = createModel(context, () => NavigationbarModel());
  }

  @override
  void dispose() {
    navigationbarModel.dispose();
  }
}
