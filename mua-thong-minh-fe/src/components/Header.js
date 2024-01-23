// Header.js

import React from 'react';

const Header = () => {
    const imagePath = '../images/logo.png';

  return (
    <header>
      <div className="logo">
        {/* Assuming you have a logo image, replace the src with your logo file */}
        <img src="imagePath" alt="Logo" />
      </div>
      <div className="search-frame">
        <input type="text" placeholder="Dán link hoặc tìm sản phẩm" />
        <button type="button">Search</button>
      </div>
    </header>
  );
};

export default Header;