# flutter_pip_view

## Usage

Create a PIPView widget, the prop builder will be the view rendered floating when requested. To present a view below the floating view use PIPView.of(context).presentBelow(MyWidget()).

Props:

* avoidKeyboard: whether the floating view should avoid the keyboard.
* builder: a builder for the widget to float, the second parameter indicates if the view is floating.
* initialCorner: the corner in which the floating view will be sticked initially.
* Possible values are: `PIPViewCorner.topLeft`, `PIPViewCorner.topRight`, `PIPViewCorner.bottomLeft`, `PIPViewCorner.bottomRight`.
* floatingHeight: the height of the foreground view when floating. If not set, it is calculated from the `floatingWidth` to keep aspect ratio of the screen.
* floatingWidth: the width of the foreground view when floating. If not set and if `floatingHeight` is set, it is calculated from the `floatingHeight` value to keep aspect ratio of the screen. If both are not set, defaults to 100.0;
