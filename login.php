<?php
require_once 'conn.php';
$user=$_POST['uname'];
$psw=$_POST['psw'];
$sql="select * from user where uname='$user'";
$sth=$dbh->query($sql);
$row=$sth->fetch();
echo $row[1];
if($row[2]!=$psw)
  echo '密码错误！';
 