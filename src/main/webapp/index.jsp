<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Nexus · gentle commerce</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&family=Instrument+Serif:ital@0;1&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" crossorigin="anonymous" />
  <style>
    /* ----- root: soft, airy, accessible ----- */
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body {
      background: #f7f6f3;
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      color: #1e1e2a;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    a { text-decoration: none; color: inherit; }
    img { max-width: 100%; display: block; }
    button { background: none; border: none; font: inherit; cursor: pointer; color: inherit; }
    input { font: inherit; }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ----- soft shadows & radius ----- */
    :root {
      --radius-card: 20px;
      --radius-pill: 100px;
      --shadow-soft: 0 8px 30px rgba(0,0,0,0.04), 0 2px 8px rgba(0,0,0,0.02);
      --shadow-hover: 0 20px 40px -12px rgba(0,0,0,0.10);
      --transition: 0.25s ease;
    }

    /* ----- header: clean, light, sticky ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(247, 246, 243, 0.82);
      backdrop-filter: blur(14px);
      -webkit-backdrop-filter: blur(14px);
      border-bottom: 1px solid rgba(0,0,0,0.02);
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 14px 0;
      gap: 12px;
      flex-wrap: wrap;
    }
    .brand {
      font-weight: 650;
      font-size: 1.35rem;
      letter-spacing: -0.02em;
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .brand i { color: #b47c6a; font-size: 1.5rem; }
    .brand span { background: linear-gradient(135deg, #2a2a3a, #4a4a5a); -webkit-background-clip: text; -webkit-text-fill-color: transparent; }

    .nav-links {
      display: flex;
      gap: 4px;
      list-style: none;
      align-items: center;
    }
    .nav-links a {
      padding: 8px 18px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.9rem;
      color: #4a4a5a;
      transition: var(--transition);
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .nav-links a i { font-size: 1rem; opacity: 0.6; }
    .nav-links a:hover, .nav-links a.active {
      background: #eae8e2;
      color: #1e1e2a;
    }
    .nav-links a.active i { opacity: 1; }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .icon-btn {
      width: 44px;
      height: 44px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      background: transparent;
      color: #4a4a5a;
      transition: var(--transition);
      font-size: 1.2rem;
    }
    .icon-btn:hover { background: #eae8e2; color: #1e1e2a; }

    .cart-badge {
      position: relative;
    }
    .cart-badge .count {
      position: absolute;
      top: -4px;
      right: -4px;
      background: #b47c6a;
      color: white;
      font-size: 0.7rem;
      font-weight: 600;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 2px solid #f7f6f3;
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: white;
      border-radius: 60px;
      padding: 0 8px 0 18px;
      border: 1px solid #e2dfd7;
      transition: var(--transition);
      box-shadow: var(--shadow-soft);
    }
    .search-wrap:focus-within {
      border-color: #b47c6a;
      box-shadow: 0 0 0 4px rgba(180, 124, 106, 0.08);
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      padding: 10px 0;
      font-size: 0.9rem;
      width: 170px;
      outline: none;
      color: #1e1e2a;
    }
    .search-wrap input::placeholder { color: #a8a4a0; }
    .search-wrap button { padding: 8px 10px; color: #8a8680; transition: var(--transition); }
    .search-wrap button:hover { color: #b47c6a; }

    /* mobile menu toggle */
    .mobile-toggle {
      display: none;
      background: #eae8e2;
      border-radius: 50%;
      width: 44px;
      height: 44px;
      font-size: 1.2rem;
      place-items: center;
    }
    #mobileMenu {
      display: none;
      background: #f7f6f3;
      padding: 16px 0 24px;
      border-top: 1px solid rgba(0,0,0,0.02);
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    #mobileMenu ul a {
      padding: 14px 18px;
      border-radius: 16px;
      display: flex;
      align-items: center;
      gap: 14px;
      font-weight: 500;
      color: #2a2a3a;
    }
    #mobileMenu ul a:hover { background: #eae8e2; }

    /* ----- hero: warm, spacious, welcoming ----- */
    .hero {
      background: linear-gradient(145deg, #f0eee8, #faf8f4);
      border-radius: 32px;
      margin: 24px 24px 0;
      padding: 56px 48px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 32px;
      box-shadow: var(--shadow-soft);
      border: 1px solid rgba(255,255,255,0.6);
    }
    .hero-content { flex: 1 1 340px; }
    .hero-content .tag {
      display: inline-block;
      background: #e5ddd6;
      color: #4a3f3a;
      padding: 4px 18px;
      border-radius: 60px;
      font-size: 0.8rem;
      font-weight: 600;
      letter-spacing: 0.3px;
      margin-bottom: 16px;
    }
    .hero-content h1 {
      font-family: 'Instrument Serif', serif;
      font-size: 3.4rem;
      font-weight: 400;
      line-height: 1.1;
      color: #1e1e2a;
      margin-bottom: 14px;
    }
    .hero-content p {
      color: #4a4a5a;
      font-size: 1.05rem;
      max-width: 420px;
      margin-bottom: 28px;
      opacity: 0.8;
    }
    .hero-actions { display: flex; gap: 12px; flex-wrap: wrap; }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 14px 32px;
      border-radius: 60px;
      font-weight: 600;
      transition: var(--transition);
      border: 1px solid transparent;
      font-size: 0.95rem;
    }
    .btn-primary {
      background: #1e1e2a;
      color: white;
      border-color: #1e1e2a;
    }
    .btn-primary:hover { background: #3a3a4e; transform: translateY(-2px); box-shadow: 0 8px 20px rgba(30,30,42,0.12); }
    .btn-soft {
      background: rgba(255,255,255,0.6);
      backdrop-filter: blur(4px);
      border-color: #d6d2ca;
      color: #1e1e2a;
    }
    .btn-soft:hover { background: white; border-color: #b47c6a; }

    .hero-visual {
      flex: 0 0 200px;
      display: flex;
      justify-content: center;
      align-items: center;
      font-size: 6rem;
      color: #d6cec4;
      background: rgba(255,255,255,0.3);
      border-radius: 40px;
      padding: 24px;
      backdrop-filter: blur(2px);
      border: 1px solid rgba(255,255,255,0.5);
    }
    .hero-visual i { opacity: 0.5; }

    /* ----- sections: breathing space ----- */
    .section { padding: 48px 0; }
    .section-header {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 12px;
      margin-bottom: 28px;
    }
    .section-header h2 {
      font-weight: 600;
      font-size: 1.7rem;
      letter-spacing: -0.02em;
    }
    .section-header .sub { color: #6a6a7a; font-size: 0.95rem; }
    .view-all {
      font-weight: 500;
      color: #b47c6a;
      display: flex;
      align-items: center;
      gap: 6px;
      transition: var(--transition);
    }
    .view-all:hover { gap: 12px; color: #8f6454; }

    /* categories: pill style */
    .cat-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(120px, 1fr));
      gap: 14px;
    }
    .cat-card {
      background: white;
      border-radius: 40px;
      padding: 20px 12px;
      text-align: center;
      box-shadow: var(--shadow-soft);
      transition: var(--transition);
      border: 1px solid transparent;
      cursor: default;
    }
    .cat-card:hover {
      transform: translateY(-4px);
      box-shadow: var(--shadow-hover);
      border-color: #d6cec4;
    }
    .cat-card .icon {
      font-size: 1.8rem;
      color: #b47c6a;
      margin-bottom: 6px;
    }
    .cat-card h4 { font-weight: 600; font-size: 0.9rem; }
    .cat-card .count { color: #9a968e; font-size: 0.8rem; }

    /* products: grid with soft cards */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
      gap: 24px;
    }
    .product-card {
      background: white;
      border-radius: var(--radius-card);
      overflow: hidden;
      box-shadow: var(--shadow-soft);
      transition: var(--transition);
      border: 1px solid rgba(0,0,0,0.02);
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: #e2dfd7;
    }
    .product-card .img-wrap {
      aspect-ratio: 1/1;
      background: #f0eee8;
      position: relative;
      overflow: hidden;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: var(--transition);
    }
    .product-card:hover .img-wrap img { transform: scale(1.03); }
    .product-card .badge {
      position: absolute;
      top: 12px;
      left: 12px;
      background: #b47c6a;
      color: white;
      padding: 4px 14px;
      border-radius: 60px;
      font-size: 0.7rem;
      font-weight: 600;
      letter-spacing: 0.3px;
    }
    .product-card .wish {
      position: absolute;
      top: 12px;
      right: 12px;
      background: rgba(255,255,255,0.8);
      backdrop-filter: blur(4px);
      border-radius: 50%;
      width: 34px;
      height: 34px;
      display: grid;
      place-items: center;
      color: #6a6a7a;
      transition: var(--transition);
    }
    .product-card .wish:hover { background: white; color: #b47c6a; }
    .product-card .body { padding: 16px 16px 10px; flex:1; }
    .product-card .body .cat { font-size: 0.7rem; color: #a8a4a0; text-transform: uppercase; letter-spacing: 0.4px; }
    .product-card .body h5 { font-weight: 600; font-size: 1rem; margin: 4px 0 6px; }
    .product-card .body .price { font-weight: 700; font-size: 1.2rem; }
    .product-card .body .old { color: #b0aca6; text-decoration: line-through; font-size: 0.9rem; margin-left: 6px; font-weight: 400; }
    .product-card .body .rating { color: #c7a86b; font-size: 0.85rem; display: flex; align-items: center; gap: 4px; }
    .product-card .body .rating span { color: #9a968e; }
    .product-card .footer { padding: 0 16px 16px; }
    .product-card .footer .add {
      width: 100%;
      padding: 12px;
      border-radius: 60px;
      background: #f0eee8;
      font-weight: 600;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      color: #1e1e2a;
    }
    .product-card .footer .add:hover { background: #1e1e2a; color: white; }
    .product-card .footer .add.added { background: #b47c6a; color: white; }

    /* deal: soft spotlight */
    .deal-wrap {
      display: flex;
      background: white;
      border-radius: var(--radius-card);
      overflow: hidden;
      box-shadow: var(--shadow-soft);
      flex-wrap: wrap;
    }
    .deal-img {
      flex: 1 1 240px;
      background: #f0eee8;
      min-height: 200px;
    }
    .deal-img img { width: 100%; height: 100%; object-fit: cover; }
    .deal-content {
      flex: 2 1 320px;
      padding: 32px 36px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-content .tag {
      background: #e5ddd6;
      padding: 4px 18px;
      border-radius: 60px;
      font-size: 0.75rem;
      font-weight: 600;
      align-self: flex-start;
      margin-bottom: 12px;
    }
    .deal-content h3 { font-size: 1.8rem; font-weight: 600; }
    .deal-content .desc { color: #6a6a7a; margin: 6px 0 12px; }
    .deal-content .big-price { font-weight: 700; font-size: 2rem; }
    .deal-content .big-price .old { font-size: 1.2rem; color: #b0aca6; text-decoration: line-through; margin-left: 10px; font-weight: 400; }
    .deal-content .stock { color: #6a6a7a; font-size: 0.9rem; }
    .deal-content .stock strong { color: #b47c6a; }
    .timer {
      display: flex;
      gap: 12px;
      margin: 16px 0 20px;
    }
    .timer-box {
      background: #f0eee8;
      padding: 8px 14px;
      border-radius: 14px;
      text-align: center;
      min-width: 60px;
    }
    .timer-box .num { font-weight: 700; font-size: 1.5rem; }
    .timer-box .label { font-size: 0.65rem; color: #6a6a7a; text-transform: uppercase; }

    /* testimonials */
    .testi-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 16px;
      scroll-snap-type: x mandatory;
    }
    .testi-scroll::-webkit-scrollbar { height: 4px; }
    .testi-scroll::-webkit-scrollbar-thumb { background: #d6cec4; border-radius: 60px; }
    .testi-card {
      flex: 0 0 300px;
      background: white;
      border-radius: 24px;
      padding: 24px;
      box-shadow: var(--shadow-soft);
      scroll-snap-align: start;
    }
    .testi-card .stars { color: #c7a86b; font-size: 1rem; letter-spacing: 2px; }
    .testi-card blockquote { font-style: italic; margin: 12px 0; color: #2a2a3a; }
    .testi-card .author { display: flex; align-items: center; gap: 12px; margin-top: 12px; }
    .testi-card .author img { width: 40px; height: 40px; border-radius: 50%; object-fit: cover; background: #eae8e2; }
    .testi-card .author .name { font-weight: 600; }
    .testi-card .author .role { font-size: 0.8rem; color: #6a6a7a; }

    /* newsletter: calm */
    .newsletter {
      background: #eae8e2;
      border-radius: 32px;
      padding: 40px 44px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 24px;
    }
    .newsletter h3 { font-weight: 600; font-size: 1.6rem; }
    .newsletter p { color: #4a4a5a; }
    .newsletter form {
      display: flex;
      gap: 10px;
      flex-wrap: wrap;
      flex: 1;
      max-width: 460px;
    }
    .newsletter input {
      flex: 1;
      padding: 14px 22px;
      border-radius: 60px;
      border: 1px solid #d6d2ca;
      background: white;
      min-width: 180px;
    }
    .newsletter input:focus { outline: 2px solid #b47c6a; border-color: transparent; }
    .newsletter .btn { background: #1e1e2a; color: white; border-color: #1e1e2a; }
    .newsletter .btn:hover { background: #3a3a4e; }
    #newsletterMsg { margin-top: 8px; width: 100%; font-size: 0.9rem; }

    /* footer */
    footer {
      padding: 48px 0 24px;
      border-top: 1px solid rgba(0,0,0,0.02);
      margin-top: 16px;
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 32px;
      margin-bottom: 32px;
    }
    .footer-grid .brand-col p { color: #6a6a7a; max-width: 280px; margin: 8px 0 14px; }
    .socials { display: flex; gap: 10px; }
    .socials a {
      width: 40px; height: 40px;
      border-radius: 50%;
      background: #eae8e2;
      display: grid;
      place-items: center;
      color: #4a4a5a;
      transition: var(--transition);
    }
    .socials a:hover { background: #b47c6a; color: white; }
    .footer-grid .col h5 { font-weight: 600; margin-bottom: 12px; }
    .footer-grid .col ul { list-style: none; display: flex; flex-direction: column; gap: 6px; }
    .footer-grid .col ul a { color: #6a6a7a; transition: var(--transition); font-size: 0.9rem; }
    .footer-grid .col ul a:hover { color: #b47c6a; }
    .footer-bottom { text-align: center; padding-top: 20px; border-top: 1px solid rgba(0,0,0,0.02); color: #8a8680; font-size: 0.85rem; }

    /* responsiveness */
    @media (max-width: 900px) {
      .footer-grid { grid-template-columns: 1fr 1fr; }
      .hero { padding: 32px 24px; }
      .hero-content h1 { font-size: 2.6rem; }
    }
    @media (max-width: 760px) {
      .nav-links { display: none; }
      .mobile-toggle { display: grid; }
      .search-wrap input { width: 120px; }
      .hero-visual { flex: 0 0 80px; font-size: 3rem; }
      .product-grid { grid-template-columns: repeat(2, 1fr); }
      .cat-grid { grid-template-columns: repeat(3, 1fr); }
      .deal-content { padding: 24px; }
    }
    @media (max-width: 480px) {
      .hero { margin: 12px 12px 0; padding: 24px 16px; border-radius: 24px; }
      .hero-content h1 { font-size: 2rem; }
      .product-grid { gap: 14px; }
      .cat-grid { grid-template-columns: repeat(2, 1fr); }
      .newsletter { padding: 24px 20px; }
      .footer-grid { grid-template-columns: 1fr; }
      .container { padding: 0 16px; }
    }
  </style>
</head>
<body>
  <header>
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:10px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
        <a class="brand" href="#"><i class="fas fa-leaf"></i><span>Nexus</span></a>
      </div>

      <ul class="nav-links" id="mainNav">
        <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
      </ul>

      <div style="display:flex;align-items:center;gap:10px;">
        <div class="search-wrap">
          <input type="search" id="searchInput" placeholder="Search..." aria-label="Search" />
          <button id="searchBtn"><i class="fas fa-search"></i></button>
        </div>
        <div class="header-actions">
          <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
          <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
          <div class="cart-badge">
            <button class="icon-btn" id="cartBtn" aria-label="Cart"><i class="fas fa-bag-shopping"></i></button>
            <span class="count" id="cartCount">0</span>
          </div>
        </div>
      </div>
    </div>
    <!-- mobile menu -->
    <div id="mobileMenu">
      <div class="container">
        <ul>
          <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-th"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
          <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
          <li><a href="#"><i class="far fa-user"></i> Account</a></li>
        </ul>
      </div>
    </div>
  </header>

  <main>
    <!-- hero -->
    <section class="hero">
      <div class="hero-content">
        <div class="tag"><i class="fas fa-sparkles"></i> spring collection</div>
        <h1>everyday <br>essentials</h1>
        <p>thoughtfully curated, made simple — free delivery on first order.</p>
        <div class="hero-actions">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> shop now</button>
          <button class="btn btn-soft" id="exploreDeals"><i class="fas fa-clock"></i> explore deals</button>
        </div>
      </div>
      <div class="hero-visual"><i class="fas fa-hand-peace"></i></div>
    </section>

    <!-- categories -->
    <section class="section" id="categories">
      <div class="container">
        <div class="section-header">
          <div><h2>categories</h2><div class="sub">find what you love</div></div>
          <a href="#" class="view-all">all <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="cat-grid" id="categoriesGrid"></div>
      </div>
    </section>

    <!-- products -->
    <section class="section" id="products">
      <div class="container">
        <div class="section-header">
          <div><h2>trending now</h2><div class="sub">community favorites</div></div>
          <a href="#" class="view-all">view all <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="product-grid" id="productsGrid"></div>
      </div>
    </section>

    <!-- deal -->
    <section class="section" id="deals">
      <div class="container">
        <div class="section-header">
          <div><h2>⚡ flash deal</h2><div class="sub">limited stock</div></div>
        </div>
        <div class="deal-wrap">
          <div class="deal-img">
            <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80" alt="macbook air" loading="lazy">
          </div>
          <div class="deal-content">
            <span class="tag"><i class="fas fa-bolt"></i> limited offer</span>
            <h3>MacBook Air M2</h3>
            <p class="desc">light, fast, timeless — the M2 chip redefines everyday power.</p>
            <div><span class="big-price">$999 <span class="old">$1,199</span></span></div>
            <p class="stock">only <strong>12</strong> left — hurry!</p>
            <div class="timer" id="dealTimer">
              <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">days</div></div>
              <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">hrs</div></div>
              <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">min</div></div>
              <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">sec</div></div>
            </div>
            <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> add to cart</button>
          </div>
        </div>
      </div>
    </section>

    <!-- testimonials -->
    <section class="section" id="testimonials">
      <div class="container">
        <div class="section-header">
          <div><h2>customer stories</h2><div class="sub">real reviews</div></div>
        </div>
        <div class="testi-scroll" id="testimonialsList"></div>
      </div>
    </section>

    <!-- newsletter -->
    <section class="section">
      <div class="container">
        <div class="newsletter">
          <div><h3>stay in the loop</h3><p>offers, early access & new arrivals</p></div>
          <form id="newsletterForm" onsubmit="return false;">
            <input type="email" id="newsletterEmail" placeholder="your email" required />
            <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> subscribe</button>
            <div id="newsletterMsg"></div>
          </form>
        </div>
      </div>
    </section>
  </main>

  <footer>
    <div class="container">
      <div class="footer-grid">
        <div class="brand-col">
          <div class="brand"><i class="fas fa-leaf"></i><span>Nexus</span></div>
          <p>gentle commerce — quality goods, seamless experience.</p>
          <div class="socials">
            <a href="#"><i class="fab fa-facebook-f"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
          </div>
        </div>
        <div class="col"><h5>company</h5><ul><li><a href="#">about</a></li><li><a href="#">careers</a></li><li><a href="#">press</a></li></ul></div>
        <div class="col"><h5>support</h5><ul><li><a href="#">help</a></li><li><a href="#">shipping</a></li><li><a href="#">returns</a></li></ul></div>
        <div class="col"><h5>legal</h5><ul><li><a href="#">privacy</a></li><li><a href="#">terms</a></li></ul></div>
      </div>
      <div class="footer-bottom">&copy; <span id="year"></span> Nexus — made with care</div>
    </div>
  </footer>

  <script>
    // ----- data -----
    const CATEGORIES = [
      { id: 'phones', name: 'Phones', icon: 'fa-mobile-alt', count: 24 },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 }
    ];
    const PRODUCTS = [
      { id:1, title:'iPhone 14 Pro Max', price:1099, oldPrice:1199, rating:5, reviews:128, badge:'New', img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', category:'Phones' },
      { id:2, title:'MacBook Pro 14"', price:1999, rating:4, reviews:86, badge:'', img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80', category:'Laptops' },
      { id:3, title:'Apple Watch S8', price:349, oldPrice:399, rating:5, reviews:214, badge:'Sale', img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category:'Accessories' },
      { id:4, title:'Nike Air Max 270', price:150, rating:4, reviews:53, badge:'', img:'https://images.
