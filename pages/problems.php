<?php
include 'database/db.php';

$query = "SELECT id, judul, kata_kunci, deskripsi, perusahaan FROM problems ";
$stmt = $conn->prepare($query);
$stmt->execute();
$result = $stmt->get_result();

?>

<!DOCTYPE html>
<html>
<head>
    <title>Problems List</title>
    <style>
        .td:hover {
            background-color: blue;
            opacity: 0.5;
        }
    </style>
</head>
<body>
<?php include 'reusable/header.php'; ?>

<div class="content">
    <h2>Problems List</h2>
    <table class="table table-primary table-striped">
        <thead>
            <tr>
                <th>No</th>
                <th>Title</th>
                <th>Kata Kunci</th>
                <th>Deskripsi</th>
                <th>Perusahaan</th>
            </tr>
        </thead>
        <tbody class="table-group-divider">
            <?php
            $no = 1;
            while ($row = $result->fetch_assoc()) {
                echo "<tr onclick=\"window.location='index.php?page=problems_detail&id=" . $row['id'] . "';\" style='cursor:pointer;'>";
                echo "<td>" . $no++ . "</td>";
                echo "<td>" . htmlspecialchars($row['judul']) . "</td>";
                echo "<td>" . htmlspecialchars($row['kata_kunci']) . "</td>";
                echo "<td>" . htmlspecialchars($row['deskripsi']) . "</td>";
                echo "<td>" . htmlspecialchars($row['perusahaan']) . "</td>";
                echo "</tr>";
            }
            ?>
        </tbody>
    </table>
</div>

</body>
</html>

<?php
$stmt->close();
$conn->close();
?>
