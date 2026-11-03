<?php

class Product
{
    private PDO $db;

    public function __construct(PDO $db)
    {
        $this->db = $db;
    }

    public function all()
    {
        $stmt = $this->db->query(
            "SELECT * FROM products ORDER BY id DESC"
        );

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function create($name, $price, $stock, $category_id)
    {
        $stmt = $this->db->prepare(
            "INSERT INTO products(name, price, stock, category_id)
             VALUES (?, ?, ?, ?)"
        );

        return $stmt->execute([
            $name,
            $price,
            $stock,
            $category_id
        ]);
    }

    public function delete($id)
    {
        $stmt = $this->db->prepare(
            "DELETE FROM products WHERE id = ?"
        );

        return $stmt->execute([$id]);
    }

    public function find($id)
    {
        $stmt = $this->db->prepare(
            "SELECT * FROM products WHERE id = ?"
        );

        $stmt->execute([$id]);

        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public function update($id, $name, $price, $stock)
    {
        $stmt = $this->db->prepare(
            "UPDATE products
             SET name = ?, price = ?, stock = ?
             WHERE id = ?"
        );

        return $stmt->execute([
            $name,
            $price,
            $stock,
            $id
        ]);
    }
}