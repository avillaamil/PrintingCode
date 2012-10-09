class ModularGrid
{
  int cols;
  int rows;
  float gutterSize;
  float pageMargin;
  
  // array called 'modules' inside the module class
  Module[][] modules;
  float moduleWidth;
  float moduleHeight;
  
  // this constructor requires 4 arguments
  ModularGrid(int _cols, int _rows, float _gutterSize, float _pageMargin){
    cols = _cols;
    rows = _rows;
    gutterSize = _gutterSize;
    pageMargin = _pageMargin;
    
    //construct the array with these arguments 
    modules = new Module[cols][rows];
    
  //construct the array with these arguments 
    modules = new Module[cols][rows];
    
 
 // ~~~~~~~~~~~~~DEFINING WIDTH~~~~~~~~~~~~~~~~~~~   
    // First we find the width of the page without the pagemargin
    float actualPageWidth = ((float)canvas.width - (2*pageMargin));
    // then we find the gutter sizes. We subtract by 1 as the furthermost right module will not have a right-side gutter
    float totalGutterWidth = (cols-1) * gutterSize;
    // then we simply find the column size by subtracting the gutterwidth from the page size and dividing by number of cols
    moduleWidth = (actualPageWidth - totalGutterWidth) / (float)cols;


 // ~~~~~~~~~~~~~DEFINING HEIGHT~~~~~~~~~~~~~~~~~~~     
    // grid height = height of the canvas - the top & bottom page margins
    float actualPageHeight = ((float)canvas.height - (2*pageMargin));
    // the total height of our gutters is the height of each gutter * how many gutters (always 1 less than # of rows)
    float totalGutterHeight = (rows-1) * gutterSize;
    // same process as above
    moduleHeight = (actualPageHeight - totalGutterHeight) / (float)rows;

    // modules get placed in a 2D array, the for loops are creating the rows and columns?
    for(int i = 0; i < cols; i++){
      for(int j = 0; j < rows; j++){
        
         // create array from the Module class and define the arguments the class requires
        modules[i][j] = new Module();
        modules[i][j].x = pageMargin + (i*moduleWidth) + (i*gutterSize);
        modules[i][j].y = pageMargin + (j*moduleHeight) + (j*gutterSize);
        modules[i][j].w = moduleWidth;
        modules[i][j].h = moduleHeight;
      } 
    }
  }
  
  Module getRandomModule(int numModulesHorizontal, int numModulesVertical){
    // first we find all col and row indexes of unused modules
    ArrayList<int[]> notUsedIndexes = new ArrayList();
    
    for(int i = 0; i < cols; i++){
      for(int j = 0; j < rows; j++){
        if(!modules[i][j].used){
          int[] index = {i, j};
          notUsedIndexes.add(index);
        }
      }
    }
    
    // if we didnt find any, return null
    if(notUsedIndexes.size() == 0){
      return null; 
    }
    
    // now select a random module from these
    int ranIndex = floor(random(notUsedIndexes.size()));
    int selectedCol = notUsedIndexes.get(ranIndex)[0];
    int selectedRow = notUsedIndexes.get(ranIndex)[1];
    
    // if there are less modules to right side, make this the new hor number
    int modulesToRightEdge = cols - selectedCol;
    if(modulesToRightEdge < numModulesHorizontal){
      numModulesHorizontal = modulesToRightEdge;
    }
    
    // if there are less modules to the bottom, make this the new ver number
    int modulesToBottomEdge = rows - selectedRow;
    if(modulesToBottomEdge < numModulesVertical){
      numModulesVertical = modulesToBottomEdge;
    }
    
    // now search first row for used modules to determine new hor number
    for(int i = 0; i < numModulesHorizontal; i++){
      if(modules[selectedCol + i][selectedRow].used){
        numModulesHorizontal = i;
      }
    }
            
    // now search rows underneath to determine new ver number. We use the usedFound boolean to make sure
    // we break out of both loops after we found a used module
    boolean usedFound = false;
    
    for(int i = 0; i < numModulesVertical; i++){
      if(usedFound) break;
      
      for(int j = 0; j < numModulesHorizontal; j++){
        if(modules[selectedCol + j][selectedRow + i].used){
          numModulesVertical = i;
          usedFound = true;
          break;
        }
      }
    }
    
    // now set all modules covered by our new area to used = true
    for(int i = 0; i < numModulesHorizontal; i++){
      for(int j = 0; j < numModulesVertical; j++){
        modules[selectedCol + i][selectedRow + j].used = true;
      }
    }
     
    // find the top left module and the bottom right module just as a help
    Module topLeft = modules[selectedCol][selectedRow];
    Module bottomRight = modules[selectedCol + (numModulesHorizontal - 1)][selectedRow + (numModulesVertical - 1)];
    
    // create new module with our calculated area and return
    Module bigModule = new Module(); 
    bigModule.x = topLeft.x;
    bigModule.y = topLeft.y;
    bigModule.w = (bottomRight.x + bottomRight.w) - topLeft.x;
    bigModule.h = (bottomRight.y + bottomRight.h) - topLeft.y;
    
    // return new module
    return bigModule;
  }
  
  void display()
  {
    canvas.noFill();
    canvas.stroke(255, 0, 0, 100);
    
    // draw the big bounding box
    canvas.rect(pageMargin, pageMargin, width - (2*pageMargin), height - (2*pageMargin));
    
    // draw all modules
    for(int i = 0; i < cols; i++)
    {
      for(int j = 0; j < rows; j++)
      {
        canvas.rect(modules[i][j].x, modules[i][j].y, modules[i][j].w, modules[i][j].h);
      } 
    }
  }
}
