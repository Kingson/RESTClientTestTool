#!/usr/bin/python
#coding=UTF-8
#--------------------------
#Created by PyCharm
#Author: Kingson
#Date: 12-8-23
#Time: 下午11:16
#Description:Create a new database for books management.
#--------------------------
import sqlite3
import os

# 访问data文件夹的books.db，如果不存在就新建一个数据库，外加一张表
def check_db():
    try:
        if not os.access('books.db',os.R_OK):
            conn = sqlite3.connect('data/books.db')
            c = conn.cursor()
            c.execute("CREATE TABLE users (id INTEGER PRIMARY KEY, account vchar(20) NOT NULL, password vchar(20) NOT NULL,"
                      "nickname text NOT NULL, email vchar(40) NOT NULL, department text, jobnumber vchar(10), "
                      "onjob bool NOT NULL,logintime datetime, description text)")
            c.execute(
                "INSERT INTO users (account,password,nickname,email,department,jobnumber,onjob,logintime,description) "
                "VALUES ('jszhou','663322','kingson','jszhou@telenavsoftware.com','QA','TNS0109',1,20120823,'test')")
            conn.commit()
            c.close()
    except sqlite3.OperationalError:
        return '<p>Oops!</p>'

if __name__ == "__main__":
    check_db()

