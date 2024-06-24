<?php
include 'reusable/header.php'; 
?>

<div class="content">

    <div class="container text-center ">
        <div class="row justify-content-center align-items-start mt-3">
            <div class="col">
            <h1>Hi!</h1>
            <h3>Welcome to your dashboard!</h2>
            </div>
        </div>
        
        <div class="card mt-5">
            <div class="card-header">
                Pengumuman
                <img src="assets/anounce.png" width="20px">
            </div>
            
            <div class="card-body">
                <h5 class="card-title">Hilits telah hadir!</h5>
                <p class="card-text">Website hilits sudah ada, ayo daftarkan hasil lombamu!</p>
            </div>
        </div>
        <div class="row justify-content-around align-items-end mt-5">
            <div class="col-5">
                <div class="card">
                    <div class="card-header">
                        Featured
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Ideas List</h5>
                        <p class="card-text">Look at some ideas that other have uploaded.</p>
                        <a href="index.php?page=ideas" class="btn btn-primary">Ideas</a>
                    </div>
                </div>
            </div>
            <div class="col-5 ">
                <div class="card">
                    <div class="card-header">
                        Featured
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Problems List</h5>
                        <p class="card-text">Industry problem list. See if you can figure it out.</p>
                        <a href="index.php?page=problem" class="btn btn-primary">Problem</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
