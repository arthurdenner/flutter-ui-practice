import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:weather_calendar_app/src/models/weather_data.dart';
import 'package:weather_calendar_app/src/pages/widgets/conditions.dart';
import 'package:weather_calendar_app/src/pages/widgets/hour_slider.dart';
import 'package:weather_calendar_app/src/pages/widgets/quote.dart';
import 'package:weather_calendar_app/src/pages/widgets/temperature.dart';
import 'package:weather_calendar_app/src/utils/constants.dart';
import 'package:weather_calendar_app/src/utils/debouncer.dart';
import 'package:weather_calendar_app/src/utils/format.dart';
import 'package:weather_calendar_app/src/utils/media_query.dart';

class Details extends StatefulWidget {
  const Details({
    Key key,
    @required this.activeIndex,
    @required this.onChangeTime,
    @required this.temperature,
  })  : assert(temperature != null),
        super(key: key);

  final int activeIndex;
  final VoidCallback onChangeTime;
  final num temperature;

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final _debouncer = Debouncer();
  final _scrollController = ScrollController();
  String _key;
  AnimationController _controller;
  double _activeValue = 8;
  WeatherData _data = WeatherData(8);

  @override
  void initState() {
    super.initState();
    _key = DateTime.now().toString();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  void didUpdateWidget(Details oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.activeIndex != widget.activeIndex) {
      _updateDetails();
    }
  }

  void _updateDetails([bool changeTime = false]) {
    if (changeTime) {
      widget.onChangeTime();
    }

    _controller.forward()
      ..then((value) {
        _scrollController.animateTo(
          0.0,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );

        setState(() {
          _key = DateTime.now().toString();
          _data = WeatherData(_activeValue);
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    final isSm = isSmBreakpoint(context);

    return Expanded(
      flex: isSm ? 4 : 2,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.purple,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
          ),
        ),
        child: _buildList(),
      ),
    );
  }

  Widget _buildList() {
    final isSm = isSmBreakpoint(context);
    final children = _buildChildren(isSm);

    return ListView(
      children: children,
      controller: _scrollController,
      padding: EdgeInsets.symmetric(vertical: 30),
      physics: ClampingScrollPhysics(),
    );
  }

  List<Widget> _buildChildren(bool isSm) {
    final mainAlignment =
        isSm ? MainAxisAlignment.spaceBetween : MainAxisAlignment.start;

    return <Widget>[
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: mainAlignment,
          children: <Widget>[
            Temperature(value: widget.temperature),
            if (isSm) _buildAnimation(),
          ],
        ),
      ),
      Container(
        key: Key(_key),
        child: FadeOut(
          manualTrigger: true,
          controller: (c) => _controller = c,
          child: SlideInUp(
            from: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildTime(),
                SizedBox(height: 50),
                _buildConditionsAndQuote(),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
      HourSlider(
        onChange: _setActiveValue,
        value: _activeValue,
      ),
    ];
  }

  Widget _buildTime() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Text(
        '${formatHour(_data.hour)}, Heavy rain',
        style: TextStyle(
          color: AppColors.lightBlue,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          height: 1,
        ),
      ),
    );
  }

  Widget _buildConditionsAndQuote() {
    final isSm = isSmBreakpoint(context);
    final children = [
      isSm ? Expanded(child: Conditions(data: _data)) : Conditions(data: _data),
      isSm
          ? Expanded(child: Quote(quote: _data.sentence))
          : Quote(quote: _data.sentence),
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Flex(
        direction: isSm ? Axis.horizontal : Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: children,
      ),
    );
  }

  Widget _buildAnimation() {
    return Placeholder(
      fallbackHeight: 100,
      fallbackWidth: 100,
    );
  }

  void _setActiveValue(value) {
    setState(() => _activeValue = value);
    _debouncer.run(() => _updateDetails(true));
  }
}
