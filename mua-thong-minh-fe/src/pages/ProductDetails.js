import React, { useState, useEffect } from 'react';
import { useParams } from 'react-router-dom';

const ProductDetail = () => {
  const { id } = useParams();
  const [product, setProduct] = useState(null);

  useEffect(() => {
    // Fetch details of a specific product based on the 'id' parameter
    fetch(`https://api.example.com/products/${id}`)
      .then(response => response.json())
      .then(data => setProduct(data))
      .catch(error => console.error('Error fetching product details:', error));
  }, [id]); // Dependency on 'id' ensures the effect runs when the 'id' parameter changes

  if (!product) {
    // Optional: Add a loading indicator
    return <p>Loading...</p>;
  }

  return (
    <div>
      <h2>Product Details</h2>
      <p>Name: {product.name}</p>
      <p>Price: {product.price}</p>
      <p>Description: {product.description}</p>
      {/* Add more product details as needed */}
    </div>
  );
};

export default ProductDetail;