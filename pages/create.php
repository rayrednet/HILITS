<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include 'database/db.php';


$message = '';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $mode = $_POST['mode'];
    $judul = $_POST['judul'];
    $deskripsi = $_POST['deskripsi'];
    $kata_kunci = $_POST['kata_kunci'];
    $kontak = $_POST['kontak'];
    $berkas = $_FILES['berkas']['name']; // Placeholder for file upload handling

    if ($mode == "ideas") {
        $prestasi = $_POST['prestasi'];
        $review = $_POST['review'];
        $stmt = $conn->prepare("INSERT INTO ideas (judul, deskripsi, kata_kunci, prestasi, kontak, review, berkas, user_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
        $stmt->bind_param("sssssssi", $judul, $deskripsi, $kata_kunci, $prestasi, $kontak, $review, $berkas, $_SESSION['user_id']);
    } else if ($mode == "problem") {
        $perusahaan = $_POST['perusahaan'];
        $stmt = $conn->prepare("INSERT INTO problems (judul, deskripsi, kata_kunci, perusahaan, kontak, berkas, user_id) VALUES (?, ?, ?, ?, ?, ?, ?)");
        $stmt->bind_param("ssssssi", $judul, $deskripsi, $kata_kunci, $perusahaan, $kontak, $berkas, $_SESSION['user_id']);
    } else {
        $message = "Invalid mode selected.";
    }

    if (isset($stmt) && $stmt->execute()) {
        $message = "Record successfully inserted.";
        // Handle file upload
        move_uploaded_file($_FILES['berkas']['tmp_name'], "uploads/" . $berkas);
    } else {
        $message = "Error: " . $stmt->error;
    }

    if (isset($stmt)) {
        $stmt->close();
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Create Idea or Problem</title>
    <script>
        $(document).ready(function() {
            function updateFields() {
                var mode = $('#mode').val();
                if (mode == 'ideas') {
                    $('#idea-fields').show();
                    $('#problem-fields').hide();
                } else {
                    $('#idea-fields').hide();
                    $('#problem-fields').show();
                }
            }

            $('#mode').change(updateFields);
            
            // Trigger change event on page load to set initial visibility
            updateFields();
        });
    </script>
</head>
<body>
<?php include 'reusable/header.php'; ?>

<div class="content">
    <h2>Create Idea or Problem</h2>
    <?php if ($message): ?>
        <div class="alert alert-info"><?php echo $message; ?></div>
    <?php endif; ?>
    <form method="post" action="index.php?page=create" enctype="multipart/form-data">
        <div class="form-group">
            <label for="mode">Mode:</label>
            <select id="mode" name="mode" class="form-control">
                <option value="ideas">Ideas</option>
                <option value="problem">Problem</option>
            </select>
        </div>

        <div id="idea-fields">
            <div class="form-group">
                <label for="judul">Title:</label>
                <input type="text" id="judul" name="judul" class="form-control" >
            </div>
            <div class="form-group">
                <label for="deskripsi">Description:</label>
                <textarea id="deskripsi" name="deskripsi" class="form-control" ></textarea>
            </div>
            <div class="form-group">
                <label for="kata_kunci">Keywords:</label>
                <input type="text" id="kata_kunci" name="kata_kunci" class="form-control" >
            </div>
            <div class="form-group">
                <label for="prestasi">Achievement:</label>
                <input type="text" id="prestasi" name="prestasi" class="form-control">
            </div>
            <div class="form-group">
                <label for="kontak">Contact:</label>
                <input type="text" id="kontak" name="kontak" class="form-control" >
            </div>
            <div class="form-group">
                <label for="review">Review:</label>
                <textarea id="review" name="review" class="form-control"></textarea>
            </div>
            <div class="form-group">
                <label for="berkas">File:</label>
                <input type="file" id="berkas" name="berkas" class="form-control">
            </div>
        </div>

        <div id="problem-fields" style="display:none;">
            <div class="form-group">
                <label for="judul">Title:</label>
                <input type="text" id="judul" name="judul" class="form-control">
            </div>
            <div class="form-group">
                <label for="deskripsi">Description:</label>
                <textarea id="deskripsi" name="deskripsi" class="form-control"></textarea>
            </div>
            <div class="form-group">
                <label for="kata_kunci">Keywords:</label>
                <input type="text" id="kata_kunci" name="kata_kunci" class="form-control">
            </div>
            <div class="form-group">
                <label for="perusahaan">Company:</label>
                <input type="text" id="perusahaan" name="perusahaan" class="form-control">
            </div>
            <div class="form-group">
                <label for="kontak">Contact:</label>
                <input type="text" id="kontak" name="kontak" class="form-control">
            </div>
            <div class="form-group">
                <label for="berkas">File:</label>
                <input type="file" id="berkas" name="berkas" class="form-control">
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

</body>
</html>
