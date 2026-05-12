<%-- 
    Document   : ShopCart.jsp
    Created on : May 12, 2026, 4:43:20 PM
    Author     : dogor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html class="dark" lang="vi"><head>
        <meta charset="utf-8"/>
        <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
        <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&amp;family=Playfair+Display:wght@500;600;700&amp;display=swap" rel="stylesheet"/>
        <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap" rel="stylesheet"/>
        <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap" rel="stylesheet"/>
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
                            "label-caps": ["12px", {"lineHeight": "16px", "letterSpacing": "0.1em", "fontWeight": "600"}],
                            "body-md": ["16px", {"lineHeight": "24px", "fontWeight": "400"}],
                            "headline-md": ["24px", {"lineHeight": "32px", "fontWeight": "500"}],
                            "display-lg-mobile": ["40px", {"lineHeight": "48px", "letterSpacing": "-0.01em", "fontWeight": "700"}],
                            "headline-xl": ["48px", {"lineHeight": "56px", "fontWeight": "600"}],
                            "display-lg": ["64px", {"lineHeight": "72px", "letterSpacing": "-0.02em", "fontWeight": "700"}],
                            "body-sm": ["14px", {"lineHeight": "20px", "fontWeight": "400"}],
                            "headline-lg": ["32px", {"lineHeight": "40px", "fontWeight": "600"}],
                            "body-lg": ["18px", {"lineHeight": "28px", "fontWeight": "400"}]
                        }
                    },
                },
            }
        </script>
        <style>
            .material-symbols-outlined {
                font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 24;
            }
            body {
                background-color: #121414;
                color: #e3e2e2;
            }
            .luxury-card {
                background-color: #141414;
                border: 0.5px solid #262626;
            }
        </style>
        <style>
            body {
                min-height: max(884px, 100dvh);
            }
        </style>
    </head>
    <body class="min-h-screen flex flex-col font-body-md">
        <!-- TopAppBar -->
        <header class="bg-surface/80 backdrop-blur-md text-primary font-headline-md text-headline-md docked full-width top-0 z-50 border-b border-outline-variant/30 flex justify-between items-center px-margin-mobile md:px-margin-desktop py-4 w-full sticky">
            <div class="flex items-center gap-4">
                <span class="material-symbols-outlined cursor-pointer hover:text-primary-container transition-colors scale-95 duration-200" data-icon="menu">menu</span>
                <h1 class="font-headline-lg text-headline-lg text-primary tracking-tight">Đồng Hồ Tinh Diệu</h1>
            </div>
            <div class="flex items-center gap-6">
                <nav class="hidden md:flex gap-8">
                    <a class="font-label-caps text-label-caps text-on-surface-variant hover:text-primary-container transition-colors" href="#">Trang chủ</a>
                    <a class="font-label-caps text-label-caps text-on-surface-variant hover:text-primary-container transition-colors" href="#">Sản phẩm</a>
                    <a class="font-label-caps text-label-caps text-primary underline" href="#">Giỏ hàng</a>
                </nav>
                <div class="relative">
                    <span class="material-symbols-outlined cursor-pointer hover:text-primary-container transition-colors scale-95 duration-200" data-icon="shopping_bag">shopping_bag</span>
                    <span class="absolute -top-2 -right-2 bg-primary text-on-primary text-[10px] font-bold px-1.5 py-0.5 rounded-full">3</span>
                </div>
            </div>
        </header>
        <main class="flex-grow max-w-container-max mx-auto w-full px-margin-mobile md:px-margin-desktop py-12">
            <h2 class="font-headline-xl text-headline-xl text-primary mb-12 text-center md:text-left">Giỏ Hàng Của Bạn</h2>
            <div class="grid grid-cols-1 lg:grid-cols-12 gap-section-gap/2">
                <!-- Cart Items List -->
                <div class="lg:col-span-8 space-y-gutter">
                    <!-- Item 1 -->
                    <div class="luxury-card p-6 flex flex-col md:flex-row items-center gap-6 group hover:border-primary/30 transition-all">
                        <div class="w-32 h-32 flex-shrink-0 bg-surface-container-low overflow-hidden rounded">
                            <img class="w-full h-full object-cover group-hover:scale-110 transition-transform duration-500" data-alt="A luxury gold Swiss watch with intricate tourbillon movement captured against a dark velvet background. The lighting is dramatic and high-key, highlighting the polished metallic surfaces and the shimmering gold accents of the design. The overall mood is prestigious and timeless, reflecting a high-end minimalist aesthetic." src="https://lh3.googleusercontent.com/aida-public/AB6AXuAB64ZFYELpVXG1Yyw5FSsDyJGGqtC-sztKkGyoNkvwCZADn1Qrr5B4c5yBwosVmBQX9lRddZwilrN705LMLpX2SBPMLqcHimBtdzjmnZZNuyyFtBCJgzU1557dOnQeinBDPxJ6ExFEqHi1sqaEk0b5fWgjGryqjBo_PO632kJ9c3eDjx0fIadCfma-RqZAb9x0qvbxtJBHl16Z7rknJ4KV59pXCcVNzxAx32vXgFPYFxSbJIL_zUNdLMoPSNe0wroChEYrj3voWj8"/>
                        </div>
                        <div class="flex-grow text-center md:text-left">
                            <h3 class="font-headline-md text-headline-md text-on-surface mb-1">Elysian Gold Chronograph</h3>
                            <p class="text-on-surface-variant text-body-sm font-label-caps mb-4">Limited Edition / Swiss Made</p>
                            <div class="flex flex-wrap justify-center md:justify-start items-center gap-6">
                                <div class="flex items-center border border-outline/30 rounded-lg overflow-hidden">
                                    <button class="px-3 py-1 hover:bg-surface-variant text-primary transition-colors">-</button>
                                    <span class="px-4 py-1 text-on-surface border-x border-outline/30">1</span>
                                    <button class="px-3 py-1 hover:bg-surface-variant text-primary transition-colors">+</button>
                                </div>
                                <button class="flex items-center gap-1 text-error text-body-sm hover:opacity-80 transition-opacity">
                                    <span class="material-symbols-outlined text-sm" data-icon="delete">delete</span>
                                    Xóa
                                </button>
                            </div>
                        </div>
                        <div class="text-right md:w-32">
                            <span class="text-primary font-bold text-lg">125.000.000đ</span>
                        </div>
                    </div>
                    <!-- Item 2 -->
                    <div class="luxury-card p-6 flex flex-col md:flex-row items-center gap-6 group hover:border-primary/30 transition-all">
                        <div class="w-32 h-32 flex-shrink-0 bg-surface-container-low overflow-hidden rounded">
                            <img class="w-full h-full object-cover group-hover:scale-110 transition-transform duration-500" data-alt="A sleek black minimalist wristwatch with a leather strap positioned on a dark slate surface. Atmospheric smoke and subtle gold lighting create a sense of mystery and exclusivity. The watch features fine craftsmanship with metallic gold hands that contrast sharply against the deep black watch face." src="https://lh3.googleusercontent.com/aida-public/AB6AXuDnpZLo_UsiRQxIjZ8C11FfcC3hgRz_g6V0fgS_8KkizksGs6bqFFjdHhxQL_lUqd2WAJVdk66J39ugNoAIY-cgfcQnUFXhA65UcVJ-rDjD0i-G65e3Hd0dF56FsqAByO2smAdlCbMVjalsfjyDNub2aE_wNKkI3fEPU6eE06WF95q8cSbRWNexTEGDEVOyE1-vEPZbbFQ-UikpmcI9uFI1W1r7jem2ZcVnsK3aZKgWcJPsBoN4QAhIc8gBD_ou5uxRwVilrmxciME"/>
                        </div>
                        <div class="flex-grow text-center md:text-left">
                            <h3 class="font-headline-md text-headline-md text-on-surface mb-1">Midnight Nocturne</h3>
                            <p class="text-on-surface-variant text-body-sm font-label-caps mb-4">Steel &amp; Sapphire / 42mm</p>
                            <div class="flex flex-wrap justify-center md:justify-start items-center gap-6">
                                <div class="flex items-center border border-outline/30 rounded-lg overflow-hidden">
                                    <button class="px-3 py-1 hover:bg-surface-variant text-primary transition-colors">-</button>
                                    <span class="px-4 py-1 text-on-surface border-x border-outline/30">2</span>
                                    <button class="px-3 py-1 hover:bg-surface-variant text-primary transition-colors">+</button>
                                </div>
                                <button class="flex items-center gap-1 text-error text-body-sm hover:opacity-80 transition-opacity">
                                    <span class="material-symbols-outlined text-sm" data-icon="delete">delete</span>
                                    Xóa
                                </button>
                            </div>
                        </div>
                        <div class="text-right md:w-32">
                            <span class="text-primary font-bold text-lg">45.000.000đ</span>
                        </div>
                    </div>
                </div>
                <!-- Summary Section -->
                <div class="lg:col-span-4">
                    <div class="luxury-card p-8 sticky top-24">
                        <h3 class="font-headline-md text-headline-md text-primary mb-8 border-b border-outline-variant/30 pb-4">Tóm tắt đơn hàng</h3>
                        <div class="space-y-4 mb-8">
                            <div class="flex justify-between items-center">
                                <span class="text-on-surface-variant">Tạm tính</span>
                                <span class="text-on-surface">215.000.000đ</span>
                            </div>
                            <div class="flex justify-between items-center">
                                <span class="text-on-surface-variant">VAT (10%)</span>
                                <span class="text-on-surface">21.500.000đ</span>
                            </div>
                            <div class="flex justify-between items-center">
                                <span class="text-on-surface-variant">Phí vận chuyển</span>
                                <span class="text-primary font-bold uppercase tracking-widest text-[10px]">Miễn phí</span>
                            </div>
                        </div>
                        <div class="border-t border-outline-variant/30 pt-6 mb-10">
                            <div class="flex justify-between items-end">
                                <span class="font-headline-md text-on-surface">Tổng cộng</span>
                                <span class="text-primary font-bold text-2xl">236.500.000đ</span>
                            </div>
                        </div>
                        <button class="w-full py-4 bg-primary text-on-primary font-label-caps text-label-caps uppercase tracking-widest hover:bg-primary-container transition-all hover:shadow-[0_0_15px_rgba(212,175,55,0.4)] active:scale-95 duration-200">
                            Tiến hành thanh toán
                        </button>
                        <div class="mt-8 pt-8 border-t border-outline-variant/10 text-center">
                            <div class="flex justify-center gap-4 text-on-surface-variant/40 mb-4">
                                <span class="material-symbols-outlined" data-icon="verified">verified</span>
                                <span class="material-symbols-outlined" data-icon="lock">lock</span>
                                <span class="material-symbols-outlined" data-icon="local_shipping">local_shipping</span>
                            </div>
                            <p class="text-body-sm text-on-tertiary-container italic">Thanh toán bảo mật &amp; Giao hàng siêu tốc trong 24h</p>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <!-- Footer -->
        <footer class="bg-surface-container-lowest text-on-tertiary-container font-body-sm text-body-sm w-full py-section-gap border-t border-outline-variant/10">
            <div class="flex flex-col md:flex-row justify-between items-center px-margin-desktop gap-unit max-w-container-max mx-auto">
                <div class="mb-6 md:mb-0">
                    <h4 class="font-headline-md text-headline-md text-primary mb-2">Đồng Hồ Tinh Diệu</h4>
                    <p class="text-on-tertiary-container/60">© 2024 Đồng Hồ Tinh Diệu. Đẳng cấp thời gian.</p>
                </div>
                <div class="flex flex-wrap justify-center gap-8">
                    <a class="hover:text-primary transition-colors" href="#">Về chúng tôi</a>
                    <a class="hover:text-primary transition-colors" href="#">Chính sách bảo hành</a>
                    <a class="hover:text-primary transition-colors" href="#">Liên hệ</a>
                    <a class="hover:text-primary transition-colors" href="#">Điều khoản</a>
                </div>
            </div>
        </footer>
        <!-- BottomNavBar (Mobile only) -->
        <nav class="fixed bottom-0 w-full z-50 bg-surface-container md:hidden border-t border-outline-variant/20 shadow-[0_-4px_20px_rgba(0,0,0,0.5)] flex justify-around items-center h-20 pb-safe">
            <div class="flex flex-col items-center justify-center text-on-surface-variant opacity-60 hover:opacity-100 active:scale-90 transition-transform">
                <span class="material-symbols-outlined" data-icon="home">home</span>
                <span class="font-label-caps text-[10px] mt-1">Trang chủ</span>
            </div>
            <div class="flex flex-col items-center justify-center text-on-surface-variant opacity-60 hover:opacity-100 active:scale-90 transition-transform">
                <span class="material-symbols-outlined" data-icon="watch">watch</span>
                <span class="font-label-caps text-[10px] mt-1">Sản phẩm</span>
            </div>
            <div class="flex flex-col items-center justify-center text-primary font-bold active:scale-90 transition-transform">
                <span class="material-symbols-outlined" data-icon="shopping_cart" data-weight="fill">shopping_cart</span>
                <span class="font-label-caps text-[10px] mt-1">Giỏ hàng</span>
            </div>
            <div class="flex flex-col items-center justify-center text-on-surface-variant opacity-60 hover:opacity-100 active:scale-90 transition-transform">
                <span class="material-symbols-outlined" data-icon="person">person</span>
                <span class="font-label-caps text-[10px] mt-1">Cá nhân</span>
            </div>
        </nav>
    </body></html>
