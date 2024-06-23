<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <style>
        .sidebar {
            height: 100%;
            width: 250px;
            position: fixed;
            top: 0;
            left: 0;
            background-color: white;
            padding-top: 60px;
        }

        .sidebar a {
            padding: 10px 15px;
            text-decoration: none;
            font-size: 18px;
            color: black;
            display: block;
        }
        .sidebar a:hover {
            background-color: #575d63;
            color: #ffffff;
        }

        .content {
            margin-left: 250px;
            padding: 20px;
        }

        .header {
            width: 100%;
            padding: 30px;
            background-color: #343a40;
            color: #ffffff;
        }

        .header .header-right {
            float: right;
        }

        .header .header-left {
            float: left;
        }

        .profile-img {
            border-radius: 50%;
            height: 30px;
            width: 30px;
        }
        .d-flex .btn{
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <?php
include 'reusable/sidebar.php'; ?>
<nav class="navbar bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
        <img src="https://thesis.its.ac.id/assets/img/logo-myits-blue.svg" alt="Logo" width="50" height="30" class="d-inline-block align-text-top">
        HILITS
    </a>
    <div class="d-flex">
      <button class="btn  btn-primary" type="submit">Upload</button>
      <img src="assets/Default_pfp.svg.png" class="profile-img" >
    </div>
  </div>
</nav>