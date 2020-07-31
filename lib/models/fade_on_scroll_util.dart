// Copyright 2020 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

/// Util class to make a animation of fade in a widget.
class FadeOnScroll extends StatefulWidget {
  /// Scroll Controller to manage the opacity change.
  final ScrollController scrollController;

  /// Offset to know when to have zero opacity on the widget.
  final double zeroOpacityOffset;

  /// Offset to know when to have full opacity on the widget.
  final double fullOpacityOffset;

  /// Widget to be changed.
  final Widget child;

  /// Constructor
  FadeOnScroll(
      {Key key,
      @required this.scrollController,
      @required this.child,
      this.zeroOpacityOffset = 0,
      this.fullOpacityOffset = 0});

  @override
  _FadeOnScrollState createState() => _FadeOnScrollState();
}

class _FadeOnScrollState extends State<FadeOnScroll> {
  /// Actual offset of the scrolling.
  double _offset;

  /// Inital function
  @override
  initState() {
    super.initState();

    /// Set the actual offset.
    _offset = widget.scrollController.offset;

    /// Add listener.
    widget.scrollController.addListener(_setOffset);
  }

  @override
  dispose() {
    /// Remove listener.
    widget.scrollController.removeListener(_setOffset);
    super.dispose();
  }

  /// Function to set the offset to scrolling offset.
  void _setOffset() {
    setState(() {
      _offset = widget.scrollController.offset;
    });
  }

  /// Calculate the opacity of the widget.
  double _calculateOpacity() {
    return widget.fullOpacityOffset == widget.zeroOpacityOffset
        ? 1
        : widget.fullOpacityOffset > widget.zeroOpacityOffset
            ?
            // Fading in
            _offset <= widget.zeroOpacityOffset
                ? 0
                : _offset >= widget.fullOpacityOffset
                    ? 1
                    : (_offset) / (widget.fullOpacityOffset)
            :
            // Fading out
            _offset <= widget.fullOpacityOffset
                ? 1
                : _offset >= widget.zeroOpacityOffset
                    ? 0
                    : 1 - ((_offset) / (widget.zeroOpacityOffset));
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: _calculateOpacity(),
      child: widget.child,
    );
  }
}
