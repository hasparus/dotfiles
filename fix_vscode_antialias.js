const cssPath = "/Applications/Visual Studio Code.app/Contents/Resources/app/out/vs/workbench/workbench.main.css";
const { exec } = require('child_process');
const { readFile, writeFile } = require('fs');

readFile(cssPath, 'utf-8', (err, content) => {
  if (err) throw err;
  writeFile(
    cssPath,
    content.replace(
      /\.editor-container{/g,
      '.editor-container{-webkit-font-smoothing: antialiased;'    
    ),
    err => {
      if (err) throw err;
      console.log("Fix successful.\n");
    },
  );
});

// exec(`code ${cssPath}`);
