<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Dashboard Admin</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container">
        <span class="navbar-brand">My Store</span>
    </div>
</nav>

<div class="container mt-4">

    <div class="card shadow-sm">
        <div class="card-body">

            <h2>Dashboard Admin</h2>

            <p class="text-muted">
                Selamat datang,
                <strong><?= $_SESSION['username'] ?? 'Admin'; ?></strong>
            </p>

            <div class="row mt-4">

                <div class="col-md-4 mb-3">
                    <div class="card border-primary">
                        <div class="card-body text-center">
                            <h5>Total Produk</h5>
                            <h2>50</h2>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 mb-3">
                    <div class="card border-success">
                        <div class="card-body text-center">
                            <h5>User Login</h5>
                            <h6><?= $_SESSION['username'] ?? 'Admin'; ?></h6>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 mb-3">
                    <div class="card border-warning">
                        <div class="card-body text-center">
                            <h5>Tanggal</h5>
                            <h6><?= date('d-m-Y'); ?></h6>
                        </div>
                    </div>
                </div>

            </div>

            <div class="mt-3">
                <a href="/products" class="btn btn-success">
                    Kelola Produk
                </a>

                <a href="/logout" class="btn btn-danger">
                    Logout
                </a>
            </div>

        </div>
    </div>

</div>

</body>
</html>