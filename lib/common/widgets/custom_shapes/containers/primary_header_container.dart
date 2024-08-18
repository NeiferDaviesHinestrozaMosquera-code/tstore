import 'package:flutter/material.dart';
import 'package:tstore/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:tstore/common/widgets/custom_shapes/curved_edges/custom_curved_edge_widget.dart';
import 'package:tstore/utils/constants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key, required this.child,
  });

final Widget child;
  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        padding: EdgeInsets.all(0), 
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: TCirvularContainer(
                    backgroundColor: TColors.textWhite.withOpacity(0.1),
                  )),
              Positioned(
                  top: 100,
                  right: -300,
                  child: TCirvularContainer(
                    backgroundColor: TColors.textWhite.withOpacity(0.1),
                  )),
                  child,
            ],
          ),
        ),
      ),
    );
  }
}
