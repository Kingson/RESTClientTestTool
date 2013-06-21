#!/usr/bin/python
# coding=UTF-8
#--------------------------
# Created by PyCharm
# Author: Kingson
# Date: 12-8-23
# Time: 下午9:19
# Description: A simple books management systems for TNS.
#--------------------------
from bottle import *
import sqlite3
import os
from creatdb import *
import requests
import json
# ---------------define path: start--------------------------##
#/favicon.ico


@route('/favicon.ico')
def send_favicon():
    return static_file('favicon.ico',
                       root='./')

#/static/css


@route('/static/css/<filename>')
def send_css(filename='bootstrap.css'):
    return static_file(filename,
                       root='./static/css',
                       mimetype='text/css')

#/static/js


@route('/static/js/<filename>')
def send_js(filename='bootstrap.js'):
    return static_file(filename,
                       root='./static/js')

#/static/images


@route('/static/images/<filename>')
def send_image(filename):
    return static_file(filename,
                       root='./static/images')
# ---------------define path: end--------------------------##


@get('/')
def index():
    return template('main', response="这里显示响应内容", stauts='', response_headers='', request_headers='')


@post('/send')
def send_submit():
    api = request.forms.get('api', '').strip()
    method = request.forms.get('method', '').strip()
    header = request.forms.get('header', '').strip()
    payload = request.forms.get('payload', '').strip()
    content_type = request.forms.get('content_type', '').strip()
    if method == "get":
        url = api
        request_api = requests.get(url)
        responses = request_api.content
        stauts = request_api.status_code
        if stauts == 200:
            stauts = "200 OK"
        elif stauts == 404:
            stauts = "404 Not Found"
        elif stauts == 500:
            stauts = "500 Internal Server Error"
        response_headers = request_api.headers
        request_headers = header
        return template('main', response=responses, stauts=stauts, response_headers=response_headers, request_headers=request_headers)
    elif method == "post":
        url = api
        print url
        headers = {"Content-Type": content_type}
        print headers
        # data = json.dumps(payload)
        request_api = requests.post(url, data=payload, headers=headers)
        responses = request_api.content
        stauts = request_api.status_code
        if stauts == 200:
            stauts = "200 OK"
        elif stauts == 404:
            stauts = "404 Not Found"
        elif stauts == 500:
            stauts = "500 Internal Server Error"
        response_headers = request_api.headers
        print response_headers
        request_headers = header
        return template('main', response=responses, stauts=stauts, response_headers=response_headers, request_headers=request_headers)
    elif method == "put":
        pass
    elif method == "delete":
        pass


@get('/userlist')
def show_userlist():
    conn = sqlite3.connect('data/books.db')
    c = conn.cursor()
    c.execute("select * from users")
    result = c.fetchall()
    result_list = list(result)
    c.close()
    output = template('show_userlist', rows=result_list)
    return output

if __name__ == '__main__':
    debug(mode=True)
    run()
