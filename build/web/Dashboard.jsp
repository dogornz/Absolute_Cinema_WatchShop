<%-- Document : Dashboard Created on : May 12, 2026, 3:48:41 PM Author : dogor --%>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
            <!DOCTYPE html>

            <html class="dark" lang="vi">

            <head>
                <meta charset="utf-8" />
                <meta content="width=device-width, initial-scale=1.0" name="viewport" />
                <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
                <link
                    href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&amp;family=Playfair+Display:wght@500;600;700&amp;display=swap"
                    rel="stylesheet" />
                <link
                    href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap"
                    rel="stylesheet" />
                <link
                    href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap"
                    rel="stylesheet" />
                <script id="tailwind-config">
                    tailwind.config = {
                        darkMode: "class",
                        theme: {
                            extend: {
                                "colors": {
                                    "tertiary": "#d0cdcd",
                                    "on-surface": "#e3e2e2",
                                    "secondary-fixed": "#e5e2e1",
                                    "primary-fixed": "#ffe088",
                                    "surface-container-highest": "#343535",
                                    "primary-container": "#d4af37",
                                    "on-tertiary-fixed": "#1c1b1b",
                                    "on-primary-container": "#554300",
                                    "on-secondary-fixed": "#1c1b1b",
                                    "inverse-on-surface": "#2f3031",
                                    "tertiary-container": "#b4b2b2",
                                    "on-error-container": "#ffdad6",
                                    "on-secondary-container": "#bab8b7",
                                    "on-background": "#e3e2e2",
                                    "surface": "#121414",
                                    "surface-dim": "#121414",
                                    "outline-variant": "#4d4635",
                                    "secondary-fixed-dim": "#c9c6c5",
                                    "surface-variant": "#343535",
                                    "primary-fixed-dim": "#e9c349",
                                    "outline": "#99907c",
                                    "error-container": "#93000a",
                                    "surface-container-lowest": "#0d0e0f",
                                    "surface-tint": "#e9c349",
                                    "on-error": "#690005",
                                    "on-primary-fixed-variant": "#574500",
                                    "on-surface-variant": "#d0c5af",
                                    "inverse-surface": "#e3e2e2",
                                    "on-tertiary-fixed-variant": "#474746",
                                    "inverse-primary": "#735c00",
                                    "on-tertiary-container": "#454544",
                                    "tertiary-fixed-dim": "#c8c6c5",
                                    "on-secondary": "#313030",
                                    "on-primary": "#3c2f00",
                                    "primary": "#f2ca50",
                                    "surface-container": "#1f2020",
                                    "surface-container-low": "#1b1c1c",
                                    "background": "#121414",
                                    "secondary": "#c9c6c5",
                                    "on-primary-fixed": "#241a00",
                                    "on-secondary-fixed-variant": "#474646",
                                    "secondary-container": "#4a4949",
                                    "tertiary-fixed": "#e5e2e1",
                                    "error": "#ffb4ab",
                                    "surface-container-high": "#292a2a",
                                    "surface-bright": "#383939",
                                    "on-tertiary": "#313030"
                                },
                                "borderRadius": {
                                    "DEFAULT": "0.125rem",
                                    "lg": "0.25rem",
                                    "xl": "0.5rem",
                                    "full": "0.75rem"
                                },
                                "spacing": {
                                    "container-max": "1200px",
                                    "margin-desktop": "60px",
                                    "unit": "8px",
                                    "margin-mobile": "20px",
                                    "gutter": "24px",
                                    "section-gap": "120px"
                                },
                                "fontFamily": {
                                    "label-caps": ["Montserrat"],
                                    "body-md": ["Montserrat"],
                                    "headline-md": ["Playfair Display"],
                                    "display-lg-mobile": ["Playfair Display"],
                                    "headline-xl": ["Playfair Display"],
                                    "display-lg": ["Playfair Display"],
                                    "body-sm": ["Montserrat"],
                                    "headline-lg": ["Playfair Display"],
                                    "body-lg": ["Montserrat"]
                                },
                                "fontSize": {
                                    "label-caps": ["12px", { "lineHeight": "16px", "letterSpacing": "0.1em", "fontWeight": "600" }],
                                    "body-md": ["16px", { "lineHeight": "24px", "fontWeight": "400" }],
                                    "headline-md": ["24px", { "lineHeight": "32px", "fontWeight": "500" }],
                                    "display-lg-mobile": ["40px", { "lineHeight": "48px", "letterSpacing": "-0.01em", "fontWeight": "700" }],
                                    "headline-xl": ["48px", { "lineHeight": "56px", "fontWeight": "600" }],
                                    "display-lg": ["64px", { "lineHeight": "72px", "letterSpacing": "-0.02em", "fontWeight": "700" }],
                                    "body-sm": ["14px", { "lineHeight": "20px", "fontWeight": "400" }],
                                    "headline-lg": ["32px", { "lineHeight": "40px", "fontWeight": "600" }],
                                    "body-lg": ["18px", { "lineHeight": "28px", "fontWeight": "400" }]
                                }
                            },
                        },
                    }
                </script>
                <style>
                    body {
                        background-color: #121414;
                        color: #e3e2e2;
                        -webkit-font-smoothing: antialiased;
                    }

                    .material-symbols-outlined {
                        font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 24;
                    }

                    .glass-header {
                        background: rgba(18, 20, 20, 0.8);
                        backdrop-filter: blur(12px);
                    }

                    .gold-glow:hover {
                        box-shadow: 0 0 15px rgba(212, 175, 55, 0.3);
                    }
                </style>
                <style>
                    body {
                        min-height: max(884px, 100dvh);
                    }
                </style>
            </head>

            <body class="font-body-md text-body-md">
                <!-- TopAppBar -->
                <header
                    class="bg-surface/80 backdrop-blur-md text-primary docked full-width top-0 z-50 border-b border-outline-variant/30 flex justify-between items-center px-margin-mobile md:px-margin-desktop py-4 w-full fixed">
                    <div class="flex items-center gap-4">
                        <span
                            class="material-symbols-outlined cursor-pointer hover:text-primary-container transition-colors"
                            data-icon="menu">menu</span>
                        <h1 class="font-headline-lg text-headline-lg text-primary tracking-tight">Đồng Hồ Tinh Diệu</h1>
                    </div>
                    <div class="flex items-center gap-6">
                        <nav class="hidden md:flex items-center gap-8">
                            <a class="font-label-caps text-label-caps text-primary" href="#">Trang chủ</a>
                            <a class="font-label-caps text-label-caps text-on-surface-variant hover:text-primary transition-colors"
                                href="#">Bộ sưu tập</a>
                            <a class="font-label-caps text-label-caps text-on-surface-variant hover:text-primary transition-colors"
                                href="#">Thương hiệu</a>
                        </nav>
                        <div class="flex items-center gap-4">
                            <span
                                class="material-symbols-outlined cursor-pointer hover:text-primary-container transition-colors"
                                data-icon="search">search</span>
                            <span
                                class="material-symbols-outlined cursor-pointer hover:text-primary-container transition-colors"
                                data-icon="shopping_bag">shopping_bag</span>

                            <c:choose>
                                <c:when test="${not empty sessionScope.account}">
                                    <div class="relative group hidden md:block">
                                        <div
                                            class="flex items-center gap-2 cursor-pointer hover:text-primary-container transition-colors">
                                            <span class="font-label-caps text-label-caps uppercase text-primary">Xin
                                                chào, ${sessionScope.account.username}</span>
                                            <span class="material-symbols-outlined text-sm">expand_more</span>
                                        </div>
                                        <div
                                            class="absolute right-0 mt-2 w-48 bg-surface-container border border-outline-variant/30 rounded shadow-xl opacity-0 invisible group-hover:opacity-100 group-hover:visible transition-all duration-300">
                                            <a href="#"
                                                class="block px-4 py-3 text-on-surface hover:bg-primary/10 hover:text-primary transition-colors font-body-sm">Hồ
                                                sơ cá nhân</a>
                                            <a href="LogoutServlet"
                                                class="block px-4 py-3 text-on-surface hover:bg-primary/10 hover:text-error transition-colors font-body-sm border-t border-outline-variant/30">Đăng
                                                xuất</a>
                                        </div>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <a href="Login.jsp">
                                        <span
                                            class="material-symbols-outlined cursor-pointer md:block hidden hover:text-primary-container transition-colors"
                                            data-icon="person">person</span>
                                    </a>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                </header>
                <main class="pt-20">
                    <!-- Hero Section -->
                    <section class="relative h-[707px] w-full overflow-hidden flex items-center justify-center">
                        <div class="absolute inset-0 z-0">
                            <img alt="Luxury Watch Collection" class="w-full h-full object-cover brightness-[0.4]"
                                data-alt="A macro close-up of a luxury mechanical watch with gold gears and intricate detailing, set against a dark, moody background with atmospheric dramatic lighting. The watch face is polished, reflecting subtle golden highlights that create a sense of prestige and timeless craftsmanship. The overall aesthetic is minimalist high-contrast with deep blacks and shimmering gold accents."
                                src="https://lh3.googleusercontent.com/aida-public/AB6AXuC_fU0jxA9k-AkulZIT8FDpG_8MxNMYrpVhSuuy1TI1F_8rxdYpdMwmC0VlglJqU7KI1hIvDpLidcC7MacQQ2rBWFIl7yRqtyRIHlS1JpBd9TAymiodx59fDsUHDSxYO7mZosEwjYyu_K_NaJNvWAroHZ0cPpPirRpMQDx1EH4dDzW7FDhRWfc5Ihq3sGtq7RqxBQ_oor2PnXDzFTV-WQCmdEcEr3HYcpkzs9ba_8w3oLF0lI3zKT9zWTnQPDd4nc7Z_mfpw9Vt2uI" />
                        </div>
                        <div class="relative z-10 text-center px-margin-mobile max-w-3xl">
                            <h2
                                class="font-display-lg text-display-lg-mobile md:text-display-lg text-primary mb-6 leading-tight">
                                Bộ sưu tập Đẳng Cấp Thời Gian</h2>
                            <p
                                class="font-body-lg text-body-lg text-on-surface-variant mb-10 max-w-xl mx-auto opacity-80">
                                Khám phá tinh hoa của nghệ thuật chế tác đồng hồ, nơi thời gian được tôn vinh qua từng
                                đường nét tinh xảo.</p>
                            <div class="flex flex-col md:flex-row justify-center gap-4">
                                <button
                                    class="bg-primary-container text-on-primary-container font-label-caps text-label-caps px-10 py-4 uppercase tracking-widest hover:bg-primary-fixed transition-all gold-glow">
                                    Khám phá ngay
                                </button>
                                <button
                                    class="border border-primary-container text-primary-container font-label-caps text-label-caps px-10 py-4 uppercase tracking-widest hover:bg-primary/10 transition-all">
                                    Xem catalogue
                                </button>
                            </div>
                        </div>
                    </section>
                    <!-- Filter Section -->
                    <section class="py-12 bg-surface-container-low">
                        <div class="max-w-container-max mx-auto px-margin-mobile md:px-margin-desktop">
                            <div class="flex flex-wrap justify-center items-center gap-gutter">
                                <span class="font-label-caps text-label-caps text-outline uppercase">Phân loại:</span>
                                <button
                                    class="px-6 py-2 rounded-full border border-primary text-primary font-label-caps text-label-caps">Cao
                                    cấp</button>
                                <button
                                    class="px-6 py-2 rounded-full border border-outline-variant text-on-surface-variant hover:border-primary hover:text-primary transition-all font-label-caps text-label-caps">Trung
                                    cấp</button>
                                <button
                                    class="px-6 py-2 rounded-full border border-outline-variant text-on-surface-variant hover:border-primary hover:text-primary transition-all font-label-caps text-label-caps">Phổ
                                    thông</button>
                            </div>
                        </div>
                    </section>
                    <!-- Product Grid Section -->
                    <section class="py-section-gap px-margin-mobile md:px-margin-desktop max-w-container-max mx-auto">
                        <div class="flex flex-col md:flex-row justify-between items-end mb-16 gap-4">
                            <div>
                                <span
                                    class="text-primary font-label-caps text-label-caps uppercase tracking-widest mb-2 block">Sản
                                    phẩm nổi bật</span>
                                <h3 class="font-headline-xl text-headline-xl text-on-surface">Kiệt Tác Thời Gian</h3>
                            </div>
                            <a class="text-primary font-label-caps text-label-caps border-b border-primary pb-1 hover:opacity-80 transition-opacity"
                                href="#">Xem tất cả sản phẩm</a>
                        </div>
                        <div class="grid grid-cols-1 md:grid-cols-3 gap-y-16 gap-x-gutter">
                            <!-- Watch Card 1 -->
                            <div class="group">
                                <div
                                    class="bg-surface-container border border-outline-variant/30 overflow-hidden relative mb-6 aspect-[4/5]">
                                    <img alt="Luxury Watch Model A"
                                        class="w-full h-full object-cover transition-transform duration-700 group-hover:scale-110"
                                        data-alt="An elegant luxury watch with a black leather strap and gold bezel, displayed in a minimalist gallery setting. High-key side lighting emphasizes the metallic texture of the gold casing and the polished glass. The background is a charcoal gray tonal gradient, maintaining a high-end boutique feel consistent with the dark mode luxury brand identity."
                                        src="https://lh3.googleusercontent.com/aida-public/AB6AXuDx37aZfwqFe5oUJNcJ3Oi3nPt49sWOOvDmhiIy4Jrj1YMq15HuKKhiRJ1ays66s3DEONbYz2WC4sMcxSaK46M9WSdOFY5I6ZPo6U91LOBeAfj8R5lOMhD584pPBzzWef0rhYBJlRMpSwn0Kl76wjqwxczWqVcjt_R_OD2-10BrOWUmiamrtzx_-MKwGZ_BiUqgrd4yIxcm2cIZbkvZSQDHGL7Tg8WhffB21LZh5w6z7XnYS7VA0Lb2qe7-F4BzHMWF3uUrhnaufNA" />
                                    <div
                                        class="absolute inset-0 bg-primary/10 opacity-0 group-hover:opacity-100 transition-opacity flex items-center justify-center">
                                        <span
                                            class="bg-surface-container-highest p-4 rounded-full text-primary material-symbols-outlined"
                                            data-icon="visibility">visibility</span>
                                    </div>
                                </div>
                                <div class="text-center">
                                    <h4 class="font-headline-md text-headline-md text-on-surface mb-2">Chronomaster Gold
                                    </h4>
                                    <p class="text-primary font-label-caps text-label-caps mb-6">45.000.000 ₫</p>
                                    <button
                                        class="w-full border border-outline-variant text-on-surface-variant font-label-caps text-label-caps py-3 hover:border-primary hover:text-primary transition-all uppercase">Xem
                                        chi tiết</button>
                                </div>
                            </div>
                            <!-- Watch Card 2 -->
                            <div class="group">
                                <div
                                    class="bg-surface-container border border-outline-variant/30 overflow-hidden relative mb-6 aspect-[4/5]">
                                    <img alt="Luxury Watch Model B"
                                        class="w-full h-full object-cover transition-transform duration-700 group-hover:scale-110"
                                        data-alt="A sophisticated luxury watch featuring an intricate skeletal dial where the mechanical movements are visible. The watch is accented with yellow gold and set against a dark stone surface. Atmospheric, low-key lighting highlights the golden gears and the refined craftsmanship of the piece, creating a sense of timeless elegance and horological precision."
                                        src="https://lh3.googleusercontent.com/aida-public/AB6AXuCMAINFThqDwAJqG57JkHUIQPjJFeZuR5SUdzVrfSKkJVKXxKrlK097oE_coHrucZzdAidWpS9gPb8n2G56eMPX5Z-i-3PTbOk8JaJ3M2-KDvBVE4u7jfV1_69w9_3qPUTLtn1S8WUyIsTOWsZ7Oa1LOBVYbkgQ7j2fFPyR_GX_6JN9RAYj-J7_X7hEmmByWvGKByCX5Y46dkjoVOOCIY_RM7FCWbdSCeqzcqvNDIhzEtIRMjJ8epxyA6KoytJfvMCtNp4658UnEEs" />
                                    <div
                                        class="absolute inset-0 bg-primary/10 opacity-0 group-hover:opacity-100 transition-opacity flex items-center justify-center">
                                        <span
                                            class="bg-surface-container-highest p-4 rounded-full text-primary material-symbols-outlined"
                                            data-icon="visibility">visibility</span>
                                    </div>
                                </div>
                                <div class="text-center">
                                    <h4 class="font-headline-md text-headline-md text-on-surface mb-2">Heritage Skeleton
                                    </h4>
                                    <p class="text-primary font-label-caps text-label-caps mb-6">120.000.000 ₫</p>
                                    <button
                                        class="w-full border border-outline-variant text-on-surface-variant font-label-caps text-label-caps py-3 hover:border-primary hover:text-primary transition-all uppercase">Xem
                                        chi tiết</button>
                                </div>
                            </div>
                            <!-- Watch Card 3 -->
                            <div class="group">
                                <div
                                    class="bg-surface-container border border-outline-variant/30 overflow-hidden relative mb-6 aspect-[4/5]">
                                    <img alt="Luxury Watch Model C"
                                        class="w-full h-full object-cover transition-transform duration-700 group-hover:scale-110"
                                        data-alt="A minimalist high-end watch with a dark obsidian face and gold hands, captured in a studio setting with high-contrast lighting. The watch sits on a reflective black surface, creating a mirror effect that adds depth. The mood is exclusive and hushed, characteristic of a private luxury boutique, emphasizing the brand's commitment to prestige and artisanal quality."
                                        src="https://lh3.googleusercontent.com/aida-public/AB6AXuA9YrsLSvz4Sf4Yak-uVWPvAIU4NCYIMWHjhE60Ysx_sasDvClQZzOzmDFkDlacKU5_3ZUNL9cfP6J1wifqbLy3fUWbMzOX0TC45G5_nwLxS8QAe5jIpZSwBmWWBprs8GeYYTQ5wHSHQquzC-bdIV46PPZTWwZXw9KxnWNC2Pq_en3J-xRl_1C4Of31g8DiP59nJGSp78YRTYlpwdynD4vLi-ogdGz82s8Aa1XIsM1o5fPHIaWXHe0cVVF7-Aadw__SOIIjuKbcYIk" />
                                    <div
                                        class="absolute inset-0 bg-primary/10 opacity-0 group-hover:opacity-100 transition-opacity flex items-center justify-center">
                                        <span
                                            class="bg-surface-container-highest p-4 rounded-full text-primary material-symbols-outlined"
                                            data-icon="visibility">visibility</span>
                                    </div>
                                </div>
                                <div class="text-center">
                                    <h4 class="font-headline-md text-headline-md text-on-surface mb-2">Midnight Prestige
                                    </h4>
                                    <p class="text-primary font-label-caps text-label-caps mb-6">85.500.000 ₫</p>
                                    <button
                                        class="w-full border border-outline-variant text-on-surface-variant font-label-caps text-label-caps py-3 hover:border-primary hover:text-primary transition-all uppercase">Xem
                                        chi tiết</button>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- Brand Story Section -->
                    <section class="bg-surface-container-lowest py-section-gap">
                        <div
                            class="max-w-container-max mx-auto px-margin-mobile md:px-margin-desktop flex flex-col md:flex-row gap-section-gap items-center">
                            <div class="w-full md:w-1/2">
                                <img alt="Watchmaking Craft" class="w-full aspect-square object-cover"
                                    data-alt="A detailed view of a watchmaker's workshop, featuring vintage tools and intricate watch components spread across a dark wooden table. The lighting is warm and focused, highlighting the golden metallic parts. This image conveys a sense of heritage, craftsmanship, and the meticulous nature of horological art, consistent with a luxury watch brand identity."
                                    src="https://lh3.googleusercontent.com/aida-public/AB6AXuCNqPIPUn357vTVJprAVDyTliwcxZ-sy0xCu2h0tMQoUyfwTqqupvgTVPvn_uHSqk-zkNotYNBlb7uXaHHLMUQtKOPeBti7s_pMXsk9qkCYi2ivfxhG3hLDdP3BLT5nAydley4jAnQ_M6lWZBmX0ktUpUaoeQPkbhjw31HDV1nGVo2pLy69JT34GbEkPvb6lUrI9S1WmM7NcR1vTgTpBj-f93fPXvavweprwpp4fQxy0nXmEtiANjsw-07tzHYZvXIagQn6KAy0qxs" />
                            </div>
                            <div class="w-full md:w-1/2 space-y-6">
                                <span class="text-primary font-label-caps text-label-caps uppercase tracking-widest">Di
                                    sản &amp; Tinh hoa</span>
                                <h2 class="font-headline-xl text-headline-xl text-on-surface leading-tight">Nghệ Thuật
                                    Của Thời Gian Vĩnh Cửu</h2>
                                <p class="text-on-surface-variant opacity-80 leading-relaxed">Đồng Hồ Tinh Diệu không
                                    chỉ cung cấp những cỗ máy thời gian, chúng tôi mang đến những tác phẩm nghệ thuật
                                    đại diện cho đẳng cấp và sự thành đạt. Mỗi sản phẩm đều được tuyển chọn kỹ lưỡng từ
                                    những thương hiệu danh tiếng nhất thế giới.</p>
                                <div class="pt-6">
                                    <button
                                        class="border-b-2 border-primary text-primary font-label-caps text-label-caps pb-2 hover:opacity-80 transition-opacity uppercase tracking-widest">Tìm
                                        hiểu về chúng tôi</button>
                                </div>
                            </div>
                        </div>
                    </section>
                </main>
                <!-- Footer -->
                <footer class="bg-surface-container-lowest w-full py-section-gap border-t border-outline-variant/10">
                    <div
                        class="flex flex-col md:flex-row justify-between items-start px-margin-desktop gap-unit max-w-container-max mx-auto px-margin-mobile">
                        <div class="mb-10 md:mb-0 max-w-sm">
                            <h2 class="font-headline-md text-headline-md text-primary mb-6">Đồng Hồ Tinh Diệu</h2>
                            <p class="text-on-surface-variant font-body-sm text-body-sm mb-6 leading-relaxed">Trải
                                nghiệm dịch vụ mua sắm đồng hồ cao cấp hàng đầu Việt Nam. Nơi khẳng định vị thế và phong
                                cách cá nhân của bạn.</p>
                            <div class="flex gap-4">
                                <span class="material-symbols-outlined text-primary cursor-pointer"
                                    data-icon="facebook">social_leaderboard</span>
                                <span class="material-symbols-outlined text-primary cursor-pointer"
                                    data-icon="photo_camera">photo_camera</span>
                                <span class="material-symbols-outlined text-primary cursor-pointer"
                                    data-icon="video_library">video_library</span>
                            </div>
                        </div>
                        <div class="grid grid-cols-2 md:grid-cols-2 gap-12">
                            <div class="flex flex-col space-y-4">
                                <h4 class="font-label-caps text-label-caps text-on-surface uppercase mb-2">Khám phá</h4>
                                <a class="font-body-sm text-body-sm text-on-tertiary-container hover:text-primary transition-colors"
                                    href="#">Về chúng tôi</a>
                                <a class="font-body-sm text-body-sm text-on-tertiary-container hover:text-primary transition-colors"
                                    href="#">Chính sách bảo hành</a>
                                <a class="font-body-sm text-body-sm text-on-tertiary-container hover:text-primary transition-colors"
                                    href="#">Liên hệ</a>
                                <a class="font-body-sm text-body-sm text-on-tertiary-container hover:text-primary transition-colors"
                                    href="#">Điều khoản</a>
                            </div>
                            <div class="flex flex-col space-y-4">
                                <h4 class="font-label-caps text-label-caps text-on-surface uppercase mb-2">Hỗ trợ</h4>
                                <a class="font-body-sm text-body-sm text-on-tertiary-container hover:text-primary transition-colors"
                                    href="#">Giao hàng</a>
                                <a class="font-body-sm text-body-sm text-on-tertiary-container hover:text-primary transition-colors"
                                    href="#">Đổi trả</a>
                                <a class="font-body-sm text-body-sm text-on-tertiary-container hover:text-primary transition-colors"
                                    href="#">Bảo mật</a>
                                <a class="font-body-sm text-body-sm text-on-tertiary-container hover:text-primary transition-colors"
                                    href="#">FAQ</a>
                            </div>
                        </div>
                    </div>
                    <div
                        class="max-w-container-max mx-auto px-margin-mobile md:px-margin-desktop mt-16 pt-8 border-t border-outline-variant/10 text-center md:text-left">
                        <p class="font-body-sm text-body-sm text-on-tertiary-container">© 2024 Đồng Hồ Tinh Diệu. Đẳng
                            cấp thời gian.</p>
                    </div>
                </footer>
                <!-- BottomNavBar (Mobile Only) -->
                <nav
                    class="md:hidden bg-surface-container fixed bottom-0 w-full z-50 border-t border-outline-variant/20 shadow-[0_-4px_20px_rgba(0,0,0,0.5)] flex justify-around items-center h-20 pb-safe">
                    <a class="flex flex-col items-center justify-center text-primary font-bold active:scale-90 transition-transform"
                        href="#">
                        <span class="material-symbols-outlined" data-icon="home" data-weight="fill">home</span>
                        <span class="font-label-caps text-[10px] mt-1">Trang chủ</span>
                    </a>
                    <a class="flex flex-col items-center justify-center text-on-surface-variant opacity-60 hover:opacity-100 active:scale-90 transition-transform"
                        href="#">
                        <span class="material-symbols-outlined" data-icon="watch">watch</span>
                        <span class="font-label-caps text-[10px] mt-1">Sản phẩm</span>
                    </a>
                    <a class="flex flex-col items-center justify-center text-on-surface-variant opacity-60 hover:opacity-100 active:scale-90 transition-transform relative"
                        href="#">
                        <span class="material-symbols-outlined" data-icon="shopping_cart">shopping_cart</span>
                        <span class="font-label-caps text-[10px] mt-1">Giỏ hàng</span>
                        <span
                            class="absolute -top-1 -right-1 bg-primary text-on-primary text-[8px] w-4 h-4 flex items-center justify-center rounded-full">0</span>
                    </a>
                    <a class="flex flex-col items-center justify-center text-on-surface-variant opacity-60 hover:opacity-100 active:scale-90 transition-transform"
                        href="#">
                        <span class="material-symbols-outlined" data-icon="person">person</span>
                        <span class="font-label-caps text-[10px] mt-1">Cá nhân</span>
                    </a>
                </nav>
                <!-- Floating Action Button (Optional Contextual) -->
                <button
                    class="fixed bottom-24 right-6 md:bottom-8 md:right-10 bg-primary-container text-on-primary-container w-14 h-14 rounded-full flex items-center justify-center shadow-2xl hover:scale-110 active:scale-95 transition-all z-40 md:z-50">
                    <span class="material-symbols-outlined" data-icon="chat">chat</span>
                </button>
            </body>

            </html>