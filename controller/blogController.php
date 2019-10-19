<?php

require __DIR__ . '/../model/blogRepository.php';

$posts = getPost();

require __DIR__ . '/../view/home.php';