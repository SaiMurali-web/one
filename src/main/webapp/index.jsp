<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Bloom & Co. · user-friendly e‑commerce</title>
  <!-- Font Awesome for icons (free) -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    /* -------------------- RESET & GLOBAL -------------------- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
    }

    body {
      background-color: #f9fafc;
      display: flex;
      flex-direction: column;
      min-height: 100vh;
    }

    /* smooth typography */
    h1, h2, h3, h4, p {
      line-height: 1.4;
    }

    a {
      text-decoration: none;
      color: inherit;
    }

    ul {
      list-style: none;
    }

    /* -------------------- REUSABLE CONTAINER -------------------- */
    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
      width: 100%;
    }

    /* -------------------- HEADER / NAVBAR -------------------- */
    .navbar {
      background-color: #ffffff;
      box-shadow: 0 4px 20px rgba(0, 0, 0, 0.02);
      position: sticky;
      top: 0;
      z-index: 100;
      border-bottom: 1px solid #eef0f4;
    }

    .nav-container {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 16px 0;
    }

    .logo {
      font-size: 1.6rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      color: #1e293b;
    }

    .logo span {
      color: #3b82f6;
    }

    .nav-links {
      display: flex;
      gap: 32px;
      font-weight: 500;
      color: #334155;
    }

    .nav-links a {
      transition: color 0.2s;
      font-size: 0.95rem;
    }

    .nav-links a:hover {
      color: #3b82f6;
    }

    .nav-icons {
      display: flex;
      gap: 20px;
      color: #334155;
      font-size: 1.2rem;
    }

    .nav-icons i {
      cursor: pointer;
      transition: color 0.2s;
    }

    .nav-icons i:hover {
      color: #3b82f6;
    }

    .cart-badge {
      position: relative;
    }

    .cart-badge::after {
      content: "3";
      position: absolute;
      top: -8px;
      right: -12px;
      background-color: #3b82f6;
      color: white;
      font-size: 0.65rem;
      font-weight: 600;
      width: 18px;
      height: 18px;
      border-radius: 999px;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    /* -------------------- HERO / WELCOME BANNER (user friendly) -------------------- */
    .hero {
      background: linear-gradient(135deg, #f0f7ff 0%, #e9f0fa 100%);
      border-radius: 32px;
      padding: 48px 40px;
      margin: 32px 0 24px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 24px;
    }

    .hero-content {
      max-width: 520px;
    }

    .hero-content h1 {
      font-size: 2.5rem;
      font-weight: 700;
      letter-spacing: -0.03em;
      color: #0f172a;
      margin-bottom: 12px;
    }

    .hero-content p {
      color: #334155;
      font-size: 1.1rem;
      margin-bottom: 24px;
    }

    .hero-btn {
      background-color: #3b82f6;
      color: white;
      border: none;
      padding: 14px 34px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 1rem;
      cursor: pointer;
      box-shadow: 0 10px 20px -8px rgba(59, 130, 246, 0.4);
      transition: background 0.2s, transform 0.1s;
    }

    .hero-btn:hover {
      background-color: #2563eb;
    }

    .hero-btn:active {
      transform: scale(0.97);
    }

    .hero-illustration {
      font-size: 5rem;
      color: #3b82f6;
      opacity: 0.8;
      padding-right: 24px;
    }

    /* -------------------- SECTION HEADER -------------------- */
    .section-header {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      margin: 48px 0 16px;
    }

    .section-header h2 {
      font-size: 1.8rem;
      font-weight: 600;
      letter-spacing: -0.02em;
      color: #0f172a;
    }

    .section-header a {
      font-size: 0.9rem;
      font-weight: 500;
      color: #3b82f6;
      display: flex;
      align-items: center;
      gap: 6px;
    }

    .section-header a i {
      font-size: 0.75rem;
      transition: transform 0.2s;
    }

    .section-header a:hover i {
      transform: translateX(4px);
    }

    /* -------------------- PRODUCT GRID (CORE UI) -------------------- */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(230px, 1fr));
      gap: 24px;
      margin-bottom: 32px;
    }

    .product-card {
      background-color: #ffffff;
      border-radius: 24px;
      padding: 18px 16px 20px;
      box-shadow: 0 8px 24px rgba(0, 0, 0, 0.02);
      border: 1px solid #eef0f4;
      transition: all 0.25s ease;
      display: flex;
      flex-direction: column;
      cursor: pointer;
    }

    .product-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 20px 30px -12px rgba(0, 0, 0, 0.1);
      border-color: #dbe7f7;
    }

    .product-image {
      background-color: #f8fafc;
      border-radius: 18px;
      height: 150px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 3.6rem;
      margin-bottom: 16px;
      color: #3b82f6;
      transition: background 0.2s;
    }

    .product-card:hover .product-image {
      background-color: #f1f6fe;
    }

    .product-title {
      font-weight: 600;
      font-size: 1rem;
      color: #1e293b;
      margin-bottom: 6px;
    }

    .product-price {
      font-weight: 600;
      color: #0f172a;
      font-size: 1.1rem;
      margin-bottom: 6px;
    }

    .product-price small {
      font-weight: 400;
      font-size: 0.8rem;
      color: #64748b;
      text-decoration: line-through;
      margin-left: 6px;
    }

    .product-rating {
      color: #fbbf24;
      font-size: 0.8rem;
      letter-spacing: 1px;
      margin-bottom: 16px;
    }

    .product-rating span {
      color: #64748b;
      margin-left: 6px;
      font-size: 0.75rem;
    }

    .add-to-cart {
      margin-top: auto;
      background-color: #f1f5f9;
      border: none;
      border-radius: 40px;
      padding: 10px 0;
      font-weight: 500;
      font-size: 0.9rem;
      color: #1e293b;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      cursor: pointer;
      transition: background 0.2s, color 0.2s;
    }

    .add-to-cart i {
      font-size: 0.9rem;
    }

    .add-to-cart:hover {
      background-color: #3b82f6;
      color: white;
    }

    /* -------------------- FOOTER -------------------- */
    .footer {
      margin-top: 60px;
      background-color: #ffffff;
      border-top: 1px solid #eef0f4;
      padding: 40px 0 24px;
    }

    .footer-content {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 32px;
    }

    .footer-column h4 {
      font-size: 1rem;
      font-weight: 600;
      margin-bottom: 16px;
      color: #0f172a;
    }

    .footer-column ul li {
      margin-bottom: 10px;
      font-size: 0.9rem;
      color: #475569;
      transition: color 0.2s;
      cursor: pointer;
    }

    .footer-column ul li:hover {
      color: #3b82f6;
    }

    .footer-bottom {
      text-align: center;
      padding-top: 32px;
      margin-top: 32px;
      border-top: 1px solid #eef0f4;
      color: #94a3b8;
      font-size: 0.85rem;
    }

    /* -------------------- RESPONSIVE -------------------- */
    @media (max-width: 768px) {
      .nav-links {
        display: none; /* simplified mobile: hide main links */
      }

      .hero {
        padding: 32px 24px;
      }

      .hero-content h1 {
        font-size: 1.9rem;
      }

      .hero-illustration {
        font-size: 3.5rem;
        padding-right: 0;
      }

      .section-header h2 {
        font-size: 1.5rem;
      }

      .product-grid {
        grid-template-columns: repeat(auto-fill, minmax(160px, 1fr));
        gap: 16px;
      }

      .product-image {
        height: 120px;
        font-size: 2.8rem;
      }

      .footer-content {
        flex-direction: column;
        gap: 24px;
      }
    }

    @media (max-width: 480px) {
      .container {
        padding: 0 16px;
      }

      .product-grid {
        grid-template-columns: 1fr 1fr;
        gap: 12px;
      }

      .product-card {
        padding: 14px 12px 16px;
      }

      .add-to-cart {
        font-size: 0.8rem;
        padding: 8px 0;
      }
    }

    /* tiny extra friendly touches */
    .greeting {
      background-color: #eef6ff;
      padding: 8px 16px;
      border-radius: 100px;
      font-size: 0.85rem;
      color: #1d4ed8;
      font-weight: 500;
      display: inline-block;
      margin-bottom: 16px;
    }

    .free-shipping {
      display: flex;
      align-items: center;
      gap: 8px;
      font-size: 0.85rem;
      color: #0f172a;
      background: #e6f7e6;
      padding: 6px 14px;
      border-radius: 100px;
      margin-top: 8px;
    }

    .free-shipping i {
      color: #16a34a;
    }

    /* trusted badge */
    .trust-badge {
      display: flex;
      gap: 20px;
      flex-wrap: wrap;
      margin: 16px 0 8px;
      font-size: 0.8rem;
      color: #475569;
    }

    .trust-badge i {
      color: #3b82f6;
      margin-right: 6px;
    }
  </style>
</head>
<body>

  <!-- ========== HEADER ========== -->
  <header class="navbar">
    <div class="container nav-container">
      <div class="logo">Bloom<span>&Co.</span></div>
      <nav class="nav-links">
        <a href="#">Home</a>
        <a href="#">Shop</a>
        <a href="#">Collections</a>
        <a href="#">About</a>
        <a href="#">Contact</a>
      </nav>
      <div class="nav-icons">
        <i class="fas fa-search"></i>
        <i class="far fa-heart"></i>
        <div class="cart-badge">
          <i class="fas fa-shopping-bag"></i>
        </div>
        <i class="far fa-user"></i>
      </div>
    </div>
  </header>

  <!-- ========== MAIN CONTENT ========== -->
  <main class="container">

    <!-- HERO / WELCOME SECTION -->
    <section class="hero">
      <div class="hero-content">
        <div class="greeting">
          <i class="fas fa-sparkles" style="margin-right: 6px;"></i> Welcome back, Alex
        </div>
        <h1>Style that feels like you.</h1>
        <p>Discover curated pieces — soft, sustainable, and effortlessly comfortable.</p>
        <button class="hero-btn">Shop new arrivals <i class="fas fa-arrow-right" style="margin-left: 8px;"></i></button>
        <div class="trust-badge">
          <span><i class="fas fa-truck"></i> Free shipping over $75</span>
          <span><i class="fas fa-undo-alt"></i> 30‑day returns</span>
        </div>
      </div>
      <div class="hero-illustration">
        <i class="fas fa-tshirt"></i>
        <i class="fas fa-shoe-prints" style="margin-left: 8px;"></i>
      </div>
    </section>

    <!-- POPULAR PRODUCTS SECTION -->
    <div class="section-header">
      <h2>Popular right now</h2>
      <a href="#">View all <i class="fas fa-chevron-right"></i></a>
    </div>

    <div class="product-grid">
      <!-- product 1 -->
      <div class="product-card">
        <div class="product-image"><i class="fas fa-tshirt"></i></div>
        <div class="product-title">Organic Cotton Tee</div>
        <div class="product-price">$28 <small>$39</small></div>
        <div class="product-rating">★★★★★ <span>(142)</span></div>
        <button class="add-to-cart"><i class="fas fa-plus"></i> Add to cart</button>
      </div>
      <!-- product 2 -->
      <div class="product-card">
        <div class="product-image"><i class="fas fa-shoe-prints"></i></div>
        <div class="product-title">Cloud Comfort Sneakers</div>
        <div class="product-price">$89 <small>$120</small></div>
        <div class="product-rating">★★★★☆ <span>(98)</span></div>
        <button class="add-to-cart"><i class="fas fa-plus"></i> Add to cart</button>
      </div>
      <!-- product 3 -->
      <div class="product-card">
        <div class="product-image"><i class="fas fa-shopping-bag"></i></div>
        <div class="product-title">Everyday Tote Bag</div>
        <div class="product-price">$42 <small>$59</small></div>
        <div class="product-rating">★★★★★ <span>(210)</span></div>
        <button class="add-to-cart"><i class="fas fa-plus"></i> Add to cart</button>
      </div>
      <!-- product 4 -->
      <div class="product-card">
        <div class="product-image"><i class="fas fa-clock"></i></div>
        <div class="product-title">Minimalist Watch</div>
        <div class="product-price">$129 <small>$179</small></div>
        <div class="product-rating">★★★★☆ <span>(67)</span></div>
        <button class="add-to-cart"><i class="fas fa-plus"></i> Add to cart</button>
      </div>
      <!-- product 5 -->
      <div class="product-card">
        <div class="product-image"><i class="fas fa-mug-hot"></i></div>
        <div class="product-title">Ceramic Mug Set</div>
        <div class="product-price">$34 <small>$45</small></div>
        <div class="product-rating">★★★★★ <span>(183)</span></div>
        <button class="add-to-cart"><i class="fas fa-plus"></i> Add to cart</button>
      </div>
      <!-- product 6 -->
      <div class="product-card">
        <div class="product-image"><i class="fas fa-headphones"></i></div>
        <div class="product-title">Wireless Headphones</div>
        <div class="product-price">$79 <small>$110</small></div>
        <div class="product-rating">★★★★☆ <span>(54)</span></div>
        <button class="add-to-cart"><i class="fas fa-plus"></i> Add to cart</button>
      </div>
    </div>

    <!-- SECOND SECTION (you might also like) -->
    <div class="section-header" style="margin-top: 24px;">
      <h2>You might also like</h2>
      <a href="#">See more <i class="fas fa-chevron-right"></i></a>
    </div>

    <div class="product-grid">
      <!-- product 7 -->
      <div class="product-card">
        <div class="product-image"><i class="fas fa-socks"></i></div>
        <div class="product-title">Cozy Crew Socks</div>
        <div class="product-price">$12 <small>$18</small></div>
        <div class="product-rating">★★★★☆ <span>(37)</span></div>
        <button class="add-to-cart"><i class="fas fa-plus"></i> Add to cart</button>
      </div>
      <!-- product 8 -->
      <div class="product-card">
        <div class="product-image"><i class="fas fa-hat-cowboy"></i></div>
        <div class="product-title">Wide Brim Hat</div>
        <div class="product-price">$45 <small>$65</small></div>
        <div class="product-rating">★★★★★ <span>(91)</span></div>
        <button class="add-to-cart"><i class="fas fa-plus"></i> Add to cart</button>
      </div>
      <!-- product 9 -->
      <div class="product-card">
        <div class="product-image"><i class="fas fa-water-bottle"></i></div>
        <div class="product-title">Insulated Bottle</div>
        <div class="product-price">$32 <small>$44</small></div>
        <div class="product-rating">★★★★☆ <span>(126)</span></div>
        <button class="add-to-cart"><i class="fas fa-plus"></i> Add to cart</button>
      </div>
      <!-- product 10 -->
      <div class="product-card">
        <div class="product-image"><i class="fas fa-book"></i></div>
        <div class="product-title">Daily Journal</div>
        <div class="product-price">$18 <small>$26</small></div>
        <div class="product-rating">★★★★★ <span>(58)</span></div>
        <button class="add-to-cart"><i class="fas fa-plus"></i> Add to cart</button>
      </div>
    </div>

    <!-- friendly note / free shipping banner -->
    <div style="display: flex; justify-content: center; margin: 40px 0 20px;">
      <div class="free-shipping">
        <i class="fas fa-truck-fast"></i> You've unlocked free shipping! (cart over $75)
      </div>
    </div>

  </main>

  <!-- ========== FOOTER ========== -->
  <footer class="footer">
    <div class="container">
      <div class="footer-content">
        <div class="footer-column">
          <h4>Bloom & Co.</h4>
          <ul>
            <li>About us</li>
            <li>Sustainability</li>
            <li>Careers</li>
            <li>Press</li>
          </ul>
        </div>
        <div class="footer-column">
          <h4>Help</h4>
          <ul>
            <li>Contact</li>
            <li>Shipping & returns</li>
            <li>FAQ</li>
            <li>Size guide</li>
          </ul>
        </div>
        <div class="footer-column">
          <h4>Shop</h4>
          <ul>
            <li>New arrivals</li>
            <li>Best sellers</li>
            <li>Accessories</li>
            <li>Gift cards</li>
          </ul>
        </div>
        <div class="footer-column">
          <h4>Follow</h4>
          <ul>
            <li><i class="fab fa-instagram" style="margin-right: 8px;"></i> Instagram</li>
            <li><i class="fab fa-pinterest" style="margin-right: 8px;"></i> Pinterest</li>
            <li><i class="fab fa-tiktok" style="margin-right: 8px;"></i> TikTok</li>
            <li><i class="fab fa-youtube" style="margin-right: 8px;"></i> YouTube</li>
          </ul>
        </div>
      </div>
      <div class="footer-bottom">
        <p>© 2025 Bloom & Co. — designed with <i class="fas fa-heart" style="color: #ef4444;"></i> for a friendlier shopping experience.</p>
      </div>
    </div>
  </footer>

  <!-- tiny script for demonstration (add-to-cart feedback) -->
  <script>
    (function() {
      const buttons = document.querySelectorAll('.add-to-cart');
      buttons.forEach(btn => {
        btn.addEventListener('click', function(e) {
          e.stopPropagation();  // avoid triggering card click
          const originalText = this.innerHTML;
          this.innerHTML = '<i class="fas fa-check"></i> Added!';
          this.style.backgroundColor = '#3b82f6';
          this.style.color = 'white';
          setTimeout(() => {
            this.innerHTML = originalText;
            this.style.backgroundColor = '';
            this.style.color = '';
          }, 1000);
        });
      });

      // make entire card feel interactive (just a visual demo)
      const cards = document.querySelectorAll('.product-card');
      cards.forEach(card => {
        card.addEventListener('click', function() {
          // you could navigate to product page – here just a subtle alert for demo
          // but we don't want annoying alerts; instead console log
          console.log('Product card clicked — would navigate to product detail (UI friendly)');
        });
      });
    })();
  </script>

</body>
</html>
