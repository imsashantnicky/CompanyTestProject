Flutter Color Changing Application

Overview
This Flutter application demonstrates how to change the background color of a screen using a button when it’s clicked.


Key Elements:  Here is used a list of colors to define the colors. The initial color is set based on the first item in this list.

List<Color> colors = [
  Colors.orange,
  Colors.green,
  Colors.blue,
  Colors.black,
  Colors.pink,
];  




The currentColor variable holds the current background color, and colorIndex tracks the index of the current color in the colors list. 

late Color currentColor; 
int colorIndex = 0;



This function is triggered when the button is pressed. It increments the colorIndex, and then updates currentColor to the new color. The setState method is used to update the UI with the new background color.

void changeScreenColor() {
  setState(() {
    colorIndex = (colorIndex + 1) % colors.length;
    currentColor = colors[colorIndex];
  });
}   
   






