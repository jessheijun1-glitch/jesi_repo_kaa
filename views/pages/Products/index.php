<style>
body{
    font-family: Arial, sans-serif;
}

.container{
    width:90%;
    margin:20px auto;
}

.header{
    margin-bottom:20px;
}

h2{
    margin-bottom:15px;
    color:#1565c0;
}

.btn-tambah{
    background:#198754;
    color:white;
    padding:8px 12px;
    border-radius:4px;
    text-decoration:none;
}

.btn-logout{
    background:#6c757d;
    color:white;
    padding:8px 12px;
    border-radius:4px;
    text-decoration:none;
    margin-left:8px;
}

table{
    width:100%;
    border-collapse:collapse;
    margin-top:15px;
}

th,td{
    border:1px solid #ccc;
    padding:10px;
}

th{
    background:#eaeaea;
}

.btn-edit{
    color:blue;
    text-decoration:none;
}

.btn-delete{
    color:red;
    text-decoration:none;
}
</style>

<div class="container">

    <div class="header">
        <h2>Daftar Produk</h2>

        <a href="/product-create" class="btn-tambah">
    + Tambah Produk
</a>

        <a href="/logout" class="btn-logout">
            Logout
        </a>
    </div>

    <table>
        <tr>
            <th>No</th>
            <th>Nama Produk</th>
            <th>Harga</th>
            <th>Stok</th>
            <th>Aksi</th>
        </tr>

        <?php foreach ($products as $i => $p): ?>
        <tr>
            <td><?= $i + 1 ?></td>
            <td><?= htmlspecialchars($p['name']) ?></td>
            <td>Rp <?= number_format($p['price'],0,',','.') ?></td>
            <td><?= $p['stock'] ?></td>
            <td>
                <a class="btn-edit"
                   href="/product-edit?id=<?= $p['id'] ?>">
                    Edit
                </a>

                |

                <a class="btn-delete"
                   href="/product-delete?id=<?= $p['id'] ?>"
                   onclick="return confirm('Yakin hapus data?')">
                    Hapus
                </a>
            </td>
        </tr>
        <?php endforeach; ?>

    </table>

</div>