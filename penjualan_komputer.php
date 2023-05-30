<?php

$koneksi = mysqli_connect("localhost","root","","penjualan_komputer");
$result = mysqli_query($koneksi, "SELECT identitas.No_user, Username, nama_produk,jumlah_transfer 
                                  from identitas, produk, pembayaran 
                                where pembayaran.No_user=identitas.No_user 
                                and pembayaran.No_produk=produk.No_produk");
$identitas = mysqli_query($koneksi, "SELECT No_user, Nama, Username, No_hp from identitas");
$produk = mysqli_query($koneksi, "SELECT No_produk, nama_produk, berat, Harga, Stok from produk");
$pembayaran = mysqli_query($koneksi, "SELECT No_user, No_produk, jumlah_transfer, bank from pembayaran");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Penjualan Komputer</title>
    <style type="text/css">
        h1,h3{
            text-align: center;
            font-style: Helvetica;
        }
        .box{
            width: auto;
            height: auto;
            background-color: #ffebd2;
            border: 1 px solid #ccc;
            padding: 20px;
            box-shadow: 0 0 20px 0;
            margin: 20px 20px 20px 20px;
        }
        .box2{
            width: auto;
            height: auto;
            background-color: #f0f0f0;
            border: 1 px solid #ccc;
            padding: 20px;
            box-shadow: 0 0 20px 0;
            margin: 20px 20px 20px 20px;
        }
    </style>
</head>
<body>
    <h1>Tempat Jual Komputer</h1>

    <h3>History pembelian komputer</h3>

    <div class="box">
    <table border="1" cellpaddings="8" cellspacing="0" align="center">
        <tr>
            <td>No_user</td>
            <td>Username</td>
            <td>nama_produk</td>
            <td>jumlah_transfer</td>
        </tr>

        <?php while($row=mysqli_fetch_assoc($result)) : ?>

            <tr>
                <td><?php echo $row["No_user"]; ?></td>
                <td><?php echo $row["Username"];?></td>
                <td><?php echo $row["nama_produk"];?></td>
                <td><?php echo $row["jumlah_transfer"];?></td>
            </tr>
            <?php endwhile ?>
    </table>
        </div>

    <div class="box2">
    <h4>Tabel Identitas</h4>

    <table class="tbidentitas" border="2" cellpaddings="8" cellspacing="0">
        <tr>
            <td>No_user</td>
            <td>Nama</td>
            <td>Username</td>
            <td>No_hp</td>
        </tr>

        <?php while($row=mysqli_fetch_assoc($identitas)) : ?>

            <tr>
                <td><?php echo $row["No_user"]; ?></td>
                <td><?php echo $row["Nama"];?></td>
                <td><?php echo $row["Username"];?></td>
                <td><?php echo $row["No_hp"];?></td>
            </tr>
            <?php endwhile ?>
    </table>

    <h4>Tabel Produk</h4>

    <table class="tbidentitas" border="2" cellpaddings="8" cellspacing="0">
        <tr>
            <td>No_produk</td>
            <td>nama_produk</td>
            <td>berat</td>
            <td>Harga</td>
            <td>Stok</td>
        </tr>

        <?php while($row=mysqli_fetch_assoc($produk)) : ?>

            <tr>
                <td><?php echo $row["No_produk"]; ?></td>
                <td><?php echo $row["nama_produk"];?></td>
                <td><?php echo $row["berat"];?></td>
                <td><?php echo $row["Harga"];?></td>
                <td><?php echo $row["Stok"];?></td>
            </tr>
            <?php endwhile ?>
    </table>

    <h4>Tabel Pembayaran</h4>

    <table class="tbidentitas" border="2" cellpaddings="8" cellspacing="0">
        <tr>
            <td>No_user</td>
            <td>Nama</td>
            <td>Username</td>
            <td>No_hp</td>
        </tr>

        <?php while($row=mysqli_fetch_assoc($pembayaran)) : ?>

            <tr>
                <td><?php echo $row["No_user"]; ?></td>
                <td><?php echo $row["No_produk"];?></td>
                <td><?php echo $row["jumlah_transfer"];?></td>
                <td><?php echo $row["bank"];?></td>
            </tr>
            <?php endwhile ?>
    </table>
    </div>
</body>
</html>