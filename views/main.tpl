<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Websivce test tool.">
<meta name="author" content="kingson.zhou">
<title>RestClient</title>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<link href="/static/css/bootstrap.css" type="text/css" rel="stylesheet">
<link href="/static/css/bootstrap.min.css" rel="stylesheet">
<link href="/static/css/jsonview.css" rel="stylesheet" >
<style>
body {
        padding-top: 40px; /* 60px to make the container go all the way to the bottom of the topbar */
        padding-left: 400px
      }
</style>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.js"></script>
<script type="text/javascript" src="/static/js/bootstrap.js"></script>
<script type="text/javascript" src="/static/js/jsonview.js"></script>
<script type="text/javascript" src="/static/js/jquery.tmpl.js"></script>
<script type="text/javascript" src="/static/js/app.js"></script>
</head>

<body>
<h1>RestClient TestTool</h1>
<div>
<form action='/send' method='POST'>
<p>API:<input type="text" size="200" maxlength="200" name="api"></p>
<div>
Method:
<input type="radio"  name="method" value = "get">Get
<input type="radio"  name="method" value = "post">Post
<input type="radio"  name="method" value = "put">Put
<input type="radio"  name="method" value = "delete">Delete
</div>
<p>Header:<input type="text" size="50" maxlength="500" name="header"></p>
<p>Payload:<input type="textarea" name="payload"></p>
<p>Content-Type：<select name="content_type">
<option>application/json</option>
<option>application/xml</option>
<option>test/html</option>
<option>test/plain</option>
</select></p>
<input type="button" name="clear" value="clear">
<input type="submit" name="send" value="send">
<div><p>Status:{{stauts}}</p></div>
<div><p>Request headers:{{request_headers}}</p></div>
<div><p>Response headers:{{response_headers}}</p></div>
<p>Response:</p>
<div id="responseStr">
  {{response}}</div>


<!-- <div id="jsonview">
<ul class="nav nav-tabs" id="myTab">
              <li class="active"><a href="#collapsedJson">解析后的Json</a></li>
              <li><a href="#formatedJson">格式化的Json</a></li>
              <li><a href="#rawJson">原始Json</a></li>
            </ul>
</div> -->
</form>
</div>
</body>
</html>