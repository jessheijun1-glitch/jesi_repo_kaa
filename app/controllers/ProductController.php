<?php

require_once __DIR__ . '/Controller.php';
require_once __DIR__ . '/../middleware/AuthMiddleware.php';

class ProductController extends Controller
{
    public function index()
    {
        AuthMiddleware::handle();

        require_once __DIR__ . '/../models/Product.php';
        require_once __DIR__ . '/../../config/database.php';

        $product = new Product($pdo);

        $products = $product->all();

        $this->render('Products/index', ['products' => $products], 'Produk - furab Store');
    }

    public function create()
    {
        AuthMiddleware::handle();

        require_once __DIR__ . '/../models/Product.php';
        require_once __DIR__ . '/../../config/database.php';

        $product = new Product($pdo);

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {

            $product->create(
                $_POST['name'],
                $_POST['price'],
                $_POST['stock'],
                $_POST['category_id']
            );

            header('Location: products');
            exit;
        }

        $this->render('Products/create');
    }

    public function delete()
    {
        AuthMiddleware::handle();

        require_once __DIR__ . '/../models/Product.php';
        require_once __DIR__ . '/../../config/database.php';

        $product = new Product($pdo);

        $product->delete($_GET['id']);

        header('Location: products');
        exit;
    }

    public function edit()
    {
        AuthMiddleware::handle();

        require_once __DIR__ . '/../models/Product.php';
        require_once __DIR__ . '/../../config/database.php';

        $productModel = new Product($pdo);

        $id = $_GET['id'];

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {

            $productModel->update(
                $id,
                $_POST['name'],
                $_POST['price'],
                $_POST['stock']
            );

            header('Location: products');
            exit;
        }

        $product = $productModel->find($id);

        $this->render(
            'Products/edit',
            ['product' => $product],
            'Edit Produk'
        );
    }
}