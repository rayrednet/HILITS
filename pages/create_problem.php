<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include 'database/db.php';

$message = '';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $judul = $_POST['judul'];
    $deskripsi = $_POST['deskripsi'];
    $kata_kunci = $_POST['kata_kunci'];
    $perusahaan = $_POST['perusahaan'];
    $kontak = $_POST['kontak'];
    $berkas = $_FILES['berkas']['name']; // Placeholder for file upload handling

    $stmt = $conn->prepare("INSERT INTO problems (judul, deskripsi, kata_kunci, perusahaan, kontak, berkas, user_id) VALUES (?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("ssssssi", $judul, $deskripsi, $kata_kunci, $perusahaan, $kontak, $berkas, $_SESSION['user_id']);

    if ($stmt->execute()) {
        $message = "Problem successfully inserted.";
        // Handle file upload
        move_uploaded_file($_FILES['berkas']['tmp_name'], "uploads/" . $berkas);
    } else {
        $message = "Error: " . $stmt->error;
    }

    $stmt->close();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Create Problem</title>
    <style>
        .form-limit{
            width:40vw;
        }
    </style>
</head>
<body>
<?php include 'reusable/header.php'; ?>
<div class="h-100 d-flex justify-content-center align-items-center">
<div class="form-limit">

    <h2>Create Problem</h2>
    <?php if ($message): ?>
        <div class="alert alert-info"><?php echo $message; ?></div>
    <?php endif; ?>
    <form method="post" action="index.php?page=create_problem" enctype="multipart/form-data">
        <div class="form-group">
            <label for="judul">Title:</label>
            <input type="text" id="judul" name="judul" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="deskripsi">Description:</label>
            <textarea id="deskripsi" name="deskripsi" class="form-control" required></textarea>
        </div>
        <div class="form-group">
            <label for="kata_kunci">Keywords:</label>
            <input type="text" id="kata_kunci" name="kata_kunci" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="perusahaan">Company:</label>
            <input type="text" id="perusahaan" name="perusahaan" class="form-control">
        </div>
        <div class="form-group">
            <label for="kontak">Contact:</label>
            <input type="text" id="kontak" name="kontak" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="berkas">File:</label>
            <input type="file" id="berkas" name="berkas" class="form-control">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
</div>
</body>
</html>
