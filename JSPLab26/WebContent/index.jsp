
<html>

<body>
<h1>Select The File To Upload</h1>
<form action="upload.sunny" method="post" enctype="multipart/form-data">

<br /><h2>Select File1<input type="file" name="file" size="50"/></h2>
<br /><h2>Select File2<input type="file" name="file" size="50"/></h2>
<br /><h2>Select File3<input type="file" name="file" size="50"/></h2>
<br /><input type="submit" value="Upload File"/></h2>

</form>
</body>
</html>



<!-- enctype="multipart/form-data" :- Whenever upload file multipart/form-data is 
used for sending binary file from client to server 

1 file upload(say Select File1) as one part and since we can upload multiple file so
multipart
-->