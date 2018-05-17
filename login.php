<?php
require_once 'conn.php';
$user=$_POST['uname'];
$psw=$_POST['psw'];
$sql="select * from user where uname='$user'";
//$row=$dbh->query($sql);
foreach ($dbh->query($sql) as $row) {
    print $row['uname'] . "\t";
}
/*
if($row['password']!=$psw)
  echo '密码错误！';*/