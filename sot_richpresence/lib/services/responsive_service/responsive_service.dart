class ResponsiveService {
  static double getPadding(double width) {
    if (width < 800) {
      return 0;
    } else if (width < 1200) {
      return (width-800)/2;
    } else if (width < 1600) {
      return (width-1200)/2;
    } else {
      return (width-1600)/2;
    }
  }

  static int getColumns(double width) {
    if (width < 800) {
      return 1;
    } else if (width < 1200) {
      return 2;
    } else if (width < 1600) {
      return 3;
    } else {
      return 4;
    }
  }
}
