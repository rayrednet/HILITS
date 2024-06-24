<?php

include 'database/db.php';

if (!isset($_GET['id'])) {
    header("Location: ideas.php");
    exit();
}

$id = $_GET['id'];

$query = "SELECT ideas.*, users.username FROM ideas JOIN users ON ideas.user_id = users.id WHERE ideas.id = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param("i", $id);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows == 0) {
    echo "No idea found.";
    exit();
}

$idea = $result->fetch_assoc();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Idea Detail</title>
</head>
<body>
<?php include 'reusable/header.php'; ?>

<div class="content">
    <h2>Idea Detail</h2>
    <div class="container text-center">
        <div class="row justify-content-center">
        <div class="col-4">
        <img src="assets/sample-poster.jpg" height="500px">
        </div>
        </div>
    </div>
    
    <table class="table table-bordered">
        <tr><th>Title</th><td><?php echo htmlspecialchars($idea['judul']); ?></td></tr>
        <tr><th>Description</th><td><?php echo htmlspecialchars($idea['deskripsi']); ?></td></tr>
        <tr><th>Keywords</th><td><?php echo htmlspecialchars($idea['kata_kunci']); ?></td></tr>
        <tr><th>Achievement</th><td><?php echo htmlspecialchars($idea['prestasi']); ?></td></tr>
        <tr><th>Contact</th><td><?php echo htmlspecialchars($idea['kontak']); ?></td></tr>
        <tr><th>Review</th><td><?php echo htmlspecialchars($idea['review']); ?></td></tr>
        <tr><th>File</th><td><?php echo htmlspecialchars($idea['berkas']); ?></td></tr>
        <tr><th>Uploaded by</th><td><?php echo htmlspecialchars($idea['username']); ?></td></tr>
    </table>
</div>

</body>
</html>

<?php
$stmt->close();
$conn->close();
?>
