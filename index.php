<?php
session_start();
include 'database/db.php';
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
        case 'create':
            if (isset($_SESSION['user_id'])) {
                include 'pages/create.php';
            } else {
                header('Location: index.php?page=login');
            }
            break;
        case 'ideas':
            if (isset($_SESSION['user_id'])) {
                include 'pages/ideas.php';
            } else {
                header('Location: index.php?page=login');
            }
            break;
        case 'problems':
            if (isset($_SESSION['user_id'])) {
                include 'pages/problems.php';
            } else {
                header('Location: index.php?page=login');
            }
            break;
        case 'create_idea':
            include 'pages/create_idea.php';
            break;
        case 'create_problem':
            include 'pages/create_problem.php';
            break;
        case 'ideas_detail':
            include 'pages/ideas_detail.php';
            break;
        case 'problems_detail':
            include 'pages/problems_detail.php';
            break;
        case 'logout':
            include 'pages/logout.php';
            break;
        default:
            if (isset($_SESSION['user_id'])) {
                include 'dashboard.php';
            } else {
                header('Location: index.php?page=login');
            }
            break;
    }
}

$page = isset($_GET['page']) ? $_GET['page'] : 'dashboard';
route($page);
?>
