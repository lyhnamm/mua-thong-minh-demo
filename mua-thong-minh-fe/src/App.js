import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import Header from './components/Header';
import Home from './pages/Home';
import ProductDetails from './pages/ProductDetails';
import './App.css';

function App() {
  return (
    <Router>
      <div>
        <Header />
        <Routes>
          <Route path="/" element={<Home/>} exact />
          <Route path="/product/:id" element={<ProductDetails/>} />
        </Routes>
      </div>
    </Router>
  );
}

export default App;
