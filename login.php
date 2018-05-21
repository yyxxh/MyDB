<?php
require_once 'conn.php';
$user=$_POST['uname'];
$psw=$_POST['psw'];
$sql="select * from user where uname='$user'";
$sth=$dbh->query($sql);
$row=$sth->fetch();
if($row[2]!=$psw)
  echo '<script>alert("密码错误");history.go(-1);</script>';   
else
  print_r("欢迎您，$row[1]");