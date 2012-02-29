<script type="javascript/text">
var moviename;
var http=new XMLHttpRequest();
http.open("GET","http://www.imdb.com/?t=" + moviename,false);
http.send(null);
var imdbdata=http.responceText;
var imdbjson=eval("("+imdbdata+")");

alert(imdbjson.Title);
alert(imdbjson.Director);
alert(imdbjson.Writer);
alert(imdbjson.Actors);
alert(imdbjson.Plot);
alert(imdbjson.Poster);

</script>

