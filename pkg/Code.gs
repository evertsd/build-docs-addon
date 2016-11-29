/***********************  Main - Initialize the sidebar  **************************/
function onOpen(e) {
  DocumentApp.getUi().createAddonMenu()
             .addItem('Show Sidebar', 'showSidebar')
             .addToUi();
}

function onInstall(e) {
  onOpen(e);
}

function showSidebar() {
  var ui = HtmlService.createHtmlOutputFromFile('sidebar')
      .setTitle('Add-on Item');
  DocumentApp.getUi().showSidebar(ui);
}
