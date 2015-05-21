function printPage() {
  var recipeInfo = document.getElementById('recipe-info');
  var newWin = window.open('', '_blank', 'height=550, width=600, toolbar=no, menubar-no, scrollbars=yes');
  newWin.document.write('<!DOCTYPE html><html><head><title>Print Recipe</title></head><body onload="window.print();">'
          + recipeInfo.innerHTML + '<p><strong>'
          + 'Recipe from RecipeBox, the Gathering Place for Food.</strong></p>'
          + '</body></html>');
  newWin.document.close();
  mewWin.print();
}