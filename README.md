<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>NOVA ESTATE — Beyond the address.</title>
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,400;0,500;0,600;1,400&family=DM+Sans:ital,opsz,wght@0,9..40,300;0,9..40,400;0,9..40,500;1,9..40,400&display=swap" rel="stylesheet" />
  <style>
    :root {
      --ivory: #F3F0E9;
      --ivory-light: #F9F7F2;
      --charcoal: #171715;
      --charcoal-soft: #242421;
      --sand: #B7A58B;
      --taupe: #81776B;
      --beige: #DCD3C5;
      --border: rgba(23, 23, 21, 0.14);
      --border-light: rgba(243, 240, 233, 0.16);
      --font-serif: 'Cormorant Garamond', Georgia, serif;
      --font-sans: 'DM Sans', -apple-system, BlinkMacSystemFont, sans-serif;
      --ease: cubic-bezier(0.22, 1, 0.36, 1);
      --max-w: 1420px;
    }

    *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }
    html { scroll-behavior: smooth; background: var(--ivory); color: var(--charcoal); }
    body {
      font-family: var(--font-sans);
      background: var(--ivory);
      color: var(--charcoal);
      line-height: 1.6;
      -webkit-font-smoothing: antialiased;
      overflow-x: hidden;
      min-height: 100vh;
      display: flex;
      flex-direction: column;
    }
    img { display: block; max-width: 100%; }
    a { color: inherit; text-decoration: none; }
    button, input, select, textarea { font-family: inherit; color: inherit; }
    button { background: none; border: none; cursor: pointer; }

    /* Typography */
    .serif { font-family: var(--font-serif); font-weight: 400; }
    .eyebrow {
      font-size: 11px;
      letter-spacing: 0.22em;
      text-transform: uppercase;
      color: var(--taupe);
      font-weight: 500;
    }
    .eyebrow-sand { color: var(--sand); }

    /* Layout */
    .container { width: 100%; max-width: var(--max-w); margin: 0 auto; padding: 0 48px; }
    .section { padding: 112px 0; }
    .section-sm { padding: 72px 0; }
    .section-dark { background: var(--charcoal); color: var(--ivory); }
    .section-beige { background: var(--beige); color: var(--charcoal); }

    /* Demo Banner */
    .demo-strip {
      background: var(--charcoal);
      color: rgba(243, 240, 233, 0.78);
      font-size: 11px;
      letter-spacing: 0.14em;
      text-transform: uppercase;
      text-align: center;
      padding: 8px 20px;
      border-bottom: 1px solid var(--border-light);
    }

    /* Header */
    .site-header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(243, 240, 233, 0.94);
      backdrop-filter: blur(12px);
      border-bottom: 1px solid var(--border);
      transition: background 0.35s var(--ease);
    }
    .header-inner {
      height: 82px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 24px;
    }
    .brand { display: flex; flex-direction: column; gap: 3px; }
    .brand-name {
      font-family: var(--font-serif);
      font-size: 25px;
      letter-spacing: 0.24em;
      line-height: 1;
      color: var(--charcoal);
    }
    .brand-tag {
      font-size: 9px;
      letter-spacing: 0.3em;
      text-transform: uppercase;
      color: var(--taupe);
    }
    .nav-desktop { display: flex; align-items: center; gap: 34px; }
    .nav-link {
      font-size: 11px;
      letter-spacing: 0.18em;
      text-transform: uppercase;
      color: rgba(23, 23, 21, 0.72);
      position: relative;
      padding: 6px 0;
      transition: color 0.3s var(--ease);
    }
    .nav-link::after {
      content: '';
      position: absolute;
      left: 0; bottom: 0;
      width: 100%; height: 1px;
      background: var(--sand);
      transform: scaleX(0);
      transform-origin: right;
      transition: transform 0.35s var(--ease);
    }
    .nav-link:hover, .nav-link.active { color: var(--charcoal); }
    .nav-link:hover::after, .nav-link.active::after { transform: scaleX(1); transform-origin: left; }

    .header-actions { display: flex; align-items: center; gap: 20px; }
    .lang-switch {
      display: inline-flex;
      border: 1px solid var(--border);
      font-size: 11px;
      letter-spacing: 0.14em;
    }
    .lang-btn {
      padding: 6px 10px;
      color: var(--taupe);
      transition: background 0.25s, color 0.25s;
    }
    .lang-btn.active { background: var(--charcoal); color: var(--ivory); }

    .burger {
      display: none;
      width: 36px; height: 36px;
      flex-direction: column;
      justify-content: center;
      gap: 6px;
      align-items: flex-end;
    }
    .burger span {
      display: block; height: 1px; background: var(--charcoal);
      transition: transform 0.35s var(--ease), opacity 0.25s, width 0.3s;
    }
    .burger span:nth-child(1) { width: 26px; }
    .burger span:nth-child(2) { width: 18px; }
    .burger.open span:nth-child(1) { width: 24px; transform: translateY(3.5px) rotate(45deg); }
    .burger.open span:nth-child(2) { width: 24px; transform: translateY(-3.5px) rotate(-45deg); }

    /* Mobile Drawer */
    .mobile-drawer {
      position: fixed;
      inset: 0;
      z-index: 95;
      background: var(--charcoal);
      color: var(--ivory);
      padding: 120px 32px 48px;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
      opacity: 0;
      pointer-events: none;
      transform: translateY(-16px);
      transition: opacity 0.4s var(--ease), transform 0.45s var(--ease);
    }
    .mobile-drawer.open { opacity: 1; pointer-events: auto; transform: translateY(0); }
    .mobile-nav { display: flex; flex-direction: column; gap: 22px; }
    .mobile-nav a {
      font-family: var(--font-serif);
      font-size: 36px;
      line-height: 1.1;
      color: var(--ivory);
      border-bottom: 1px solid var(--border-light);
      padding-bottom: 14px;
    }

    /* Buttons */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      padding: 15px 30px;
      font-size: 11px;
      letter-spacing: 0.2em;
      text-transform: uppercase;
      border: 1px solid transparent;
      transition: background 0.35s var(--ease), color 0.35s var(--ease), border-color 0.35s var(--ease);
    }
    .btn-primary { background: var(--charcoal); color: var(--ivory); border-color: var(--charcoal); }
    .btn-primary:hover { background: var(--sand); border-color: var(--sand); color: var(--charcoal); }
    .btn-ivory { background: var(--ivory); color: var(--charcoal); border-color: var(--ivory); }
    .btn-ivory:hover { background: var(--sand); border-color: var(--sand); color: var(--charcoal); }
    .btn-outline { background: transparent; color: var(--charcoal); border-color: rgba(23,23,21,0.35); }
    .btn-outline:hover { background: var(--charcoal); color: var(--ivory); border-color: var(--charcoal); }
    .btn-outline-light { background: transparent; color: var(--ivory); border-color: rgba(243,240,233,0.4); }
    .btn-outline-light:hover { background: var(--ivory); color: var(--charcoal); border-color: var(--ivory); }

    /* Page transition wrapper */
    #app { flex: 1; }
    .page-enter {
      animation: pageFadeIn 0.55s var(--ease) both;
    }
    @keyframes pageFadeIn {
      from { opacity: 0; transform: translateY(14px); }
      to { opacity: 1; transform: translateY(0); }
    }

    /* Scroll reveal animations */
    .reveal {
      opacity: 0;
      transform: translateY(24px);
      transition: opacity 0.8s var(--ease), transform 0.85s var(--ease);
    }
    .reveal.visible { opacity: 1; transform: translateY(0); }

    /* Hero */
    .hero {
      position: relative;
      min-height: calc(100vh - 114px);
      display: flex;
      align-items: flex-end;
      background: var(--charcoal);
      color: var(--ivory);
      overflow: hidden;
    }
    .hero-bg {
      position: absolute;
      inset: 0;
      width: 100%; height: 100%;
      object-fit: cover;
      opacity: 0.68;
      transform: scale(1.04);
      animation: heroZoom 1.6s var(--ease) forwards;
    }
    @keyframes heroZoom {
      to { transform: scale(1); }
    }
    .hero-scrim {
      position: absolute;
      inset: 0;
      background: linear-gradient(to top, rgba(23,23,21,0.82) 0%, rgba(23,23,21,0.28) 55%, rgba(23,23,21,0.38) 100%);
    }
    .hero-content {
      position: relative;
      z-index: 2;
      padding: 80px 0 88px;
      display: grid;
      grid-template-columns: 1.5fr 1fr;
      gap: 48px;
      align-items: end;
    }
    .hero-title {
      font-family: var(--font-serif);
      font-size: clamp(46px, 6.2vw, 88px);
      line-height: 1.02;
      letter-spacing: -0.01em;
      margin-top: 18px;
    }
    .hero-sub {
      font-size: 15px;
      color: rgba(243, 240, 233, 0.82);
      max-width: 420px;
      margin-bottom: 28px;
      line-height: 1.7;
    }
    .hero-cta { display: flex; flex-wrap: wrap; gap: 14px; }

    /* Section Headers */
    .section-head {
      display: flex;
      justify-content: space-between;
      align-items: flex-end;
      gap: 24px;
      padding-bottom: 28px;
      border-bottom: 1px solid var(--border);
      margin-bottom: 52px;
    }
    .section-dark .section-head { border-bottom-color: var(--border-light); }
    .section-title {
      font-family: var(--font-serif);
      font-size: clamp(36px, 4vw, 56px);
      line-height: 1.08;
      margin-top: 10px;
    }

    /* Property Cards Grid */
    .grid-3 { display: grid; grid-template-columns: repeat(3, 1fr); gap: 36px; }
    .grid-2 { display: grid; grid-template-columns: repeat(2, 1fr); gap: 40px; }
    .grid-5 { display: grid; grid-template-columns: repeat(5, 1fr); gap: 20px; }

    .prop-card {
      background: var(--ivory-light);
      border: 1px solid var(--border);
      display: flex;
      flex-direction: column;
      transition: border-color 0.35s var(--ease);
    }
    .prop-card:hover { border-color: var(--sand); }
    .prop-media {
      position: relative;
      aspect-ratio: 4 / 3;
      overflow: hidden;
      background: var(--beige);
    }
    .prop-media img {
      width: 100%; height: 100%;
      object-fit: cover;
      transition: transform 0.9s var(--ease);
    }
    .prop-card:hover .prop-media img { transform: scale(1.05); }
    .prop-badge {
      position: absolute;
      top: 16px; left: 16px;
      background: rgba(23, 23, 21, 0.84);
      color: var(--ivory);
      font-size: 10px;
      letter-spacing: 0.2em;
      text-transform: uppercase;
      padding: 7px 12px;
    }
    .prop-body {
      padding: 26px;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
      flex: 1;
      gap: 20px;
    }
    .prop-meta-top {
      display: flex;
      justify-content: space-between;
      font-size: 11px;
      letter-spacing: 0.16em;
      text-transform: uppercase;
      color: var(--taupe);
      margin-bottom: 8px;
    }
    .prop-title {
      font-family: var(--font-serif);
      font-size: 27px;
      line-height: 1.18;
      color: var(--charcoal);
      transition: color 0.3s;
    }
    .prop-card:hover .prop-title { color: var(--taupe); }
    .prop-addr { font-size: 13px; color: var(--taupe); margin-top: 6px; }
    .prop-foot {
      padding-top: 18px;
      border-top: 1px solid var(--border);
      display: flex;
      justify-content: space-between;
      align-items: flex-end;
    }
    .prop-price { font-family: var(--font-serif); font-size: 24px; line-height: 1; }
    .prop-specs { font-size: 12px; color: var(--taupe); margin-top: 6px; }
    .text-link {
      font-size: 11px;
      letter-spacing: 0.18em;
      text-transform: uppercase;
      border-bottom: 1px solid currentColor;
      padding-bottom: 3px;
      transition: opacity 0.25s;
    }
    .text-link:hover { opacity: 0.65; }

    /* Destination Cards */
    .dest-card {
      position: relative;
      aspect-ratio: 3 / 4;
      overflow: hidden;
      background: var(--charcoal-soft);
      display: flex;
      align-items: flex-end;
      padding: 26px;
      color: var(--ivory);
    }
    .dest-card img {
      position: absolute;
      inset: 0; width: 100%; height: 100%;
      object-fit: cover;
      opacity: 0.72;
      transition: transform 0.9s var(--ease), opacity 0.5s;
    }
    .dest-card:hover img { transform: scale(1.06); opacity: 0.85; }
    .dest-card::after {
      content: '';
      position: absolute;
      inset: 0;
      background: linear-gradient(to top, rgba(23,23,21,0.85) 0%, rgba(23,23,21,0.1) 60%);
    }
    .dest-info { position: relative; z-index: 2; }
    .dest-name { font-family: var(--font-serif); font-size: 32px; line-height: 1.1; }
    .dest-count { font-size: 11px; letter-spacing: 0.18em; text-transform: uppercase; color: var(--sand); margin-top: 6px; }

    /* Filters Bar */
    .filters-box {
      background: var(--ivory-light);
      border: 1px solid var(--border);
      padding: 28px;
      margin-bottom: 44px;
    }
    .filters-grid {
      display: grid;
      grid-template-columns: 1.6fr 1fr 1fr 1fr 1fr 1fr;
      gap: 18px;
      align-items: end;
    }
    .field label {
      display: block;
      font-size: 10px;
      letter-spacing: 0.18em;
      text-transform: uppercase;
      color: var(--taupe);
      margin-bottom: 6px;
    }
    .input {
      width: 100%;
      background: transparent;
      border: none;
      border-bottom: 1px solid rgba(23, 23, 21, 0.25);
      padding: 10px 0;
      font-size: 14px;
      color: var(--charcoal);
      outline: none;
      transition: border-color 0.25s;
    }
    .input:focus { border-bottom-color: var(--sand); }
    .filters-bar-foot {
      margin-top: 22px;
      padding-top: 18px;
      border-top: 1px solid var(--border);
      display: flex;
      justify-content: space-between;
      align-items: center;
      flex-wrap: wrap;
      gap: 16px;
    }

    /* Property Detail */
    .gallery-main {
      position: relative;
      aspect-ratio: 16 / 9;
      background: var(--beige);
      overflow: hidden;
      margin-bottom: 14px;
    }
    .gallery-main img { width: 100%; height: 100%; object-fit: cover; transition: opacity 0.35s var(--ease); }
    .gallery-nav {
      position: absolute;
      top: 50%;
      transform: translateY(-50%);
      width: 46px; height: 46px;
      background: rgba(23, 23, 21, 0.78);
      color: var(--ivory);
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 18px;
      transition: background 0.25s;
    }
    .gallery-nav:hover { background: var(--sand); color: var(--charcoal); }
    .gallery-prev { left: 20px; }
    .gallery-next { right: 20px; }
    .gallery-thumbs { display: grid; grid-template-columns: repeat(4, 1fr); gap: 14px; }
    .thumb {
      aspect-ratio: 4 / 3;
      overflow: hidden;
      border: 2px solid transparent;
      opacity: 0.62;
      transition: opacity 0.25s, border-color 0.25s;
    }
    .thumb.active, .thumb:hover { opacity: 1; border-color: var(--sand); }
    .thumb img { width: 100%; height: 100%; object-fit: cover; }

    .specs-strip {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      border: 1px solid var(--border);
      background: var(--ivory-light);
      margin: 44px 0;
    }
    .spec-cell {
      padding: 26px;
      border-right: 1px solid var(--border);
    }
    .spec-cell:last-child { border-right: none; }
    .spec-val { font-family: var(--font-serif); font-size: 32px; margin-top: 6px; }

    .detail-layout { display: grid; grid-template-columns: 1.4fr 1fr; gap: 64px; align-items: start; }
    .features-list {
      display: grid;
      grid-template-columns: repeat(2, 1fr);
      gap: 12px;
      list-style: none;
      margin-top: 20px;
    }
    .features-list li {
      padding: 14px 18px;
      border: 1px solid var(--border);
      background: var(--ivory-light);
      font-size: 14px;
    }

    /* Editorial Forms */
    .form-card {
      background: var(--ivory-light);
      border: 1px solid var(--border);
      padding: 36px;
    }
    .form-stack { display: flex; flex-direction: column; gap: 20px; margin-top: 24px; }
    .form-row { display: grid; grid-template-columns: 1fr 1fr; gap: 18px; }
    .field-error { font-size: 12px; color: #8B2E2E; margin-top: 6px; display: none; }
    .field-error.show { display: block; }
    .form-notice {
      padding: 16px 18px;
      border: 1px solid var(--sand);
      background: var(--beige);
      font-size: 13px;
      line-height: 1.6;
      display: none;
    }
    .form-notice.show { display: block; }

    /* Journal */
    .journal-card {
      border-top: 1px solid var(--border);
      padding-top: 24px;
      display: flex;
      flex-direction: column;
      gap: 16px;
    }
    .journal-img { aspect-ratio: 16 / 10; overflow: hidden; background: var(--beige); }
    .journal-img img { width: 100%; height: 100%; object-fit: cover; transition: transform 0.8s var(--ease); }
    .journal-card:hover .journal-img img { transform: scale(1.04); }

    /* Footer */
    .site-footer {
      background: var(--charcoal);
      color: var(--ivory);
      border-top: 1px solid var(--border-light);
      margin-top: auto;
    }
    .footer-grid {
      padding: 84px 0 64px;
      display: grid;
      grid-template-columns: 1.6fr 1fr 1fr 1.3fr;
      gap: 48px;
    }
    .footer-links { list-style: none; display: flex; flex-direction: column; gap: 12px; margin-top: 18px; }
    .footer-links a { font-size: 14px; color: rgba(243,240,233,0.72); transition: color 0.25s; }
    .footer-links a:hover { color: var(--sand); }
    .footer-bottom {
      border-top: 1px solid var(--border-light);
      padding: 24px 0;
      display: flex;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 16px;
      font-size: 12px;
      color: rgba(243,240,233,0.52);
    }

    /* Responsive */
    @media (max-width: 1180px) {
      .container { padding: 0 28px; }
      .grid-5 { grid-template-columns: repeat(3, 1fr); }
      .filters-grid { grid-template-columns: repeat(3, 1fr); }
    }
    @media (max-width: 960px) {
      .nav-desktop { display: none; }
      .burger { display: flex; }
      .hero-content { grid-template-columns: 1fr; padding: 56px 0 64px; gap: 28px; }
      .grid-3, .grid-2, .detail-layout, .footer-grid { grid-template-columns: 1fr; }
      .grid-5 { grid-template-columns: repeat(2, 1fr); }
      .specs-strip { grid-template-columns: repeat(2, 1fr); }
      .spec-cell { border-bottom: 1px solid var(--border); }
      .section { padding: 76px 0; }
      .section-head { flex-direction: column; align-items: flex-start; }
    }
    @media (max-width: 600px) {
      .container { padding: 0 20px; }
      .filters-grid, .form-row, .features-list, .grid-5 { grid-template-columns: 1fr; }
      .gallery-thumbs { grid-template-columns: repeat(3, 1fr); }
      .form-card { padding: 24px; }
    }
  </style>
</head>
<body>

  <div class="demo-strip" id="demo-strip"></div>

  <header class="site-header">
    <div class="container header-inner">
      <a href="#/" class="brand" data-link="/">
        <span class="brand-name">NOVA ESTATE</span>
        <span class="brand-tag" data-i18n="slogan">Beyond the address.</span>
      </a>

      <nav class="nav-desktop" id="desktop-nav" aria-label="Primary"></nav>

      <div class="header-actions">
        <div class="lang-switch" role="group" aria-label="Language switch">
          <button type="button" class="lang-btn" data-lang="en">EN</button>
          <button type="button" class="lang-btn" data-lang="ru">RU</button>
        </div>
        <button type="button" class="burger" id="burger-btn" aria-label="Menu">
          <span></span><span></span>
        </button>
      </div>
    </div>
  </header>

  <div class="mobile-drawer" id="mobile-drawer">
    <nav class="mobile-nav" id="mobile-nav"></nav>
    <div>
      <p class="eyebrow eyebrow-sand" data-i18n="slogan">Beyond the address.</p>
      <p style="font-size:13px; color:rgba(243,240,233,0.65); margin-top:8px;">
        Monaco · London · Dubai · Paris · Milan
      </p>
    </div>
  </div>

  <main id="app" aria-live="polite"></main>

  <footer class="site-footer" id="site-footer"></footer>

  <script>
    (function () {
      'use strict';

      /* =========================================================
         1. TRANSLATIONS (EN / RU)
         ========================================================= */
      const I18N = {
        en: {
          slogan: 'Beyond the address.',
          demoBanner: 'Demonstration Portfolio — Illustrative residences for showcase purposes only. Not live agency listings.',
          nav: {
            home: 'Home',
            properties: 'Portfolio',
            destinations: 'Destinations',
            about: 'About',
            services: 'Services',
            journal: 'Journal',
            contact: 'Contact',
          },
          hero: {
            eyebrow: 'Monaco · London · Dubai · Paris · Milan',
            title: 'Architecture of Permanence & Quiet Distinction.',
            sub: 'An international private real estate advisory curating singular residences for collectors, family offices, and discerning principals.',
            ctaPrimary: 'Explore Portfolio',
            ctaSecondary: 'Private Advisory',
          },
          home: {
            curatedEyebrow: 'Curated Selection',
            curatedTitle: 'Signature Residences',
            viewAll: 'View Full Portfolio',
            destEyebrow: 'Five Capitals',
            destTitle: 'Global Destinations',
            destSub: 'Explore our regional desks and illustrative residences across Europe and the Middle East.',
            philEyebrow: 'The Maison',
            philTitle: 'Discretion, Architectural Merit, and Provenance.',
            philText: 'NOVA ESTATE operates as a private office rather than a volume brokerage. Every mandate is evaluated for structural integrity, natural light, and long-term cultural value.',
            philCta: 'About NOVA ESTATE',
            journalEyebrow: 'Editorial',
            journalTitle: 'The NOVA Journal',
            readAll: 'All Articles',
          },
          catalog: {
            eyebrow: 'Demonstration Portfolio',
            title: 'Curated Residences',
            searchLabel: 'Search',
            searchPlaceholder: 'Residence, district, city...',
            cityLabel: 'Destination',
            allCities: 'All Destinations',
            typeLabel: 'Type',
            allTypes: 'All Types',
            minPrice: 'Min Price (€)',
            maxPrice: 'Max Price (€)',
            sortLabel: 'Sort By',
            sortNewest: 'Newest Added',
            sortPriceAsc: 'Price: Low to High',
            sortPriceDesc: 'Price: High to Low',
            reset: 'Reset Filters',
            found: 'residences shown',
            emptyTitle: 'No residences match your current criteria.',
            emptySub: 'Adjust your filters or reset to browse the full demonstration portfolio.',
            viewResidence: 'View Residence',
            bed: 'Bed',
            bath: 'Bath',
          },
          detail: {
            back: 'Back to Portfolio',
            demoNote: 'Demonstration listing — illustrative pricing and specifications.',
            area: 'Living Area',
            bedrooms: 'Bedrooms',
            bathrooms: 'Bathrooms',
            year: 'Year Built',
            overview: 'Architectural Overview',
            specs: 'Key Specifications',
            inquireTitle: 'Request a Private Dossier',
            inquireSub: 'Our advisory desk responds within 24 hours.',
          },
          destinations: {
            eyebrow: 'Global Presence',
            title: 'Five Architectural Capitals',
            sub: 'Each regional desk combines local market intelligence with cross-border legal and architectural advisory.',
            residencesCount: 'Residences',
            explore: 'Explore Destination',
            marketTitle: 'Regional Portfolio',
            backAll: 'All Destinations',
          },
          about: {
            eyebrow: 'The Maison',
            title: 'Beyond the address.',
            lead: 'Founded for clients who view residential real estate as architectural heritage, NOVA ESTATE bridges private advisory, design curation, and cross-border acquisition.',
            p1Title: '01 — Curatorial Rigor',
            p1Text: 'We represent a strictly limited portfolio. Every property is reviewed for proportion, materiality, privacy, and enduring neighborhood value.',
            p2Title: '02 — Private Circulation',
            p2Text: 'Significant transactions require quiet execution. Our desks coordinate confidential introductions between owners, family offices, and vetted principals.',
            p3Title: '03 — Cross-Border Desk',
            p3Text: 'From Monaco residency considerations to London leasehold structures and Dubai freehold acquisitions, we align with leading legal counsel.',
            ctaTitle: 'Discuss an Acquisition or Mandate',
            ctaBtn: 'Contact Private Office',
          },
          services: {
            eyebrow: 'Advisory Capabilities',
            title: 'Private Client Services',
            lead: 'Tailored representation across acquisition, discreet disposition, and architectural stewardship.',
            items: [
              { num: '01', title: 'Private Acquisition', text: 'Dedicated search across on-market and off-market residences in Monaco, London, Dubai, Paris, and Milan, including technical due diligence and valuation.' },
              { num: '02', title: 'Discreet Disposition', text: 'Bespoke editorial positioning, architectural photography, and targeted private placement to qualified international buyers without public overexposure.' },
              { num: '03', title: 'Architectural & Interior Advisory', text: 'Introductions to leading European architects, conservation specialists, and bespoke interior ateliers for turnkey restoration.' },
              { num: '04', title: 'Family Office & Relocation', text: 'Coordinated support with cross-border legal teams, private banks, and lifestyle integration across five global capitals.' },
            ],
            cta: 'Schedule a Consultation',
          },
          journal: {
            eyebrow: 'Editorial',
            title: 'The NOVA Journal',
            sub: 'Essays on residential architecture, material permanence, and global property markets.',
            readArticle: 'Read Essay',
            backJournal: 'Back to Journal',
          },
          contact: {
            eyebrow: 'Private Office',
            title: 'Direct Advisory Inquiry',
            sub: 'Reach our regional desks in Monaco, London, Dubai, Paris, and Milan.',
            formTitle: 'Send an Inquiry',
            name: 'Full Name *',
            email: 'Email Address *',
            phone: 'Telephone *',
            destination: 'Preferred Destination',
            message: 'Inquiry Details *',
            submit: 'Submit Inquiry',
            errName: 'Please enter your full name (min. 2 characters).',
            errEmail: 'Please enter a valid email address.',
            errPhone: 'Please enter a valid telephone number.',
            errMsg: 'Please provide at least 10 characters in your message.',
            demoSuccess: 'Validation passed. Demonstration Mode: this static single-file showcase is not connected to a live mail server or CRM, so your inquiry was not transmitted externally.',
          },
          footer: {
            desc: 'International architectural real estate advisory representing singular residences across Monaco, London, Dubai, Paris, and Milan.',
            navTitle: 'Navigation',
            destTitle: 'Destinations',
            officeTitle: 'Flagship Desks',
            rights: '© 2026 NOVA ESTATE. Demonstration portfolio — illustrative data only.',
          },
        },
        ru: {
          slogan: 'Beyond the address.',
          demoBanner: 'Демонстрационное портфолио — объекты представлены в ознакомительных целях и не являются реальными предложениями агентства.',
          nav: {
            home: 'Главная',
            properties: 'Каталог',
            destinations: 'Направления',
            about: 'О нас',
            services: 'Услуги',
            journal: 'Журнал',
            contact: 'Контакты',
          },
          hero: {
            eyebrow: 'Монако · Лондон · Дубай · Париж · Милан',
            title: 'Архитектура вне времени и тихая исключительность.',
            sub: 'Международное агентство элитной недвижимости для частных клиентов и family offices. Подбираем редкие резиденции с безупречной архитектурой и провенансом.',
            ctaPrimary: 'Смотреть каталог',
            ctaSecondary: 'Частный офис',
          },
          home: {
            curatedEyebrow: 'Избранная коллекция',
            curatedTitle: 'Знаковые резиденции',
            viewAll: 'Весь каталог',
            destEyebrow: 'Пять столиц',
            destTitle: 'Ключевые направления',
            destSub: 'Изучите наши региональные офисы и демонстрационную коллекцию объектов в Европе и на Ближнем Востоке.',
            philEyebrow: 'О Доме',
            philTitle: 'Конфиденциальность, архитектурная ценность и статус.',
            philText: 'NOVA ESTATE работает в формате закрытого частного офиса. Каждый объект проходит оценку по пропорциям, материалам, естественному свету и долгосрочной ликвидности.',
            philCta: 'О компании',
            journalEyebrow: 'Редакция',
            journalTitle: 'Журнал NOVA',
            readAll: 'Все статьи',
          },
          catalog: {
            eyebrow: 'Демонстрационный каталог',
            title: 'Коллекция резиденций',
            searchLabel: 'Поиск',
            searchPlaceholder: 'Название, район, город...',
            cityLabel: 'Направление',
            allCities: 'Все направления',
            typeLabel: 'Тип объекта',
            allTypes: 'Все типы',
            minPrice: 'Цена от (€)',
            maxPrice: 'Цена до (€)',
            sortLabel: 'Сортировка',
            sortNewest: 'Сначала новые',
            sortPriceAsc: 'Цена: по возрастанию',
            sortPriceDesc: 'Цена: по убыванию',
            reset: 'Сбросить фильтры',
            found: 'объектов найдено',
            emptyTitle: 'По заданным параметрам резиденции не найдены.',
            emptySub: 'Измените условия фильтрации или сбросьте их, чтобы увидеть всю коллекцию.',
            viewResidence: 'Подробнее',
            bed: 'Спальни',
            bath: 'Ванные',
          },
          detail: {
            back: 'Вернуться в каталог',
            demoNote: 'Демонстрационный объект — цены и характеристики носят иллюстративный характер.',
            area: 'Площадь',
            bedrooms: 'Спальни',
            bathrooms: 'Ванные',
            year: 'Год постройки',
            overview: 'Архитектурный обзор',
            specs: 'Ключевые характеристики',
            inquireTitle: 'Запросить презентацию',
            inquireSub: 'Специалист частного офиса свяжется с вами в течение 24 часов.',
          },
          destinations: {
            eyebrow: 'География',
            title: 'Пять архитектурных столиц',
            sub: 'Каждый региональный офис объединяет глубокую локальную экспертизу с международным юридическим и архитектурным сопровождением.',
            residencesCount: 'Объекта',
            explore: 'Открыть направление',
            marketTitle: 'Резиденции направления',
            backAll: 'Все направления',
          },
          about: {
            eyebrow: 'О компании',
            title: 'Beyond the address.',
            lead: 'Созданное для клиентов, воспринимающих недвижимость как архитектурное наследие, агентство NOVA ESTATE объединяет частный консалтинг, кураторство и международные сделки.',
            p1Title: '01 — Кураторский отбор',
            p1Text: 'Мы работаем с ограниченной коллекцией. Каждая резиденция оценивается по архитектуре, приватности, материалам и качеству окружения.',
            p2Title: '02 — Закрытые сделки',
            p2Text: 'Значимые активы требуют тишины. Наши партнёры организуют конфиденциальные показы между собственниками и верифицированными покупателями.',
            p3Title: '03 — Международная экспертиза',
            p3Text: 'Сопровождаем сложные трансграничные сделки в Монако, Лондоне, Дубае, Париже и Милане совместно с профильными юридическими бюро.',
            ctaTitle: 'Обсудить покупку или мандат на продажу',
            ctaBtn: 'Связаться с офисом',
          },
          services: {
            eyebrow: 'Компетенции',
            title: 'Услуги частного офиса',
            lead: 'Индивидуальное сопровождение сделок купли-продажи и архитектурного развития активов.',
            items: [
              { num: '01', title: 'Частный подбор (Acquisition)', text: 'Поиск открытых и закрытых (off-market) резиденций в Монако, Лондоне, Дубае, Париже и Милане с техническим и ценовым аудитом.' },
              { num: '02', title: 'Конфиденциальная продажа', text: 'Редакционное позиционирование, архитектурная съёмка и адресное предложение международным покупателям без массовой рекламы.' },
              { num: '03', title: 'Архитектурный консалтинг', text: 'Привлечение ведущих европейских архитекторов, реставраторов и интерьерных бюро для реализации проектов под ключ.' },
              { num: '04', title: 'Family Office и релокация', text: 'Координация с налоговыми и юридическими консультантами, частными банками и инфраструктурой в пяти столицах.' },
            ],
            cta: 'Записаться на консультацию',
          },
          journal: {
            eyebrow: 'Редакция',
            title: 'Журнал NOVA',
            sub: 'Редакционные материалы о современной архитектуре, материалах и рынках элитной недвижимости.',
            readArticle: 'Читать статью',
            backJournal: 'Ко всем статьям',
          },
          contact: {
            eyebrow: 'Частный офис',
            title: 'Связаться с NOVA ESTATE',
            sub: 'Прямой контакт с нашими региональными офисами в Монако, Лондоне, Дубае, Париже и Милане.',
            formTitle: 'Отправить запрос',
            name: 'Ваше имя *',
            email: 'Электронная почта *',
            phone: 'Телефон *',
            destination: 'Интересующее направление',
            message: 'Детали запроса *',
            submit: 'Отправить запрос',
            errName: 'Укажите ваше имя (минимум 2 символа).',
            errEmail: 'Введите корректный адрес электронной почты.',
            errPhone: 'Укажите корректный номер телефона.',
            errMsg: 'Напишите сообщение длиной не менее 10 символов.',
            demoSuccess: 'Проверка формы пройдена. Демонстрационный режим: этот автономный HTML-файл не подключён к серверу отправки почты или CRM, поэтому заявка никуда не отправлена.',
          },
          footer: {
            desc: 'Международное агентство архитектурной недвижимости в Монако, Лондоне, Дубае, Париже и Милане.',
            navTitle: 'Навигация',
            destTitle: 'Направления',
            officeTitle: 'Флагманские офисы',
            rights: '© 2026 NOVA ESTATE. Демонстрационное портфолио — данные носят ознакомительный характер.',
          },
        },
      };

      /* =========================================================
         2. DATA: DESTINATIONS, PROPERTIES (10), JOURNAL (3)
         ========================================================= */
      const DESTINATIONS = [
        {
          id: 'Monaco',
          name: { en: 'Monaco', ru: 'Монако' },
          country: { en: 'Principality of Monaco', ru: 'Княжество Монако' },
          image: 'https://images.unsplash.com/photo-1534258936925-c58bed479fcb?auto=format&fit=crop&w=1400&q=85',
          intro: {
            en: 'A two-square-kilometer sanctuary of Mediterranean light, sovereign security, and trophy coastal architecture.',
            ru: 'Два квадратных километра средиземноморского света, абсолютной безопасности и знаковой прибрежной архитектуры.',
          },
          avgPrice: '€58,000 / m²',
        },
        {
          id: 'London',
          name: { en: 'London', ru: 'Лондон' },
          country: { en: 'United Kingdom', ru: 'Великобритания' },
          image: 'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?auto=format&fit=crop&w=1400&q=85',
          intro: {
            en: 'Georgian garden squares in Belgravia and lateral Mayfair penthouses uniting centuries of provenance with modern craft.',
            ru: 'Георгианские особняки Белгравии и пентхаусы Мейфэра, объединяющие вековую историю с современным комфортом.',
          },
          avgPrice: '€32,500 / m²',
        },
        {
          id: 'Dubai',
          name: { en: 'Dubai', ru: 'Дубай' },
          country: { en: 'United Arab Emirates', ru: 'ОАЭ' },
          image: 'https://images.unsplash.com/photo-1512453979798-5ea266f8880c?auto=format&fit=crop&w=1400&q=85',
          intro: {
            en: 'Sculptural beachfront villas on Palm Jumeirah and private island sky residences engineered for year-round indoor-outdoor living.',
            ru: 'Скульптурные виллы на побережье Palm Jumeirah и островные пентхаусы с приватными причалами и панорамой залива.',
          },
          avgPrice: '€21,000 / m²',
        },
        {
          id: 'Paris',
          name: { en: 'Paris', ru: 'Париж' },
          country: { en: 'France', ru: 'Франция' },
          image: 'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?auto=format&fit=crop&w=1400&q=85',
          intro: {
            en: 'Haussmannian reception apartments along Avenue Montaigne and secluded Left Bank hôtels particuliers.',
            ru: 'Парадные османовские резиденции на авеню Монтень и уединённые особняки с садами на Левом берегу.',
          },
          avgPrice: '€28,400 / m²',
        },
        {
          id: 'Milan',
          name: { en: 'Milan', ru: 'Милан' },
          country: { en: 'Italy', ru: 'Италия' },
          image: 'https://images.unsplash.com/photo-1513581166391-887a96ddeafd?auto=format&fit=crop&w=1400&q=85',
          intro: {
            en: 'Discreet stone courtyards, Rationalist attics in Brera, and private botanical villas in the Quadrilatero della Moda.',
            ru: 'Закрытые каменные дворики, пентхаусы в Брере и редкие городские виллы в квартале моды Quadrilatero.',
          },
          avgPrice: '€19,800 / m²',
        },
      ];

      const PROPERTIES = [
        {
          slug: 'carre-dor-triplex-monaco',
          city: 'Monaco',
          type: 'Penthouse',
          price: 34500000,
          area: 560,
          bedrooms: 4,
          bathrooms: 5,
          year: 2024,
          featured: true,
          date: '2026-11-18',
          title: { en: 'Carré d’Or Triplex Penthouse', ru: 'Триплекс-пентхаус в Карре д’Ор' },
          address: { en: 'Avenue de Monte-Carlo, Monaco', ru: 'Авеню де Монте-Карло, Монако' },
          desc: {
            en: 'Crowning a discreet limestone tower steps from Casino Square, this architectural triplex commands uninterrupted views across Port Hercule and the Mediterranean. Features a private rooftop infinity pool, shaded travertine dining loggia, and four underground parking boxes.',
            ru: 'Занимающий три верхних уровня камерной башни рядом с площадью Казино, этот пентхаус открывает панорамные виды на Порт-Эркюль и Средиземное море. В распоряжении владельца — панорамный бассейн на крыше, терраса из травертина и 4 закрытых парковочных бокса.',
          },
          features: {
            en: ['Rooftop Infinity Pool', 'Port Hercule Views', 'Private Lift Lobby', '4 Underground Boxes', '24/7 Concierge & Security', 'Acoustic Triple Glazing'],
            ru: ['Инфинити-бассейн на крыше', 'Вид на Порт-Эркюль', 'Приватный лифтовой холл', '4 закрытых бокса в паркинге', 'Консьерж и охрана 24/7', 'Акустическое остекление'],
          },
          images: [
            'https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?auto=format&fit=crop&w=1600&q=85',
            'https://images.unsplash.com/photo-1600607687939-ce8a6c25118c?auto=format&fit=crop&w=1600&q=85',
            'https://images.unsplash.com/photo-1600585154340-be6161a56a0c?auto=format&fit=crop&w=1600&q=85',
            'https://images.unsplash.com/photo-1600566753376-12c8ab7fb75b?auto=format&fit=crop&w=1600&q=85',
          ],
        },
        {
          slug: 'mareterra-seafront-residence-monaco',
          city: 'Monaco',
          type: 'Residence',
          price: 26800000,
          area: 430,
          bedrooms: 4,
          bathrooms: 4,
          year: 2025,
          featured: false,
          date: '2026-11-10',
          title: { en: 'Mareterra Waterfront Residence', ru: 'Прибрежная резиденция Mareterra' },
          address: { en: 'Promenade Prince Jacques, Larvotto, Monaco', ru: 'Променад Принца Жака, Ларвотто, Монако' },
          desc: {
            en: 'Set within Monaco’s landmark coastal extension, this serene lateral residence blends bleached European oak, honed limestone, and deep seafront loggias hovering directly above the water.',
            ru: 'Расположенная в новом прибрежном квартале Монако, эта светлая резиденция сочетает выбеленный дуб, матовый известняк и глубокие лоджии непосредственно над линией воды.',
          },
          features: {
            en: ['Direct Seafront Loggia', 'Private Marina Access', 'Geothermal Climate System', 'Private Wine Cellar', 'Biometric Access', '3 Parking Spaces'],
            ru: ['Лоджия на первой линии моря', 'Доступ к приватной марине', 'Геотермальный климат-контроль', 'Винный погреб', 'Биометрический доступ', '3 машиноместа'],
          },
          images: [
            'https://images.unsplash.com/photo-1600047509807-ba8f99d2cdde?auto=format&fit=crop&w=1600&q=85',
            'https://images.unsplash.com/photo-1600585153490-76fb20a32601?auto=format&fit=crop&w=1600&q=85',
            'https://images.unsplash.com/photo-1600566752734-2a0cd66c42f1?auto=format&fit=crop&w=1600&q=85',
          ],
        },
        {
          slug: 'eaton-square-townhouse-london',
          city: 'London',
          type: 'Townhouse',
          price: 18500000,
          area: 685,
          bedrooms: 6,
          bathrooms: 7,
          year: 1848,
          featured: true,
          date: '2026-11-17',
          title: { en: 'Eaton Square Limestone Townhouse', ru: 'Георгианский таунхаус на Итон-сквер' },
          address: { en: '42 Eaton Square, Belgravia, London SW1W', ru: 'Итон-сквер 42, Белгравия, Лондон' },
          desc: {
            en: 'Restored over thirty-six months to museum standards, this Grade II* Georgian residence overlooks private Belgravia gardens. Soaring 4.2m reception ceilings connect via private lift to a subterranean 14m lap pool and wine vault.',
            ru: 'Отреставрированный в течение трёх лет особняк с видом на закрытые сады Белгравии. Парадные гостиные с потолками 4,2 м соединены приватным лифтом с подземным 14-метровым бассейном и винным хранилищем.',
          },
          features: {
            en: ['Private Square Garden Access', '14m Indoor Lap Pool', 'Passenger Lift', '1,200-Bottle Wine Vault', 'Staff Quarters', '24/7 Belgravia Security'],
            ru: ['Ключ от закрытого сада', 'Крытый бассейн 14 м', 'Приватный лифт', 'Винная комната на 1200 бутылок', 'Апартаменты для персонала', 'Охрана Белгравии 24/7'],
          },
          images: [
            'https://images.unsplash.com/photo-1600585154340-be6161a56a0c?auto=format&fit=crop&w=1600&q=85',
            'https://images.unsplash.com/photo-1600210492486-724fe5c67fb0?auto=format&fit=crop&w=1600&q=85',
            'https://images.unsplash.com/photo-1600607687939-ce8a6c25118c?auto=format&fit=crop&w=1600&q=85',
          ],
        },
        {
          slug: 'grosvenor-penthouse-london',
          city: 'London',
          type: 'Penthouse',
          price: 14200000,
          area: 440,
          bedrooms: 4,
          bathrooms: 5,
          year: 2023,
          featured: false,
          date: '2026-11-12',
          title: { en: 'Grosvenor Lateral Penthouse', ru: 'Пентхаус на Гросвенор-стрит' },
          address: { en: '19 Grosvenor Street, Mayfair, London W1K', ru: 'Гросвенор-стрит 19, Мейфэр, Лондон' },
          desc: {
            en: 'Occupying the entire top floor of a discreet Portland stone building in Mayfair, this lateral residence offers smoked-oak joinery, gallery lighting, and a 110 m² landscaped bronze terrace.',
            ru: 'Занимающий весь верхний этаж здания из портлендского камня в Мейфэре, этот одноуровневый пентхаус отличается отделкой из копчёного дуба и озеленённой террасой площадью 110 м².',
          },
          features: {
            en: ['Direct Lift Entry', '110 m² Landscaped Terrace', 'Valet Underground Parking', 'Bespoke Bulthaup Kitchen', 'Private Concierge', 'Lutron HomeWorks'],
            ru: ['Прямой выход из лифта', 'Терраса 110 м²', 'Подземный валет-паркинг', 'Кухня Bulthaup', 'Частный консьерж', 'Освещение Lutron'],
          },
          images: [
            'https://images.unsplash.com/photo-1600585154526-990dced4db0d?auto=format&fit=crop&w=1600&q=85',
            'https://images.unsplash.com/photo-1600566753376-12c8ab7fb75b?auto=format&fit=crop&w=1600&q=85',
            'https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?auto=format&fit=crop&w=1600&q=85',
          ],
        },
        {
          slug: 'palm-jumeirah-monolith-dubai',
          city: 'Dubai',
          type: 'Villa',
          price: 22500000,
          area: 1120,
          bedrooms: 6,
          bathrooms: 8,
          year: 2025,
          featured: true,
          date: '2026-11-16',
          title: { en: 'Frond N Architectural Waterfront Villa', ru: 'Архитектурная вилла на Frond N' },
          address: { en: 'Frond N, Palm Jumeirah, Dubai', ru: 'Ветвь N, Palm Jumeirah, Дубай' },
          desc: {
            en: 'Cantilevered travertine and low-iron glass dissolve the boundary between gallery-scale interiors and 35 meters of private Arabian Gulf shoreline. Complete with a 24m infinity pool and six-car subterranean gallery.',
            ru: 'Консольные плиты из итальянского травертина и панорамное остекление стирают границу между интерьером и 35 метрами приватного пляжа. Включает 24-метровый бассейн и подземную галерею на 6 автомобилей.',
          },
          features: {
            en: ['35m Private Beachfront', '24m Infinity Pool', '6-Car Basement Gallery', 'Private Cinema', 'Rooftop Sunset Lounge', 'Smart Home Automation'],
            ru: ['35 м приватного пляжа', 'Инфинити-бассейн 24 м', 'Подземный гараж на 6 авто', 'Домашний кинотеатр', 'Лаунж-терраса на крыше', 'Умный дом'],
          },
          images: [
            'https://images.unsplash.com/photo-1613977257363-707ba9348227?auto=format&fit=crop&w=1600&q=85',
            'https://images.unsplash.com/photo-1613490493576-7fde63acd811?auto=format&fit=crop&w=1600&q=85',
            'https://images.unsplash.com/photo-1600607687920-4e2a09cf159d?auto=format&fit=crop&w=1600&q=85',
          ],
        },
        {
          slug: 'jumeirah-bay-sky-penthouse-dubai',
          city: 'Dubai',
          type: 'Penthouse',
          price: 19800000,
          area: 790,
          bedrooms: 5,
          bathrooms: 6,
          year: 2026,
          featured: false,
          date: '2026-11-08',
          title: { en: 'Jumeirah Bay Island Sky Penthouse', ru: 'Небесный пентхаус на Jumeirah Bay' },
          address: { en: 'Jumeirah Bay Island, Dubai', ru: 'Остров Jumeirah Bay, Дубай' },
          desc: {
            en: 'Full-floor island sanctuary framed by sculptural bronze louvers and 360-degree views of both open sea and Downtown skyline, paired with a private yacht berth.',
            ru: 'Резиденция на весь этаж на закрытом острове с панорамой 360° на море и горизонт Даунтауна, дополненная собственным причалом для яхты.',
          },
          features: {
            en: ['Private Yacht Berth', '360° Sea & Skyline Views', 'Private Plunge Pool', 'Dedicated Island Security', 'Private Elevator Lobby', 'Show & Service Kitchens'],
            ru: ['Приватный причал для яхты', 'Панорама 360° на море и город', 'Собственный бассейн на террасе', 'Закрытая охрана острова', 'Приватный лифт', 'Две кухни (парадная и рабочая)'],
          },
          images: [
            'https://images.unsplash.com/photo-1512917774080-9991f1c4c750?auto=format&fit=crop&w=1600&q=85',
            'https://images.unsplash.com/photo-1600585154363-67eb9e2e2099?auto=format&fit=crop&w=1600&q=85',
            'https://images.unsplash.com/photo-1600566753086-00f18fb6b3ea?auto=format&fit=crop&w=1600&q=85',
          ],
        },
        {
          slug: 'avenue-montaigne-residence-paris',
          city: 'Paris',
          type: 'Residence',
          price: 16900000,
          area: 520,
          bedrooms: 5,
          bathrooms: 6,
          year: 1892,
          featured: true,
          date: '2026-11-15',
          title: { en: 'Avenue Montaigne Piano Nobile', ru: 'Парадная резиденция на авеню Монтень' },
          address: { en: '28 Avenue Montaigne, 8e, Paris', ru: 'Авеню Монтень 28, 8-й округ, Париж' },
          desc: {
            en: 'In the heart of Paris’s Triangle d’Or, three grand salons enfilade pair original Versailles parquet and carved limestone hearths with museum-grade art lighting and direct Eiffel Tower vistas.',
            ru: 'В сердце Золотого треугольника Парижа анфилада из трёх парадных гостиных с версальским паркетом и резными каминами открывает прямые виды на Эйфелеву башню.',
          },
          features: {
            en: ['Eiffel Tower Vistas', 'Original Versailles Parquet', 'Courtyard Parking', 'Private Library', 'Museum Climate Control', 'Independent Staff Studio'],
            ru: ['Вид на Эйфелеву башню', 'Исторический версальский паркет', 'Парковка во внутреннем дворе', 'Кабинет-библиотека', 'Музейный климат-контроль', 'Студия для персонала'],
          },
          images: [
            'https://images.unsplash.com/photo-1600607687644-c7171b42498f?auto=format&fit=crop&w=1600&q=85',
            'https://images.unsplash.com/photo-1600573472591-ee6b68d14c68?auto=format&fit=crop&w=1600&q=85',
            'https://images.unsplash.com/photo-1600566753190-17f0baa2a6c3?auto=format&fit=crop&w=1600&q=85',
          ],
        },
        {
          slug: 'saint-germain-courtyard-paris',
          city: 'Paris',
          type: 'Townhouse',
          price: 9400000,
          area: 340,
          bedrooms: 3,
          bathrooms: 4,
          year: 1910,
          featured: false,
          date: '2026-11-06',
          title: { en: 'Rue de l’Université Courtyard Loft', ru: 'Особняк с садом в Сен-Жермен' },
          address: { en: '74 Rue de l’Université, 7e, Paris', ru: 'Рю де л’Юниверсите 74, 7-й округ, Париж' },
          desc: {
            en: 'Concealed behind an 18th-century carriage gate on the Left Bank, this architectural duplex wraps around a sculpted 95 m² private stone garden with raw lime plaster and bronze staircases.',
            ru: 'Скрытый за историческими воротами XVIII века на Левом берегу, этот двухуровневый особняк окружает приватный каменный сад площадью 95 м².',
          },
          features: {
            en: ['95 m² Private Garden', 'Double-Height Atelier', 'Monolithic Bronze Staircase', 'Private Hammam', 'Wine Cellar', 'Discreet Carriage Gate'],
            ru: ['Приватный сад 95 м²', 'Двусветная гостиная-ателье', 'Бронзовая лестница', 'Приватный хаммам', 'Винный погреб', 'Закрытый внутренний двор'],
          },
          images: [
            'https://images.unsplash.com/photo-1600585152220-90363fe7e115?auto=format&fit=crop&w=1600&q=85',
            'https://images.unsplash.com/photo-1600566752355-35792bedcfea?auto=format&fit=crop&w=1600&q=85',
            'https://images.unsplash.com/photo-1600210491892-03d54c0aaf87?auto=format&fit=crop&w=1600&q=85',
          ],
        },
        {
          slug: 'palazzo-brera-attico-milan',
          city: 'Milan',
          type: 'Penthouse',
          price: 8900000,
          area: 390,
          bedrooms: 4,
          bathrooms: 4,
          year: 1928,
          featured: false,
          date: '2026-11-11',
          title: { en: 'Palazzo Brera Piano Attico', ru: 'Пентхаус Palazzo Brera' },
          address: { en: 'Via Solferino 18, Brera, Milan', ru: 'Виа Сольферино 18, Брера, Милан' },
          desc: {
            en: 'A study in Milanese materiality: honed Ceppo di Gré stone, walnut boiserie, and brushed bronze portals opening onto a 140 m² planted rooftop conservatory overlooking the Duomo spires.',
            ru: 'Эталон миланского архитектурного минимализма: камень Ceppo di Gré, стеновые панели из ореха и терраса-оранжерея 140 м² с видом на шпили Дуомо.',
          },
          features: {
            en: ['140 m² Planted Terrace', 'Ceppo di Gré Stonework', 'Duomo Skyline Views', 'Private Lift Access', 'Boffi Kitchen', 'Double Box Garage'],
            ru: ['Озеленённая терраса 140 м²', 'Камень Ceppo di Gré', 'Вид на шпили Дуомо', 'Приватный лифт', 'Кухня Boffi', 'Двойной гараж'],
          },
          images: [
            'https://images.unsplash.com/photo-1600210492493-0946911123ea?auto=format&fit=crop&w=1600&q=85',
            'https://images.unsplash.com/photo-1600585154526-990dced4db0d?auto=format&fit=crop&w=1600&q=85',
            'https://images.unsplash.com/photo-1600566753376-12c8ab7fb75b?auto=format&fit=crop&w=1600&q=85',
          ],
        },
        {
          slug: 'villa-giardino-quadrilatero-milan',
          city: 'Milan',
          type: 'Villa',
          price: 15400000,
          area: 610,
          bedrooms: 5,
          bathrooms: 6,
          year: 1904,
          featured: false,
          date: '2026-11-04',
          title: { en: 'Villa Giardino Quadrilatero', ru: 'Вилла Giardino в Quadrilatero' },
          address: { en: 'Via Gesù 12, Quadrilatero della Moda, Milan', ru: 'Виа Джезу 12, Квартал моды, Милан' },
          desc: {
            en: 'An extraordinarily rare freestanding villa off Via Montenapoleone, shielded by mature magnolias and high stone walls, featuring a glass winter garden and subterranean wellness sanctuary.',
            ru: 'Исключительно редкая отдельно стоящая вилла в двух шагах от Виа Монтенаполеоне, скрытая за взрослыми магнолиями, с зимним садом и подземным спа-комплексом.',
          },
          features: {
            en: ['Freestanding City Villa', 'Private Botanical Garden', 'Subterranean Wellness Spa', 'Art Gallery Corridor', 'Private Security Gate', '3-Car Garage'],
            ru: ['Отдельно стоящая городская вилла', 'Приватный ботанический сад', 'Подземный спа-комплекс', 'Галерея для коллекции искусства', 'Закрытый въезд', 'Гараж на 3 авто'],
          },
          images: [
            'https://images.unsplash.com/photo-1600047509358-9dc75507daeb?auto=format&fit=crop&w=1600&q=85',
            'https://images.unsplash.com/photo-1600573472550-8090b5e0745e?auto=format&fit=crop&w=1600&q=85',
            'https://images.unsplash.com/photo-1600566752584-5ec6fe7555f3?auto=format&fit=crop&w=1600&q=85',
          ],
        },
      ];

      const JOURNAL = [
        {
          slug: 'quiet-monumentality-european-stone',
          date: 'November 2026',
          category: { en: 'Architecture', ru: 'Архитектура' },
          title: {
            en: 'Quiet Monumentality: Why Travertine and Limestone Define Modern Permanence',
            ru: 'Тихая монументальность: почему травертин и известняк определяют новую роскошь',
          },
          excerpt: {
            en: 'Across London, Milan, and Monaco, collectors are moving away from glossy spectacle toward tactile stone, natural shadow, and architectural restraint.',
            ru: 'В Лондоне, Милане и Монако коллекционеры уходят от демонстративного глянца в сторону натурального камня, игры света и архитектурной сдержанности.',
          },
          body: {
            en: [
              'For decades, trophy residential interiors were measured by visual loudness: high-gloss lacquers, dramatic chandeliers, and overt ornament. Today, the most sought-after residences in Europe whisper rather than announce.',
              'Honed Roman travertine, Milanese Ceppo di Gré, and brushed bronze age with dignity. Rather than fighting natural daylight, matte mineral surfaces absorb glare and create calm gallery-like proportions.',
              'In our advisory practice, residences built with authentic structural materiality consistently outperform trend-driven renovations in long-term capital preservation.',
            ],
            ru: [
              'Десятилетиями статус жилых интерьеров измерялся визуальной громкостью: глянцевыми поверхностями и избыточным декором. Сегодня наиболее востребованные резиденции Европы говорят шёпотом.',
              'Матовый римский травертин, миланский камень Ceppo di Gré и патинированная бронза благородно стареют. Вместо отражения резкого света минеральные фактуры создают спокойную галерейную атмосферу.',
              'В практике NOVA ESTATE объекты с честной архитектурой и натуральными материалами неизменно демонстрируют более высокую сохранность капитала на горизонте 10–15 лет.',
            ],
          },
          image: 'https://images.unsplash.com/photo-1600210492486-724fe5c67fb0?auto=format&fit=crop&w=1400&q=85',
        },
        {
          slug: 'off-market-acquisitions-monaco-paris',
          date: 'October 2026',
          category: { en: 'Market Intelligence', ru: 'Аналитика рынка' },
          title: {
            en: 'The Anatomy of an Off-Market Acquisition in Monaco and Paris',
            ru: 'Анатомия закрытой сделки: как покупают редкие активы в Монако и Париже',
          },
          excerpt: {
            en: 'Why the rarest lateral apartments and coastal triplexes never reach public portals — and how principals prepare to act decisively.',
            ru: 'Почему самые редкие резиденции никогда не появляются на открытых порталах и как подготовиться к быстрой закрытой сделке.',
          },
          body: {
            en: [
              'In supply-constrained enclaves such as Monaco’s Carré d’Or or Paris’s 7th arrondissement, public listings represent only a fraction of truly exceptional inventory.',
              'Owners of historic hôtels particuliers prioritize privacy above speed. Successful buyers work with a single trusted advisory desk, establish clear acquisition mandates, and maintain pre-vetted legal structures ready for discreet inspection.',
            ],
            ru: [
              'В локациях с жёстким дефицитом предложения — таких как Карре д’Ор в Монако или 7-й округ Парижа — открытые площадки отражают лишь малую часть действительно знаковых объектов.',
              'Собственники исторических особняков ставят приватность выше скорости продажи. Успешные покупатели действуют через один доверенный офис, заранее согласуя юридическую структуру и критерии мандата.',
            ],
          },
          image: 'https://images.unsplash.com/photo-1600607687644-c7171b42498f?auto=format&fit=crop&w=1400&q=85',
        },
        {
          slug: 'dubai-waterfront-new-architectural-era',
          date: 'September 2026',
          category: { en: 'Destinations', ru: 'Направления' },
          title: {
            en: 'Dubai’s New Architectural Era: From Skyline Height to Bespoke Waterfront Craft',
            ru: 'Новая архитектурная эра Дубая: от высоты небоскрёбов к камерным виллам у воды',
          },
          excerpt: {
            en: 'International architects are reshaping Palm Jumeirah and Jumeirah Bay with low-slung cantilevered villas inspired by Mediterranean minimalism.',
            ru: 'Мировые архитектурные бюро меняют облик Palm Jumeirah и Jumeirah Bay, создавая камерные виллы в духе средиземноморского минимализма.',
          },
          body: {
            en: [
              'Dubai’s ultra-prime residential market has matured rapidly. Discerning European and global buyers now seek custom-commissioned waterfront homes defined by deep shaded overhangs, travertine facades, and private marinas.',
              'With favorable fiscal frameworks and year-round connectivity between Europe and Asia, Dubai has secured its place alongside London and Monaco as a permanent base for international principals.',
            ],
            ru: [
              'Рынок ультрапремиальной недвижимости Дубая стремительно повзрослел. Европейские и международные покупатели всё чаще выбирают авторские виллы у воды с глубокими террасами, фасадами из травертина и собственными причалами.',
              'Благодаря прозрачной фискальной среде и удобному сообщению между Европой и Азией, Дубай закрепился в одном ряду с Лондоном и Монако как постоянная резиденция для международных семей.',
            ],
          },
          image: 'https://images.unsplash.com/photo-1613977257363-707ba9348227?auto=format&fit=crop&w=1400&q=85',
        },
      ];

      /* =========================================================
         3. STATE & HELPERS
         ========================================================= */
      const state = {
        lang: localStorage.getItem('nova_lang') || 'en',
        filters: { q: '', city: '', type: '', minPrice: '', maxPrice: '', sort: 'newest' },
        galleryIndex: 0,
      };

      const t = () => I18N[state.lang];
      const fmtPrice = (n) =>
        new Intl.NumberFormat(state.lang === 'ru' ? 'ru-RU' : 'en-US', {
          style: 'currency',
          currency: 'EUR',
          maximumFractionDigits: 0,
        }).format(n);

      const getRoute = () => {
        const hash = window.location.hash.replace(/^#/, '') || '/';
        return hash.startsWith('/') ? hash : '/' + hash;
      };

      const navigate = (path) => {
        const target = path.startsWith('/') ? path : '/' + path;
        if (getRoute() !== target) {
          history.pushState({ path: target }, '', '#' + target);
        }
        closeMobileMenu();
        window.scrollTo({ top: 0, behavior: 'instant' });
        render();
      };

      /* =========================================================
         4. SHARED UI COMPONENTS
         ========================================================= */
      function renderPropertyCard(p) {
        const tr = t();
        return `
          <article class="prop-card reveal">
            <a href="#/property/${p.slug}" data-link="/property/${p.slug}" class="prop-media">
              <img src="${p.images[0]}" alt="${p.title[state.lang]}" loading="lazy" />
              <span class="prop-badge">${p.city}</span>
            </a>
            <div class="prop-body">
              <div>
                <div class="prop-meta-top">
                  <span>${p.type}</span>
                  <span>${p.year}</span>
                </div>
                <a href="#/property/${p.slug}" data-link="/property/${p.slug}">
                  <h3 class="prop-title">${p.title[state.lang]}</h3>
                </a>
                <p class="prop-addr">${p.address[state.lang]}</p>
              </div>
              <div class="prop-foot">
                <div>
                  <div class="prop-price">${fmtPrice(p.price)}</div>
                  <div class="prop-specs">${p.area} m² · ${p.bedrooms} ${tr.catalog.bed} · ${p.bathrooms} ${tr.catalog.bath}</div>
                </div>
                <a href="#/property/${p.slug}" data-link="/property/${p.slug}" class="text-link">${tr.catalog.viewResidence}</a>
              </div>
            </div>
          </article>
        `;
      }

      function renderInquiryForm(prefillSubject = '') {
        const c = t().contact;
        return `
          <div class="form-card">
            <p class="eyebrow">${c.eyebrow}</p>
            <h3 class="serif" style="font-size:30px; margin-top:6px;">${prefillSubject ? t().detail.inquireTitle : c.formTitle}</h3>
            <p style="font-size:13px; color:var(--taupe); margin-top:6px;">${prefillSubject ? t().detail.inquireSub : c.sub}</p>
            <form class="form-stack" id="inquiry-form" novalidate>
              <div class="field">
                <label>${c.name}</label>
                <input class="input" name="name" type="text" required />
                <div class="field-error" data-err="name">${c.errName}</div>
              </div>
              <div class="form-row">
                <div class="field">
                  <label>${c.email}</label>
                  <input class="input" name="email" type="email" required />
                  <div class="field-error" data-err="email">${c.errEmail}</div>
                </div>
                <div class="field">
                  <label>${c.phone}</label>
                  <input class="input" name="phone" type="tel" required />
                  <div class="field-error" data-err="phone">${c.errPhone}</div>
                </div>
              </div>
              <div class="field">
                <label>${c.destination}</label>
                <select class="input" name="destination">
                  <option value="Monaco">Monaco</option>
                  <option value="London">London</option>
                  <option value="Dubai">Dubai</option>
                  <option value="Paris">Paris</option>
                  <option value="Milan">Milan</option>
                </select>
              </div>
              <div class="field">
                <label>${c.message}</label>
                <textarea class="input" name="message" rows="3" required>${prefillSubject ? (state.lang === 'ru' ? 'Интересует презентация объекта: ' : 'Requesting private dossier for: ') + prefillSubject : ''}</textarea>
                <div class="field-error" data-err="message">${c.errMsg}</div>
              </div>
              <div class="form-notice" id="form-notice">${c.demoSuccess}</div>
              <button type="submit" class="btn btn-primary" style="width:100%;">${c.submit}</button>
            </form>
          </div>
        `;
      }

      /* =========================================================
         5. PAGE VIEWS
         ========================================================= */
      function viewHome() {
        const tr = t();
        const featured = PROPERTIES.filter((p) => p.featured).slice(0, 3);
        return `
          <div class="page-enter">
            <section class="hero">
              <img class="hero-bg" src="https://images.unsplash.com/photo-1600585154340-be6161a56a0c?auto=format&fit=crop&w=2200&q=85" alt="NOVA ESTATE Architecture" />
              <div class="hero-scrim"></div>
              <div class="container hero-content">
                <div>
                  <p class="eyebrow eyebrow-sand">${tr.hero.eyebrow}</p>
                  <h1 class="hero-title">${tr.hero.title}</h1>
                </div>
                <div>
                  <p class="hero-sub">${tr.hero.sub}</p>
                  <div class="hero-cta">
                    <a href="#/properties" data-link="/properties" class="btn btn-ivory">${tr.hero.ctaPrimary}</a>
                    <a href="#/contact" data-link="/contact" class="btn btn-outline-light">${tr.hero.ctaSecondary}</a>
                  </div>
                </div>
              </div>
            </section>

            <section class="section">
              <div class="container">
                <div class="section-head reveal">
                  <div>
                    <p class="eyebrow">${tr.home.curatedEyebrow}</p>
                    <h2 class="section-title">${tr.home.curatedTitle}</h2>
                  </div>
                  <a href="#/properties" data-link="/properties" class="text-link">${tr.home.viewAll}</a>
                </div>
                <div class="grid-3">${featured.map(renderPropertyCard).join('')}</div>
              </div>
            </section>

            <section class="section section-dark">
              <div class="container">
                <div class="section-head reveal">
                  <div>
                    <p class="eyebrow eyebrow-sand">${tr.home.destEyebrow}</p>
                    <h2 class="section-title">${tr.home.destTitle}</h2>
                  </div>
                  <p style="max-width:380px; font-size:14px; color:rgba(243,240,233,0.72);">${tr.home.destSub}</p>
                </div>
                <div class="grid-5">
                  ${DESTINATIONS.map((d) => {
                    const count = PROPERTIES.filter((p) => p.city === d.id).length;
                    return `
                      <a href="#/destination/${d.id}" data-link="/destination/${d.id}" class="dest-card reveal">
                        <img src="${d.image}" alt="${d.name[state.lang]}" loading="lazy" />
                        <div class="dest-info">
                          <div class="dest-name">${d.name[state.lang]}</div>
                          <div class="dest-count">${count} ${tr.destinations.residencesCount}</div>
                        </div>
                      </a>
                    `;
                  }).join('')}
                </div>
              </div>
            </section>

            <section class="section section-beige">
              <div class="container grid-2" style="align-items:center;">
                <div class="reveal">
                  <p class="eyebrow">${tr.home.philEyebrow}</p>
                  <h2 class="section-title" style="margin-bottom:24px;">${tr.home.philTitle}</h2>
                  <p style="font-size:16px; color:var(--charcoal-soft); max-width:520px; margin-bottom:32px;">${tr.home.philText}</p>
                  <a href="#/about" data-link="/about" class="btn btn-primary">${tr.home.philCta}</a>
                </div>
                <div class="reveal" style="aspect-ratio:4/3; overflow:hidden;">
                  <img src="https://images.unsplash.com/photo-1600607687939-ce8a6c25118c?auto=format&fit=crop&w=1400&q=85" alt="NOVA ESTATE Philosophy" style="width:100%;height:100%;object-fit:cover;" />
                </div>
              </div>
            </section>

            <section class="section">
              <div class="container">
                <div class="section-head reveal">
                  <div>
                    <p class="eyebrow">${tr.home.journalEyebrow}</p>
                    <h2 class="section-title">${tr.home.journalTitle}</h2>
                  </div>
                  <a href="#/journal" data-link="/journal" class="text-link">${tr.home.readAll}</a>
                </div>
                <div class="grid-3">
                  ${JOURNAL.map((a) => `
                    <article class="journal-card reveal">
                      <a href="#/journal/${a.slug}" data-link="/journal/${a.slug}" class="journal-img">
                        <img src="${a.image}" alt="${a.title[state.lang]}" loading="lazy" />
                      </a>
                      <p class="eyebrow">${a.category[state.lang]} · ${a.date}</p>
                      <a href="#/journal/${a.slug}" data-link="/journal/${a.slug}">
                        <h3 class="serif" style="font-size:26px; line-height:1.2;">${a.title[state.lang]}</h3>
                      </a>
                      <p style="font-size:14px; color:var(--taupe);">${a.excerpt[state.lang]}</p>
                    </article>
                  `).join('')}
                </div>
              </div>
            </section>
          </div>
        `;
      }

      function getFilteredProperties() {
        const f = state.filters;
        let list = PROPERTIES.filter((p) => {
          if (f.q) {
            const q = f.q.toLowerCase();
            const hay = `${p.title.en} ${p.title.ru} ${p.city} ${p.address.en} ${p.address.ru}`.toLowerCase();
            if (!hay.includes(q)) return false;
          }
          if (f.city && p.city !== f.city) return false;
          if (f.type && p.type !== f.type) return false;
          if (f.minPrice && p.price < Number(f.minPrice)) return false;
          if (f.maxPrice && p.price > Number(f.maxPrice)) return false;
          return true;
        });

        if (f.sort === 'price_asc') list.sort((a, b) => a.price - b.price);
        else if (f.sort === 'price_desc') list.sort((a, b) => b.price - a.price);
        else list.sort((a, b) => new Date(b.date) - new Date(a.date));
        return list;
      }

      function viewProperties() {
        const tr = t().catalog;
        const f = state.filters;
        const list = getFilteredProperties();
        return `
          <div class="page-enter section-sm">
            <div class="container">
              <div class="section-head">
                <div>
                  <p class="eyebrow">${tr.eyebrow}</p>
                  <h1 class="section-title">${tr.title}</h1>
                </div>
              </div>

              <div class="filters-box">
                <div class="filters-grid">
                  <div class="field">
                    <label>${tr.searchLabel}</label>
                    <input class="input" id="f-q" type="text" value="${f.q}" placeholder="${tr.searchPlaceholder}" />
                  </div>
                  <div class="field">
                    <label>${tr.cityLabel}</label>
                    <select class="input" id="f-city">
                      <option value="">${tr.allCities}</option>
                      ${DESTINATIONS.map((d) => `<option value="${d.id}" ${f.city === d.id ? 'selected' : ''}>${d.name[state.lang]}</option>`).join('')}
                    </select>
                  </div>
                  <div class="field">
                    <label>${tr.typeLabel}</label>
                    <select class="input" id="f-type">
                      <option value="">${tr.allTypes}</option>
                      ${['Penthouse', 'Villa', 'Townhouse', 'Residence'].map((tp) => `<option value="${tp}" ${f.type === tp ? 'selected' : ''}>${tp}</option>`).join('')}
                    </select>
                  </div>
                  <div class="field">
                    <label>${tr.minPrice}</label>
                    <input class="input" id="f-min" type="number" value="${f.minPrice}" placeholder="5000000" />
                  </div>
                  <div class="field">
                    <label>${tr.maxPrice}</label>
                    <input class="input" id="f-max" type="number" value="${f.maxPrice}" placeholder="40000000" />
                  </div>
                  <div class="field">
                    <label>${tr.sortLabel}</label>
                    <select class="input" id="f-sort">
                      <option value="newest" ${f.sort === 'newest' ? 'selected' : ''}>${tr.sortNewest}</option>
                      <option value="price_asc" ${f.sort === 'price_asc' ? 'selected' : ''}>${tr.sortPriceAsc}</option>
                      <option value="price_desc" ${f.sort === 'price_desc' ? 'selected' : ''}>${tr.sortPriceDesc}</option>
                    </select>
                  </div>
                </div>
                <div class="filters-bar-foot">
                  <p class="eyebrow">${list.length} ${tr.found}</p>
                  <button type="button" class="btn btn-outline" id="f-reset" style="padding:10px 20px;">${tr.reset}</button>
                </div>
              </div>

              ${
                list.length === 0
                  ? `<div class="form-card" style="text-align:center; padding:64px 24px;">
                      <h2 class="serif" style="font-size:34px;">${tr.emptyTitle}</h2>
                      <p style="color:var(--taupe); margin:12px 0 28px;">${tr.emptySub}</p>
                      <button type="button" class="btn btn-primary" id="f-reset-empty">${tr.reset}</button>
                    </div>`
                  : `<div class="grid-3">${list.map(renderPropertyCard).join('')}</div>`
              }
            </div>
          </div>
        `;
      }

      function viewPropertyDetail(slug) {
        const p = PROPERTIES.find((x) => x.slug === slug);
        if (!p) return viewProperties();
        state.galleryIndex = 0;
        const d = t().detail;

        return `
          <div class="page-enter section-sm">
            <div class="container">
              <a href="#/properties" data-link="/properties" class="text-link" style="display:inline-block; margin-bottom:28px;">← ${d.back}</a>

              <div class="section-head" style="margin-bottom:32px;">
                <div>
                  <p class="eyebrow">${p.city} · ${p.type}</p>
                  <h1 class="section-title">${p.title[state.lang]}</h1>
                  <p style="color:var(--taupe); margin-top:8px;">${p.address[state.lang]}</p>
                </div>
                <div style="text-align:right;">
                  <div class="serif" style="font-size:40px; line-height:1;">${fmtPrice(p.price)}</div>
                  <p style="font-size:12px; color:var(--taupe); margin-top:8px;">${d.demoNote}</p>
                </div>
              </div>

              <div class="gallery-main">
                <img id="gal-main-img" src="${p.images[0]}" alt="${p.title[state.lang]}" />
                ${p.images.length > 1 ? `
                  <button type="button" class="gallery-nav gallery-prev" id="gal-prev" aria-label="Previous">‹</button>
                  <button type="button" class="gallery-nav gallery-next" id="gal-next" aria-label="Next">›</button>
                ` : ''}
              </div>
              <div class="gallery-thumbs">
                ${p.images.map((src, i) => `
                  <button type="button" class="thumb ${i === 0 ? 'active' : ''}" data-thumb="${i}">
                    <img src="${src}" alt="View ${i + 1}" />
                  </button>
                `).join('')}
              </div>

              <div class="specs-strip">
                <div class="spec-cell"><p class="eyebrow">${d.area}</p><div class="spec-val">${p.area} m²</div></div>
                <div class="spec-cell"><p class="eyebrow">${d.bedrooms}</p><div class="spec-val">${p.bedrooms}</div></div>
                <div class="spec-cell"><p class="eyebrow">${d.bathrooms}</p><div class="spec-val">${p.bathrooms}</div></div>
                <div class="spec-cell"><p class="eyebrow">${d.year}</p><div class="spec-val">${p.year}</div></div>
              </div>

              <div class="detail-layout">
                <div>
                  <h2 class="serif" style="font-size:34px; margin-bottom:16px;">${d.overview}</h2>
                  <p style="font-size:16px; color:var(--charcoal-soft); line-height:1.8; margin-bottom:44px;">${p.desc[state.lang]}</p>
                  <h3 class="serif" style="font-size:28px;">${d.specs}</h3>
                  <ul class="features-list">
                    ${p.features[state.lang].map((feat) => `<li>${feat}</li>`).join('')}
                  </ul>
                </div>
                <div>${renderInquiryForm(p.title[state.lang])}</div>
              </div>
            </div>
          </div>
        `;
      }

      function viewDestinations() {
        const tr = t().destinations;
        return `
          <div class="page-enter section-sm">
            <div class="container">
              <div class="section-head">
                <div>
                  <p class="eyebrow">${tr.eyebrow}</p>
                  <h1 class="section-title">${tr.title}</h1>
                </div>
                <p style="max-width:440px; font-size:14px; color:var(--taupe);">${tr.sub}</p>
              </div>
              <div class="grid-3">
                ${DESTINATIONS.map((d) => {
                  const count = PROPERTIES.filter((p) => p.city === d.id).length;
                  return `
                    <a href="#/destination/${d.id}" data-link="/destination/${d.id}" class="dest-card reveal" style="aspect-ratio:4/5;">
                      <img src="${d.image}" alt="${d.name[state.lang]}" loading="lazy" />
                      <div class="dest-info">
                        <p class="eyebrow eyebrow-sand">${d.country[state.lang]}</p>
                        <div class="dest-name" style="margin-top:6px;">${d.name[state.lang]}</div>
                        <div class="dest-count">${count} ${tr.residencesCount} · ${d.avgPrice}</div>
                      </div>
                    </a>
                  `;
                }).join('')}
              </div>
            </div>
          </div>
        `;
      }

      function viewDestinationDetail(cityId) {
        const dest = DESTINATIONS.find((d) => d.id.toLowerCase() === cityId.toLowerCase());
        if (!dest) return viewDestinations();
        const tr = t().destinations;
        const list = PROPERTIES.filter((p) => p.city === dest.id);

        return `
          <div class="page-enter">
            <section class="hero" style="min-height:58vh;">
              <img class="hero-bg" src="${dest.image}" alt="${dest.name[state.lang]}" />
              <div class="hero-scrim"></div>
              <div class="container hero-content" style="padding:64px 0;">
                <div>
                  <a href="#/destinations" data-link="/destinations" class="text-link" style="color:var(--sand); margin-bottom:20px; display:inline-block;">← ${tr.backAll}</a>
                  <p class="eyebrow eyebrow-sand">${dest.country[state.lang]} · ${dest.avgPrice}</p>
                  <h1 class="hero-title">${dest.name[state.lang]}</h1>
                </div>
                <p class="hero-sub" style="margin-bottom:0;">${dest.intro[state.lang]}</p>
              </div>
            </section>

            <section class="section">
              <div class="container">
                <div class="section-head">
                  <div>
                    <p class="eyebrow">${dest.name[state.lang]}</p>
                    <h2 class="section-title">${tr.marketTitle}</h2>
                  </div>
                </div>
                <div class="grid-2">${list.map(renderPropertyCard).join('')}</div>
              </div>
            </section>
          </div>
        `;
      }

      function viewAbout() {
        const a = t().about;
        return `
          <div class="page-enter section-sm">
            <div class="container">
              <div class="section-head">
                <div>
                  <p class="eyebrow">${a.eyebrow}</p>
                  <h1 class="section-title">${a.title}</h1>
                </div>
                <p style="max-width:480px; font-size:15px; color:var(--taupe);">${a.lead}</p>
              </div>

              <div class="reveal" style="aspect-ratio:21/9; overflow:hidden; margin-bottom:64px; background:var(--beige);">
                <img src="https://images.unsplash.com/photo-1600607687939-ce8a6c25118c?auto=format&fit=crop&w=2000&q=85" alt="NOVA ESTATE Maison" style="width:100%;height:100%;object-fit:cover;" />
              </div>

              <div class="grid-3" style="margin-bottom:84px;">
                ${[
                  [a.p1Title, a.p1Text],
                  [a.p2Title, a.p2Text],
                  [a.p3Title, a.p3Text],
                ].map(([title, text]) => `
                  <div class="reveal" style="border-top:1px solid var(--border); padding-top:24px;">
                    <h2 class="serif" style="font-size:28px; margin-bottom:12px;">${title}</h2>
                    <p style="font-size:14px; color:var(--taupe); line-height:1.75;">${text}</p>
                  </div>
                `).join('')}
              </div>

              <div class="section-dark reveal" style="padding:64px 48px; display:flex; justify-content:space-between; align-items:center; flex-wrap:wrap; gap:24px;">
                <div>
                  <p class="eyebrow eyebrow-sand">${a.eyebrow}</p>
                  <h2 class="serif" style="font-size:38px; margin-top:8px;">${a.ctaTitle}</h2>
                </div>
                <a href="#/contact" data-link="/contact" class="btn btn-ivory">${a.ctaBtn}</a>
              </div>
            </div>
          </div>
        `;
      }

      function viewServices() {
        const s = t().services;
        return `
          <div class="page-enter section-sm">
            <div class="container">
              <div class="section-head">
                <div>
                  <p class="eyebrow">${s.eyebrow}</p>
                  <h1 class="section-title">${s.title}</h1>
                </div>
                <p style="max-width:440px; font-size:15px; color:var(--taupe);">${s.lead}</p>
              </div>

              <div class="grid-2" style="margin-bottom:64px;">
                ${s.items.map((item) => `
                  <div class="form-card reveal" style="padding:40px;">
                    <p class="eyebrow" style="color:var(--sand);">${item.num}</p>
                    <h2 class="serif" style="font-size:32px; margin:12px 0 16px;">${item.title}</h2>
                    <p style="font-size:15px; color:var(--taupe); line-height:1.75;">${item.text}</p>
                  </div>
                `).join('')}
              </div>

              <div style="text-align:center;">
                <a href="#/contact" data-link="/contact" class="btn btn-primary">${s.cta}</a>
              </div>
            </div>
          </div>
        `;
      }

      function viewJournal() {
        const j = t().journal;
        return `
          <div class="page-enter section-sm">
            <div class="container">
              <div class="section-head">
                <div>
                  <p class="eyebrow">${j.eyebrow}</p>
                  <h1 class="section-title">${j.title}</h1>
                </div>
                <p style="max-width:440px; font-size:15px; color:var(--taupe);">${j.sub}</p>
              </div>

              <div class="grid-3">
                ${JOURNAL.map((a) => `
                  <article class="journal-card reveal">
                    <a href="#/journal/${a.slug}" data-link="/journal/${a.slug}" class="journal-img">
                      <img src="${a.image}" alt="${a.title[state.lang]}" loading="lazy" />
                    </a>
                    <p class="eyebrow">${a.category[state.lang]} · ${a.date}</p>
                    <a href="#/journal/${a.slug}" data-link="/journal/${a.slug}">
                      <h2 class="serif" style="font-size:28px; line-height:1.2;">${a.title[state.lang]}</h2>
                    </a>
                    <p style="font-size:14px; color:var(--taupe);">${a.excerpt[state.lang]}</p>
                    <a href="#/journal/${a.slug}" data-link="/journal/${a.slug}" class="text-link" style="align-self:flex-start;">${j.readArticle}</a>
                  </article>
                `).join('')}
              </div>
            </div>
          </div>
        `;
      }

      function viewJournalArticle(slug) {
        const a = JOURNAL.find((x) => x.slug === slug);
        if (!a) return viewJournal();
        return `
          <div class="page-enter section-sm">
            <div class="container" style="max-width:920px;">
              <a href="#/journal" data-link="/journal" class="text-link" style="display:inline-block; margin-bottom:28px;">← ${t().journal.backJournal}</a>
              <p class="eyebrow">${a.category[state.lang]} · ${a.date}</p>
              <h1 class="section-title" style="margin-bottom:36px;">${a.title[state.lang]}</h1>
              <div style="aspect-ratio:16/9; overflow:hidden; margin-bottom:44px; background:var(--beige);">
                <img src="${a.image}" alt="${a.title[state.lang]}" style="width:100%;height:100%;object-fit:cover;" />
              </div>
              <div style="display:flex; flex-direction:column; gap:24px; font-size:17px; line-height:1.85; color:var(--charcoal-soft);">
                ${a.body[state.lang].map((p) => `<p>${p}</p>`).join('')}
              </div>
            </div>
          </div>
        `;
      }

      function viewContact() {
        const c = t().contact;
        const offices = [
          { city: 'Monaco', addr: 'Avenue de Monte-Carlo, 98000', phone: '+377 97 70 42 19' },
          { city: 'London', addr: '14 Mount Street, Mayfair, W1K', phone: '+44 20 7946 0821' },
          { city: 'Dubai', addr: 'DIFC Gate Village 4, Dubai', phone: '+971 4 382 9100' },
          { city: 'Paris', addr: '22 Place Vendôme, 75001 Paris', phone: '+33 1 42 68 55 10' },
          { city: 'Milan', addr: 'Via Gesù 8, 20121 Milano', phone: '+39 02 7600 4180' },
        ];
        return `
          <div class="page-enter section-sm">
            <div class="container">
              <div class="section-head">
                <div>
                  <p class="eyebrow">${c.eyebrow}</p>
                  <h1 class="section-title">${c.title}</h1>
                </div>
                <p style="max-width:440px; font-size:15px; color:var(--taupe);">${c.sub}</p>
              </div>
              <div class="grid-2" style="align-items:start;">
                <div style="display:grid; grid-template-columns:1fr 1fr; gap:20px;">
                  ${offices.map((o) => `
                    <div class="form-card" style="padding:26px;">
                      <p class="eyebrow" style="color:var(--sand);">${o.city}</p>
                      <p style="font-size:14px; margin-top:8px;">${o.addr}</p>
                      <p style="font-size:13px; color:var(--taupe); margin-top:4px;">${o.phone}</p>
                    </div>
                  `).join('')}
                </div>
                <div>${renderInquiryForm()}</div>
              </div>
            </div>
          </div>
        `;
      }

      /* =========================================================
         6. SHELL RENDER (NAV, FOOTER, OBSERVERS, EVENTS)
         ========================================================= */
      function renderChrome(route) {
        const tr = t();
        document.getElementById('demo-strip').textContent = tr.demoBanner;

        const links = [
          { path: '/', label: tr.nav.home },
          { path: '/properties', label: tr.nav.properties },
          { path: '/destinations', label: tr.nav.destinations },
          { path: '/about', label: tr.nav.about },
          { path: '/services', label: tr.nav.services },
          { path: '/journal', label: tr.nav.journal },
          { path: '/contact', label: tr.nav.contact },
        ];

        const isActive = (p) => (p === '/' ? route === '/' : route.startsWith(p));

        document.getElementById('desktop-nav').innerHTML = links
          .map((l) => `<a href="#${l.path}" data-link="${l.path}" class="nav-link ${isActive(l.path) ? 'active' : ''}">${l.label}</a>`)
          .join('');

        document.getElementById('mobile-nav').innerHTML = links
          .map((l) => `<a href="#${l.path}" data-link="${l.path}">${l.label}</a>`)
          .join('');

        document.querySelectorAll('.lang-btn').forEach((btn) => {
          btn.classList.toggle('active', btn.dataset.lang === state.lang);
        });

        document.getElementById('site-footer').innerHTML = `
          <div class="container">
            <div class="footer-grid">
              <div>
                <div class="brand-name" style="color:var(--ivory); font-size:28px;">NOVA ESTATE</div>
                <p class="eyebrow eyebrow-sand" style="margin-top:6px;">${tr.slogan}</p>
                <p style="font-size:14px; color:rgba(243,240,233,0.68); max-width:340px; margin-top:18px;">${tr.footer.desc}</p>
              </div>
              <div>
                <p class="eyebrow eyebrow-sand">${tr.footer.navTitle}</p>
                <ul class="footer-links">
                  ${links.map((l) => `<li><a href="#${l.path}" data-link="${l.path}">${l.label}</a></li>`).join('')}
                </ul>
              </div>
              <div>
                <p class="eyebrow eyebrow-sand">${tr.footer.destTitle}</p>
                <ul class="footer-links">
                  ${DESTINATIONS.map((d) => `<li><a href="#/destination/${d.id}" data-link="/destination/${d.id}">${d.name[state.lang]}</a></li>`).join('')}
                </ul>
              </div>
              <div>
                <p class="eyebrow eyebrow-sand">${tr.footer.officeTitle}</p>
                <p style="font-size:13px; color:rgba(243,240,233,0.7); margin-top:18px; line-height:1.9;">
                  Monaco · Avenue de Monte-Carlo<br/>
                  London · 14 Mount Street, Mayfair<br/>
                  Dubai · DIFC Gate Village 4<br/>
                  Paris · 22 Place Vendôme<br/>
                  Milan · Via Gesù 8
                </p>
              </div>
            </div>
            <div class="footer-bottom">
              <span>${tr.footer.rights}</span>
              <span>NOVA ESTATE · ${tr.slogan}</span>
            </div>
          </div>
        `;
      }

      function setupRevealObserver() {
        const els = document.querySelectorAll('.reveal');
        const io = new IntersectionObserver(
          (entries) => {
            entries.forEach((e) => {
              if (e.isIntersecting) {
                e.target.classList.add('visible');
                io.unobserve(e.target);
              }
            });
          },
          { threshold: 0.08, rootMargin: '0px 0px -30px 0px' }
        );
        els.forEach((el) => io.observe(el));
      }

      function bindPageInteractions(route) {
        // Catalog Filters
        if (route === '/properties') {
          const bind = (id, key) => {
            const el = document.getElementById(id);
            if (!el) return;
            el.addEventListener(el.tagName === 'SELECT' ? 'change' : 'input', (e) => {
              state.filters[key] = e.target.value;
              render();
              const refocus = document.getElementById(id);
              if (refocus && refocus.tagName === 'INPUT') {
                refocus.focus();
                refocus.setSelectionRange(refocus.value.length, refocus.value.length);
              }
            });
          };
          bind('f-q', 'q');
          bind('f-city', 'city');
          bind('f-type', 'type');
          bind('f-min', 'minPrice');
          bind('f-max', 'maxPrice');
          bind('f-sort', 'sort');

          const resetFn = () => {
            state.filters = { q: '', city: '', type: '', minPrice: '', maxPrice: '', sort: 'newest' };
            render();
          };
          document.getElementById('f-reset')?.addEventListener('click', resetFn);
          document.getElementById('f-reset-empty')?.addEventListener('click', resetFn);
        }

        // Property Gallery
        if (route.startsWith('/property/')) {
          const slug = route.replace('/property/', '');
          const p = PROPERTIES.find((x) => x.slug === slug);
          if (p && p.images.length > 1) {
            const setImg = (idx) => {
              state.galleryIndex = (idx + p.images.length) % p.images.length;
              const img = document.getElementById('gal-main-img');
              if (img) img.src = p.images[state.galleryIndex];
              document.querySelectorAll('[data-thumb]').forEach((b) => {
                b.classList.toggle('active', Number(b.dataset.thumb) === state.galleryIndex);
              });
            };
            document.getElementById('gal-prev')?.addEventListener('click', () => setImg(state.galleryIndex - 1));
            document.getElementById('gal-next')?.addEventListener('click', () => setImg(state.galleryIndex + 1));
            document.querySelectorAll('[data-thumb]').forEach((b) => {
              b.addEventListener('click', () => setImg(Number(b.dataset.thumb)));
            });
          }
        }

        // Inquiry Form Validation
        const form = document.getElementById('inquiry-form');
        if (form) {
          form.addEventListener('submit', (e) => {
            e.preventDefault();
            const fd = new FormData(form);
            const name = String(fd.get('name') || '').trim();
            const email = String(fd.get('email') || '').trim();
            const phone = String(fd.get('phone') || '').trim();
            const msg = String(fd.get('message') || '').trim();

            const checks = {
              name: name.length >= 2,
              email: /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email),
              phone: phone.length >= 7,
              message: msg.length >= 10,
            };

            let valid = true;
            Object.entries(checks).forEach(([k, ok]) => {
              const errEl = form.querySelector(`[data-err="${k}"]`);
              if (errEl) errEl.classList.toggle('show', !ok);
              if (!ok) valid = false;
            });

            const notice = document.getElementById('form-notice');
            if (valid && notice) {
              notice.classList.add('show');
              form.reset();
            } else if (notice) {
              notice.classList.remove('show');
            }
          });
        }
      }

      function render() {
        const route = getRoute();
        renderChrome(route);

        let html = '';
        if (route === '/' || route === '') html = viewHome();
        else if (route === '/properties') html = viewProperties();
        else if (route.startsWith('/property/')) html = viewPropertyDetail(route.replace('/property/', ''));
        else if (route === '/destinations') html = viewDestinations();
        else if (route.startsWith('/destination/')) html = viewDestinationDetail(route.replace('/destination/', ''));
        else if (route === '/about') html = viewAbout();
        else if (route === '/services') html = viewServices();
        else if (route === '/journal') html = viewJournal();
        else if (route.startsWith('/journal/')) html = viewJournalArticle(route.replace('/journal/', ''));
        else if (route === '/contact') html = viewContact();
        else html = viewHome();

        const app = document.getElementById('app');
        app.innerHTML = html;
        setupRevealObserver();
        bindPageInteractions(route);
      }

      /* =========================================================
         7. GLOBAL LISTENERS (SPA ROUTING, BACK/FORWARD, MENU, LANG)
         ========================================================= */
      const burger = document.getElementById('burger-btn');
      const drawer = document.getElementById('mobile-drawer');
      const closeMobileMenu = () => {
        burger.classList.remove('open');
        drawer.classList.remove('open');
        document.body.style.overflow = '';
      };

      burger.addEventListener('click', () => {
        const open = !drawer.classList.contains('open');
        burger.classList.toggle('open', open);
        drawer.classList.toggle('open', open);
        document.body.style.overflow = open ? 'hidden' : '';
      });

      document.addEventListener('click', (e) => {
        const link = e.target.closest('[data-link]');
        if (link) {
          e.preventDefault();
          navigate(link.dataset.link);
        }
        const langBtn = e.target.closest('[data-lang]');
        if (langBtn) {
          state.lang = langBtn.dataset.lang;
          localStorage.setItem('nova_lang', state.lang);
          document.documentElement.lang = state.lang;
          render();
        }
      });

      window.addEventListener('popstate', () => {
        closeMobileMenu();
        render();
      });

      window.addEventListener('hashchange', () => {
        closeMobileMenu();
        render();
      });

      // Initial boot
      document.documentElement.lang = state.lang;
      if (!window.location.hash) {
        history.replaceState({ path: '/' }, '', '#/');
      }
      render();
    })();
  </script>
</body>
</html>
