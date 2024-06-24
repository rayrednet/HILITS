<?php
include 'database/db.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $confirm_password = $_POST['confirm_password'];

    if ($password == $confirm_password) {
        $hashed_password = password_hash($password, PASSWORD_DEFAULT);

        $stmt = $conn->prepare("INSERT INTO users (username, email, password) VALUES (?, ?, ?)");
        $stmt->bind_param("sss", $username, $email, $hashed_password);

        if ($stmt->execute()) {
            header("Location: index.php?page=login");
            exit();
        } else {
            echo "Error: " . $stmt->error;
        }

        $stmt->close();
    } else {
        echo "Passwords do not match!";
    }
}
?>

<!DOCTYPE html>
<html>

<head>
    <title>Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <style>
        body {
            height: 100vh;
            background-image: url("data:image/svg+xml,<svg id='patternId' width='100%' height='100%' xmlns='http://www.w3.org/2000/svg'><defs><pattern id='a' patternUnits='userSpaceOnUse' width='87' height='50.232' patternTransform='scale(2) rotate(0)'><rect x='0' y='0' width='100%' height='100%' fill='hsla(220, 0%, 100%, 1)'/><path d='M0 54.424l14.5-8.373c4.813 2.767 9.705 5.573 14.5 8.37l14.5-8.373V29.303M0 4.193v16.744l-14.5 8.373L0 37.68l14.5-8.374V12.562l29-16.746m43.5 58.6l-14.5-8.37v-33.49c-4.795-2.797-9.687-5.603-14.5-8.37m43.5 25.111L87 37.67c-4.795-2.797-24.187-13.973-29-16.74l-14.5 8.373-14.5-8.37v-33.489m72.5 8.365L87 4.183l-14.5-8.37M87 4.183v16.745L58 37.673v16.744m0-66.976V4.185L43.5 12.56c-4.795-2.797-24.187-13.973-29-16.74L0 4.192l-14.5-8.37m29 33.484c4.813 2.767 9.705 5.573 14.5 8.37V54.42'  stroke-linecap='square' stroke-width='1' stroke='hsla(208, 100%, 94%, 1)' fill='none'/></pattern></defs><rect width='800%' height='800%' transform='translate(0,0)' fill='url(%23a)'/></svg>")
        }
    </style>
</head>

<body>
    <div class="h-100 d-flex justify-content-center align-items-center">
        <div class="column">
            <a class="navbar-brand" href="#">
                <img src="assets/logo-myits-blue.png" alt="Logo" height="50" class="d-inline-block align-text-top">
                HILITS
            </a>
            <div class="m-5"></div>
            <h2>Register</h2>
            <div class="m-5"></div>
            <form method="post" action="index.php?page=register">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required><br><br>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required><br><br>

                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required><br><br>

                <label for="confirm_password">Confirm Password:</label>
                <input type="password" id="confirm_password" name="confirm_password" required><br><br>

                <input class="btn btn-primary" type="submit" value="Register">
                <a class="btn btn-outline-success" href="index.php?page=login" role="button">Login?</a>
            </form>
        </div>
    </div>
</body>

</html>