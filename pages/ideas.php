<?php
include 'database/db.php';


$query = "SELECT id, judul, kata_kunci, deskripsi, prestasi FROM ideas";
$stmt = $conn->prepare($query);
$stmt->execute();
$result = $stmt->get_result();

?>

<!DOCTYPE html>
<html>
<head>
    <title>Ideas List</title>
</head>
<body>
<?php include 'reusable/header.php'; ?>

<div class="content">
    <h2>Ideas List</h2>
    <table class="table table-bordered " >
        <thead>
            <tr>
                <th>No</th>
                <th>Title</th>
                <th>Kata Kunci</th>
                <th>Deskripsi</th>
                <th>Prestasi</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $no = 1;
            while ($row = $result->fetch_assoc()) {
                echo "<tr onclick=\"window.location='index.php?page=ideas_detail&id=" . $row['id'] . "';\" style='cursor:pointer;'>";
                echo "<td>" . $no++ . "</td>";
                echo "<td>" . htmlspecialchars($row['judul']) . "</td>";
                echo "<td>" . htmlspecialchars($row['kata_kunci']) . "</td>";
                echo "<td>" . htmlspecialchars($row['deskripsi']) . "</td>";
                echo "<td>" . htmlspecialchars($row['prestasi']) . "</td>";
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
