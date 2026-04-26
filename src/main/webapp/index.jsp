<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>NOVA — Modern E‑Commerce | Redesigned Experience</title>
    <!-- Google Fonts + Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg-primary: #ffffff;
            --bg-secondary: #f8fafc;
            --surface-card: #ffffff;
            --text-primary: #0a0c10;
            --text-secondary: #5b677b;
            --text-muted: #8b93a3;
            --border-light: #eef2f6;
            --accent-primary: #7c3aed;
            --accent-gradient: linear-gradient(135deg, #7c3aed 0%, #a855f7 100%);
            --accent-soft: #ede9fe;
            --shadow-sm: 0 8px 20px rgba(0, 0, 0, 0.02), 0 2px 6px rgba(0, 0, 0, 0.03);
            --shadow-md: 0 20px 35px -12px rgba(0, 0, 0, 0.08);
            --shadow-hover: 0 25px 35px -12px rgba(124, 58, 237, 0.12);
            --radius-card: 24px;
            --radius-element: 16px;
            --transition: all 0.25s cubic-bezier(0.2, 0, 0, 1);
        }

        body.dark {
            --bg-primary: #0f1117;
            --bg-secondary: #181c24;
            --surface-card: #1a1e26;
            --text-primary: #edf2f7;
            --text-secondary: #a0aec0;
            --text-muted: #6b7280;
            --border-light: #2d313a;
            --accent-soft: #2d2a4a;
            --shadow-sm: 0 8px 20px rgba(0, 0, 0, 0.3);
            --shadow-md: 0 20px 35px -12px rgba(0, 0, 0, 0.4);
        }

        body {
            font-family: 'Inter', sans-serif;
            background: var(--bg-primary);
            color: var(--text-primary);
            transition: var(--transition);
            line-height: 1.5;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 32px;
        }

        /* Glassmorphic header */
        .header-glass {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(var(--bg-primary-rgb, 255,255,255), 0.8);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid var(--border-light);
        }
        body.dark .header-glass { background: rgba(15,17,23,0.85); }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            padding: 16px 0;
        }

        .logo {
            font-family: 'Space Grotesk', monospace;
            font-weight: 800;
            font-size: 26px;
            background: var(--accent-gradient);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            letter-spacing: -0.02em;
        }
        .logo span { color: var(--text-primary); background: none; -webkit-background-clip: unset; }

        /* nav styles */
        .nav-links {
            display: flex;
            gap: 28px;
            align-items: center;
        }
        .nav-links a {
            text-decoration: none;
            font-weight: 500;
            color: var(--text-secondary);
            transition: var(--transition);
            font-size: 15px;
        }
        .nav-links a:hover, .nav-links a.active { color: var(--accent-primary); }

        .action-icons {
            display: flex;
            gap: 20px;
            align-items: center;
        }
        .icon-btn-circle {
            background: var(--bg-secondary);
            width: 42px;
            height: 42px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            border-radius: 60px;
            transition: var(--transition);
            cursor: pointer;
            border: none;
            color: var(--text-primary);
            font-size: 1.2rem;
        }
        .icon-btn-circle:hover { background: var(--accent-soft); color: var(--accent-primary); transform: translateY(-2px); }

        .cart-wrapper {
            position: relative;
        }
        .cart-badge {
            position: absolute;
            top: -6px;
            right: -8px;
            background: var(--accent-primary);
            color: white;
            font-size: 11px;
            font-weight: bold;
            width: 20px;
            height: 20px;
            border-radius: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* Hero modern */
        .hero-modern {
            background: linear-gradient(125deg, rgba(124,58,237,0.08) 0%, rgba(168,85,247,0.02) 100%);
            border-radius: 48px;
            margin: 32px auto;
            padding: 64px 48px;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            gap: 40px;
        }
        .hero-content h1 {
            font-size: 52px;
            font-weight: 800;
            line-height: 1.2;
            background: var(--accent-gradient);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }
        .hero-btn {
            background: var(--accent-gradient);
            border: none;
            padding: 14px 32px;
            border-radius: 40px;
            font-weight: 600;
            color: white;
            cursor: pointer;
            transition: all 0.2s;
            box-shadow: 0 8px 18px rgba(124,58,237,0.3);
        }
        .hero-btn:hover { transform: scale(1.02); box-shadow: 0 12px 24px rgba(124,58,237,0.4); }

        /* Section headings */
        .section-head {
            text-align: center;
            margin-bottom: 48px;
        }
        .section-head h2 {
            font-size: 32px;
            font-weight: 700;
            letter-spacing: -0.01em;
        }
        .badge-light {
            display: inline-block;
            background: var(--accent-soft);
            color: var(--accent-primary);
            border-radius: 30px;
            padding: 4px 14px;
            font-size: 13px;
            font-weight: 600;
            margin-bottom: 16px;
        }

        /* categories grid modern */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 24px;
            margin-bottom: 60px;
        }
        .cat-modern {
            background: var(--surface-card);
            border: 1px solid var(--border-light);
            padding: 24px 12px;
            border-radius: 28px;
            text-align: center;
            transition: var(--transition);
            cursor: pointer;
            backdrop-filter: blur(4px);
        }
        .cat-modern:hover {
            transform: translateY(-6px);
            border-color: var(--accent-primary);
            box-shadow: var(--shadow-hover);
        }
        .cat-icon {
            font-size: 40px;
            background: var(--accent-gradient);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            margin-bottom: 12px;
        }

        /* product cards */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
            gap: 28px;
        }
        .product-card {
            background: var(--surface-card);
            border-radius: var(--radius-card);
            overflow: hidden;
            transition: var(--transition);
            border: 1px solid var(--border-light);
            box-shadow: var(--shadow-sm);
        }
        .product-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-md);
            border-color: var(--accent-primary);
        }
        .product-img {
            width: 100%;
            height: 220px;
            object-fit: cover;
            transition: transform 0.4s ease;
        }
        .product-card:hover .product-img { transform: scale(1.02); }
        .product-info { padding: 18px; }
        .product-title {
            font-weight: 700;
            font-size: 1.1rem;
            margin-bottom: 8px;
        }
        .price-modern {
            font-weight: 800;
            font-size: 1.3rem;
            color: var(--accent-primary);
        }
        .old-price-modern {
            text-decoration: line-through;
            color: var(--text-muted);
            font-size: 0.85rem;
            margin-left: 8px;
        }
        .btn-add {
            width: 100%;
            background: var(--bg-secondary);
            border: 1px solid var(--border-light);
            padding: 12px;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
            transition: var(--transition);
            margin-top: 12px;
            color: var(--text-primary);
        }
        .btn-add:hover {
            background: var(--accent-primary);
            color: white;
            border-color: var(--accent-primary);
        }

        /* flash sale + timer */
        .flash-sale {
            background: linear-gradient(115deg, #1e1b2e 0%, #0f0c1a 100%);
            border-radius: 40px;
            padding: 48px;
            color: white;
            display: flex;
            flex-wrap: wrap;
            gap: 40px;
            justify-content: space-between;
            align-items: center;
        }
        body.dark .flash-sale { background: linear-gradient(115deg, #2d264b, #19152b); }
        .timer-modern {
            display: flex;
            gap: 18px;
        }
        .time-unit {
            background: rgba(255,255,255,0.1);
            backdrop-filter: blur(8px);
            padding: 12px 18px;
            border-radius: 28px;
            text-align: center;
            min-width: 70px;
        }
        .time-number { font-size: 32px; font-weight: 800; }

        /* testimonial cards */
        .testimonial-slider {
            display: flex;
            gap: 32px;
            overflow-x: auto;
            padding-bottom: 12px;
            scrollbar-width: thin;
        }
        .testi-card {
            background: var(--surface-card);
            border-radius: 28px;
            padding: 28px;
            min-width: 320px;
            border: 1px solid var(--border-light);
        }
        .stars { color: #fbbf24; margin-bottom: 16px; }

        /* newsletter premium */
        .newsletter-premium {
            background: var(--accent-soft);
            border-radius: 48px;
            padding: 48px;
            text-align: center;
        }
        .news-group {
            display: flex;
            gap: 12px;
            justify-content: center;
            flex-wrap: wrap;
            margin-top: 20px;
        }
        .news-group input {
            padding: 14px 20px;
            border-radius: 80px;
            border: none;
            background: var(--bg-primary);
            width: 280px;
            color: var(--text-primary);
        }
        /* footer */
        .footer-modern {
            border-top: 1px solid var(--border-light);
            padding: 48px 0 32px;
            margin-top: 48px;
        }

        /* dark toggle + mobile */
        .mobile-menu-btn { display: none; background: none; border: none; font-size: 26px; cursor: pointer; color: var(--text-primary); }
        @media (max-width: 850px) {
            .nav-links { display: none; }
            .mobile-menu-btn { display: block; }
            .hero-modern { flex-direction: column; text-align: center; padding: 40px 24px; }
            .hero-content h1 { font-size: 36px; }
            .container { padding: 0 20px; }
        }
        .mobile-drawer {
            position: fixed;
            top: 0;
            left: -100%;
            width: 280px;
            height: 100%;
            background: var(--bg-primary);
            backdrop-filter: blur(20px);
            z-index: 200;
            padding: 32px 24px;
            transition: 0.3s;
            box-shadow: 5px 0 30px rgba(0,0,0,0.2);
        }
        .mobile-drawer.open { left: 0; }
        .drawer-close { float: right; font-size: 24px; background: none; border: none; cursor: pointer; }
    </style>
</head>
<body>
    <div class="header-glass">
        <div class="container header-inner">
            <div style="display: flex; align-items: center; gap: 16px;">
                <button class="mobile-menu-btn" id="openDrawerBtn"><i class="fas fa-bars"></i></button>
                <div class="logo">NOVA<span style="color: var(--text-primary);">.</span>shop</div>
            </div>
            <div class="nav-links">
                <a href="#" class="active">Home</a>
                <a href="#" id="shopByCatLink">Shop</a>
                <a href="#" id="trendingLink">Trending</a>
                <a href="#deals-section">Deals</a>
            </div>
            <div class="action-icons">
                <button class="icon-btn-circle" id="themeToggle"><i class="fas fa-moon"></i></button>
                <div class="cart-wrapper">
                    <button class="icon-btn-circle" id="cartIconBtn"><i class="fas fa-bag-shopping"></i></button>
                    <span class="cart-badge" id="cartCountGlobal">0</span>
                </div>
            </div>
        </div>
    </div>

    <!-- mobile drawer -->
    <div class="mobile-drawer" id="mobileDrawer">
        <button class="drawer-close" id="closeDrawerBtn"><i class="fas fa-times"></i></button>
        <div style="margin-top: 40px; display: flex; flex-direction: column; gap: 24px;">
            <a href="#">Home</a><a href="#" id="mShopLink">Shop</a><a href="#">Trending</a><a href="#deals-section">Deals</a><a href="#">Wishlist</a>
        </div>
    </div>

    <main class="container">
        <!-- Hero Section Redesigned -->
        <div class="hero-modern">
            <div class="hero-content">
                <div class="badge-light">✨ limited edition ✨</div>
                <h1>Beyond the <br>ordinary style.</h1>
                <p style="color: var(--text-secondary); max-width: 480px; margin: 20px 0;">Elevate your everyday with curated pieces, insane deals and sleek design.</p>
                <button class="hero-btn" id="heroShopBtn">Explore Collection →</button>
            </div>
            <div style="background: var(--accent-soft); width: 220px; height: 220px; border-radius: 60px; display: flex; align-items: center; justify-content: center;">
                <i class="fas fa-shopping-bag" style="font-size: 80px; color: var(--accent-primary); opacity: 0.7;"></i>
            </div>
        </div>

        <!-- Categories Elevated -->
        <div class="section-head">
            <div class="badge-light">Browse by category</div>
            <h2>Shop collections</h2>
        </div>
        <div class="categories-grid" id="dynamicCategories"></div>

        <!-- Trending products section -->
        <div class="section-head" id="productsSection">
            <div class="badge-light">🔥 hottest picks</div>
            <h2>Trending now</h2>
        </div>
        <div class="products-grid" id="productsContainer"></div>

        <!-- Flash Sale + Countdown -->
        <div style="margin: 70px 0;" id="deals-section">
            <div class="flash-sale">
                <div><h2 style="font-size: 36px;">⚡ Flash Sale</h2><p>MacBook Pro M3 · limited units</p></div>
                <div class="timer-modern" id="timerBox">
                    <div class="time-unit"><div class="time-number" id="days">0</div><div>Days</div></div>
                    <div class="time-unit"><div class="time-number" id="hours">00</div><div>Hrs</div></div>
                    <div class="time-unit"><div class="time-number" id="minutes">00</div><div>Min</div></div>
                    <div class="time-unit"><div class="time-number" id="seconds">00</div><div>Sec</div></div>
                </div>
                <div><div style="font-size: 36px; font-weight: 800;">$1,099</div><div style="text-decoration:line-through; opacity:0.6;">$1,599</div><button id="flashBuyBtn" class="hero-btn" style="margin-top: 12px; background:white; color:#7c3aed;">Grab deal</button></div>
            </div>
        </div>

        <!-- Testimonials -->
        <div class="section-head"><div class="badge-light">❤️ social proof</div><h2>Loved by customers</h2></div>
        <div class="testimonial-slider" id="testimonialContainer"></div>

        <!-- Newsletter modern -->
        <div class="newsletter-premium" style="margin: 60px 0;">
            <i class="fas fa-envelope-open-text" style="font-size: 42px; color: var(--accent-primary);"></i>
            <h3 style="margin: 12px 0;">Exclusive access</h3>
            <p>Be first to know about drops & secret sales</p>
            <div class="news-group">
                <input type="email" id="newsEmail" placeholder="your@email.com">
                <button class="hero-btn" id="newsBtn">Subscribe →</button>
            </div>
            <div id="newsFeedback" style="margin-top: 16px; font-size: 14px;"></div>
        </div>
    </main>

    <footer class="footer-modern">
        <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 28px;">
            <div><div class="logo" style="font-size: 22px;">NOVA.shop</div><p style="color: var(--text-muted); max-width: 260px;">Redefining digital commerce with elegance & speed.</p></div>
            <div style="display: flex; gap: 48px;"><div><strong>Explore</strong><div style="margin-top: 8px;">New Arrivals<br>Best sellers<br>Gift card</div></div><div><strong>Support</strong><div style="margin-top: 8px;">Help center<br>Returns<br>Track order</div></div></div>
        </div>
        <div class="container" style="text-align: center; margin-top: 42px; color: var(--text-muted); font-size: 13px;">© 2026 NOVA — futuristic commerce</div>
    </footer>

    <script>
        // -------- DATA MODELS ----------
        const categoriesData = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-screen-button' },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop-code' },
            { id: 'clothing', name: 'Streetwear', icon: 'fa-shirt' },
            { id: 'gadgets', name: 'Audio', icon: 'fa-headphones' },
            { id: 'footwear', name: 'Sneakers', icon: 'fa-shoe-prints' },
            { id: 'accessories', name: 'Luxury', icon: 'fa-gem' }
        ];

        const productStore = [
            { id: 101, title: 'iPhone 16 Pro', price: 1199, oldPrice: 1299, rating: 5, reviews: 342, img: 'https://images.unsplash.com/photo-1695048133142-1a20484d2569?w=600&auto=format', category: 'phones' },
            { id: 102, title: 'ZenBook Pro Duo', price: 1899, oldPrice: 2199, rating: 4, reviews: 112, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=600&auto=format', category: 'laptops' },
            { id: 103, title: 'AirPods Pro Max', price: 549, rating: 5, reviews: 670, img: 'https://images.unsplash.com/photo-1613040809024-b4ef7ba99bc3?w=600&auto=format', category: 'gadgets' },
            { id: 104, title: 'Ultraboost 23', price: 180, oldPrice: 230, rating: 5, reviews: 230, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?w=600&auto=format', category: 'footwear' },
            { id: 105, title: 'Minimalist Backpack', price: 89, rating: 4, reviews: 89, img: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=600&auto=format', category: 'accessories' },
            { id: 106, title: 'Hoodie Essential', price: 79, oldPrice: 120, rating: 4, reviews: 412, img: 'https://images.unsplash.com/photo-1556821840-3a63f95609a7?w=600&auto=format', category: 'clothing' },
            { id: 107, title: 'Sony XM6 Headphones', price: 399, rating: 5, reviews: 289, img: 'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?w=600&auto=format', category: 'gadgets' },
            { id: 108, title: 'Galaxy Watch Ultra', price: 449, oldPrice: 599, rating: 4.5, reviews: 164, img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?w=600&auto=format', category: 'accessories' }
        ];

        let cartItemsCount = 0;
        const cartCountSpan = document.getElementById('cartCountGlobal');
        const productsContainer = document.getElementById('productsContainer');
        const categoriesGridDiv = document.getElementById('dynamicCategories');
        const searchInputRef = null; // optional but nice

        // Helper update cart UI
        function updateCartUI() {
            cartCountSpan.innerText = cartItemsCount;
            localStorage.setItem('novaCartCount', cartItemsCount);
        }

        function addToCart(productId) {
            const product = productStore.find(p => p.id === productId);
            if(product) {
                cartItemsCount++;
                updateCartUI();
                const btn = document.querySelector(`.add-cart-btn[data-id='${productId}']`);
                if(btn) {
                    const originalText = btn.innerHTML;
                    btn.innerHTML = '<i class="fas fa-check"></i> Added';
                    setTimeout(() => { btn.innerHTML = originalText; }, 1000);
                }
            }
        }

        function renderProducts(filterCategory = null) {
            let filtered = [...productStore];
            if(filterCategory && filterCategory !== 'all') {
                filtered = productStore.filter(p => p.category === filterCategory);
            }
            productsContainer.innerHTML = filtered.map(p => `
                <div class="product-card">
                    <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
                    <div class="product-info">
                        <div class="product-title">${escapeHtml(p.title)}</div>
                        <div><span class="price-modern">$${p.price}</span>${p.oldPrice ? `<span class="old-price-modern">$${p.oldPrice}</span>` : ''}</div>
                        <div style="margin: 8px 0; font-size:13px;">⭐ ${p.rating} (${p.reviews})</div>
                        <button class="btn-add add-cart-btn" data-id="${p.id}"><i class="fas fa-shopping-cart"></i> Add to cart</button>
                    </div>
                </div>
            `).join('');
            document.querySelectorAll('.add-cart-btn').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    const id = parseInt(btn.dataset.id);
                    addToCart(id);
                });
            });
        }

        function renderCategories() {
            categoriesGridDiv.innerHTML = categoriesData.map(cat => `
                <div class="cat-modern" data-cat="${cat.id}">
                    <div class="cat-icon"><i class="fas ${cat.icon}"></i></div>
                    <h4>${cat.name}</h4>
                    <div style="font-size:13px;">shop now →</div>
                </div>
            `).join('');
            document.querySelectorAll('.cat-modern').forEach(card => {
                card.addEventListener('click', (e) => {
                    const categoryId = card.dataset.cat;
                    renderProducts(categoryId);
                    document.getElementById('productsSection').scrollIntoView({ behavior: 'smooth' });
                });
            });
        }

        // countdown timer
        function initCountdown() {
            const targetTime = new Date().getTime() + (26 * 60 * 60 * 1000) + (35 * 60 * 1000);
            function tick() {
                const now = new Date().getTime();
                const diff = targetTime - now;
                if(diff < 0) { document.getElementById('days').innerText='0'; return; }
                const days = Math.floor(diff / (1000*60*60*24));
                const hours = Math.floor((diff % (86400000)) / 3600000);
                const mins = Math.floor((diff % 3600000) / 60000);
                const secs = Math.floor((diff % 60000) / 1000);
                document.getElementById('days').innerText = days;
                document.getElementById('hours').innerText = hours < 10 ? '0'+hours : hours;
                document.getElementById('minutes').innerText = mins < 10 ? '0'+mins : mins;
                document.getElementById('seconds').innerText = secs < 10 ? '0'+secs : secs;
            }
            tick();
            setInterval(tick, 1000);
        }

        // testimonials
        const testimonialsList = [
            { name: 'Olivia Chen', text: 'The interface is buttery smooth and the deals are incredible. Best shopping experience!', stars: 5, avatar: 'OC' },
            { name: 'Marcus Rivera', text: 'Fast delivery, premium packaging. Love the dark mode integration!', stars: 5 },
            { name: 'Sophia Lee', text: 'Found my new favorite store. The product selection is fire 🔥', stars: 4 }
        ];
        function renderTestimonials() {
            const container = document.getElementById('testimonialContainer');
            container.innerHTML = testimonialsList.map(t => `
                <div class="testi-card">
                    <div class="stars">${'★'.repeat(t.stars)}${'☆'.repeat(5-t.stars)}</div>
                    <p style="margin:12px 0;">“${t.text}”</p>
                    <div style="font-weight:700;">— ${t.name}</div>
                </div>
            `).join('');
        }

        // theme toggler
        function setTheme() {
            const isDark = localStorage.getItem('novaTheme') === 'dark';
            if(isDark) document.body.classList.add('dark');
            else document.body.classList.remove('dark');
            const toggleBtn = document.getElementById('themeToggle');
            if(toggleBtn) toggleBtn.innerHTML = isDark ? '<i class="fas fa-sun"></i>' : '<i class="fas fa-moon"></i>';
        }
        document.getElementById('themeToggle')?.addEventListener('click', () => {
            document.body.classList.toggle('dark');
            const isDarkNow = document.body.classList.contains('dark');
            localStorage.setItem('novaTheme', isDarkNow ? 'dark' : 'light');
            setTheme();
        });

        function escapeHtml(str) { return str.replace(/[&<>]/g, function(m){ if(m==='&') return '&amp;'; if(m==='<') return '&lt;'; if(m==='>') return '&gt;'; return m;}); }

        // event binding for hero, flash sale, newsletter
        document.getElementById('heroShopBtn')?.addEventListener('click', () => {
            document.getElementById('productsSection').scrollIntoView({ behavior: 'smooth' });
        });
        document.getElementById('flashBuyBtn')?.addEventListener('click', () => {
            const dealProduct = productStore.find(p => p.id === 102);
            if(dealProduct) {
                cartItemsCount++;
                updateCartUI();
                alert('🔥 MacBook Pro added to cart (flash deal)');
            }
        });
        document.getElementById('newsBtn')?.addEventListener('click', () => {
            const email = document.getElementById('newsEmail').value;
            const feedback = document.getElementById('newsFeedback');
            if(email && email.includes('@')) {
                feedback.innerHTML = '<span style="color: #7c3aed;">✓ Thanks for subscribing! Enjoy 10% code sent.</span>';
                document.getElementById('newsEmail').value = '';
                setTimeout(()=> feedback.innerHTML='', 3000);
            } else { feedback.innerHTML = '<span style="color:#ef4444;">Valid email needed</span>'; }
        });
        document.getElementById('cartIconBtn')?.addEventListener('click', () => {
            alert(`Cart total: ${cartItemsCount} item(s). Checkout demo!`);
        });
        const savedCart = localStorage.getItem('novaCartCount');
        if(savedCart) { cartItemsCount = parseInt(savedCart); updateCartUI(); } else { updateCartUI(); }

        // category filter on shop link
        const shopLink = document.getElementById('shopByCatLink');
        if(shopLink) shopLink.addEventListener('click', (e) => { e.preventDefault(); renderProducts('all'); document.getElementById('productsSection').scrollIntoView({behavior:'smooth'}); });
        document.getElementById('trendingLink')?.addEventListener('click', (e) => { e.preventDefault(); renderProducts('all'); });
        
        // mobile drawer logic
        const drawer = document.getElementById('mobileDrawer');
        document.getElementById('openDrawerBtn')?.addEventListener('click', ()=> drawer.classList.add('open'));
        document.getElementById('closeDrawerBtn')?.addEventListener('click', ()=> drawer.classList.remove('open'));
        document.getElementById('mShopLink')?.addEventListener('click', (e)=>{ e.preventDefault(); renderProducts('all'); drawer.classList.remove('open'); document.getElementById('productsSection').scrollIntoView({behavior:'smooth'}); });
        
        // init 
        renderCategories();
        renderProducts(null);
        renderTestimonials();
        initCountdown();
        setTheme();
    </script>
</body>
</html>
