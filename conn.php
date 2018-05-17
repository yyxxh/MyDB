<?php
/*$dbms='mysql';     //数据库类型
$host='localhost'; //数据库主机名
$dbName='test';    //使用的数据库
$user='root';      //数据库连接用户名
$pass='';          //对应的密码
$dsn="$dbms:host=$host;dbname=$dbName";
*/
$dbms='sqlite';
$filename='SC.db';
$dsn="$dbms:/../$filename";
try {
$dbh = new PDO($dsn/*,user, $pass*/); //初始化一个PDO对象

} catch (PDOException $e) {
    die ("Error!: " . $e->getMessage() . "<br/>");
}


