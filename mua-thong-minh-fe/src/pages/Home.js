import React from 'react';
import { Link } from 'react-router-dom';

const Home = () => {
  // Dummy product data for illustration
  const products = [
    { id: 1, name: 'Product A', price: 20 },
    { id: 2, name: 'Product B', price: 25 },
    // Add more products as needed
  ];

  return (
    <div>
      <h2>Welcome to the Home Page</h2>
      <p>Explore our products:</p>
      <ul>
        {products.map(product => (
          <li key={product.id}>
            <Link to={`/product/${product.id}`}>
              {product.name} - ${product.price}
            </Link>
          </li>
        ))}
      </ul>
    </div>
  );
};

export default Home;