<?php
session_start();

function route($page) {
    switch($page) {
        case 'login':
            include 'pages/login.php';
            break;
        case 'register':
            include 'pages/register.php';
            break;
        case 'dashboard':
            if (isset($_SESSION['user_id'])) {
                include 'pages/dashboard.php';
            } else {
                header('Location: index.php?page=login');
            }
            break;
        default:
            if (isset($_SESSION['user_id'])) {
                include 'pages/dashboard.php';
            } else {
                header('Location: index.php?page=login');
            }
            break;
    }
}

$page = isset($_GET['page']) ? $_GET['page'] : 'dashboard';
route($page);
?>
