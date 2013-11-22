<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Websivce test tool.">
<meta name="author" content="kingson.zhou">
<title>Advanced Rest Client</title>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<link href="/static/css/bootstrap.css" type="text/css" rel="stylesheet">
<link href="/static/css/jsonview.css" rel="stylesheet" >
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.js"></script>
<script type="text/javascript" src="/static/js/bootstrap.js"></script>
<script type="text/javascript" src="/static/js/jsonview.js"></script>
<script type="text/javascript" src="/static/js/jquery.tmpl.js"></script>
<script type="text/javascript" src="/static/js/app.js"></script>
</head>

<body>
<div class="well">
              <form class="bs-example form-horizontal" action='/send' method='POST'>
                <fieldset>
                  <legend>Advanced Rest Client Test Tool</legend>
                  <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">API</label>
                    <div class="col-lg-10">
                      <input type="text" class="form-control" id="inputEmail" placeholder="Type API" name="api">
                    </div>
                  </div>
                  
                  <div class="form-group">
                    <label for="inputPassword" class="col-lg-2 control-label">Header</label>
                    <div class="col-lg-10">
                      <input type="text" class="form-control" id="inputPassword" placeholder="Type Header" name="header">
                    </div>
                  </div>

                  <div class="form-group">
                    <label class="col-lg-2 control-label">Method</label>
                    <div class="col-lg-10">
                      <div class="radio">
                        <label>
                          <input type="radio" name="method" id="optionsRadios1" value="get" checked="yes">
                          Get
                        </label>
                      </div>
                      <div class="radio">
                        <label>
                          <input type="radio" name="method" id="optionsRadios1" value="post">
                          Post
                        </label>
                      </div>
                      <div class="radio">
                        <label>
                          <input type="radio" name="method" id="optionsRadios1" value="put">
                          Put
                        </label>
                      </div>
                      <div class="radio">
                        <label>
                          <input type="radio" name="method" id="optionsRadios1" value="delete">
                          Delete
                        </label>
                      </div>
                    </div>
                  </div>
                
                  <div class="form-group">
                    <label for="textArea" class="col-lg-2 control-label">Payload</label>
                    <div class="col-lg-10">
                      <textarea class="form-control" rows="3" id="textArea" name="payload"></textarea>
                      <span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span>
                    </div>
                  </div>
                  
                  <div class="form-group">
                  <label for="select" class="col-lg-2 control-label">Content-Type</label>
                    <div class="col-lg-10">
                      <select class="form-control" id="select" name="content_type">
                        <option>application/json</option>
                        <option>application/xml</option>
                        <option>test/html</option>
                        <option>test/plain</option>
                      </select>
                      <span class="help-block">Set "Content-Type" header to overwrite this value.</span>
                    </div>
                  </div>
                  
                  <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                      <button class="btn btn-default">Cancel</button> 
                      <button type="submit" class="btn btn-primary" name="send">Submit</button> 
                    </div>
                  </div>
                  
                  <div class="form-group">
                    <label class="col-lg-2 control-label">Status</label>
                      <div class="col-lg-10">
                        <p>{{stauts}}</p>
                      </div>
                  </div>

                  <div class="form-group">
                    <label class="col-lg-2 control-label">loading time</label>
                      <div class="col-lg-10">
                        <p>{{loading_time}}</p>
                      </div>
                  </div>

                  <div class="form-group">
                    <label class="col-lg-2 control-label">Request Headers</label>
                       %if request_headers:
                        <div class="col-lg-10">
                          <p>User-Agent: {{request_headers["User-Agent"]}}</p>
                          <p>Accept-Encoding: {{request_headers["Accept-Encoding"]}}</p>
                          <p>Accept: {{request_headers["Accept"]}}</p>
                        </div>
                    %else:
                        <div class="col-lg-10">
                          <p>{{request_headers}}</p>
                        </div>
                    %end
                  </div>

                  <div class="form-group">
                    <label class="col-lg-2 control-label">Response Headers</label>
                    %if response_headers:
                        <div class="col-lg-10">
                          <p>Server: {{response_headers["server"]}}</p>
                          <p>Date: {{response_headers["date"]}}</p>
                          <p>Content-Type: {{response_headers["content-type"]}}</p>
                          <p>Connection: {{response_headers["connection"]}}</p>
                          <p>Set-Cookie: {{response_headers["set-cookie"]}}</p>
                        </div>
                    %else:
                        <div class="col-lg-10">
                          <p>{{response_headers}}</p>
                        </div>
                    %end
                  </div>

                  <div class="form-group">
                    <label class="col-lg-2 control-label">Response</label>
                      <div class="col-lg-10" id="responseStr">
                        <p>{{response}}</p>
                      </div>
                  </div>

                </fieldset>
              </form>
            </div>
</body>
</html>