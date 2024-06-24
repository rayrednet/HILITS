<?php
include 'database/db.php';

if (!isset($_GET['id'])) {
    header("Location: problems.php");
    exit();
}

$id = $_GET['id'];

$query = "SELECT problems.*, users.username FROM problems JOIN users ON problems.user_id = users.id WHERE problems.id = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param("i", $id);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows == 0) {
    echo "No problem found.";
    exit();
}

$problem = $result->fetch_assoc();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Problem Detail</title>
</head>
<body>
<?php include 'reusable/header.php'; ?>

<div class="content">
    <h2>Problem Detail</h2>
    <div class="container text-center">
        <div class="row justify-content-center">
        <div class="col-4">
        <img src="assets/sample-poster2.jpg" height="500px">
        </div>
        </div>
    </div>
    <table class="table table-bordered">
        <tr><th>Title</th><td><?php echo htmlspecialchars($problem['judul']); ?></td></tr>
        <tr><th>Description</th><td><?php echo htmlspecialchars($problem['deskripsi']); ?></td></tr>
        <tr><th>Keywords</th><td><?php echo htmlspecialchars($problem['kata_kunci']); ?></td></tr>
        <tr><th>Company</th><td><?php echo htmlspecialchars($problem['perusahaan']); ?></td></tr>
        <tr><th>Contact</th><td><?php echo htmlspecialchars($problem['kontak']); ?></td></tr>
        <tr><th>File</th><td><?php echo htmlspecialchars($problem['berkas']); ?></td></tr>
        <tr><th>Uploaded by</th><td><?php echo htmlspecialchars($problem['username']); ?></td></tr>
    </table>
</div>

</body>
</html>

<?php
$stmt->close();
$conn->close();
?>
