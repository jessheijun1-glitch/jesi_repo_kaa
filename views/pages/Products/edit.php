<h2>Edit Produk</h2>

<form method="POST">

    <p>Nama Produk</p>
    <input
        type="text"
        name="name"
        value="<?= htmlspecialchars($product['name']) ?>"
    >

    <p>Harga</p>
    <input
        type="number"
        name="price"
        value="<?= $product['price'] ?>"
    >

    <p>Stok</p>
    <input
        type="number"
        name="stock"
        value="<?= $product['stock'] ?>"
    >

    <br><br>

    <button type="submit">
        Update
    </button>

</form>