<%-- 
    Document   : Payment.jsp
    Created on : May 12, 2026, 4:40:01 PM
    Author     : dogor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html class="dark" lang="vi"><head>
        <meta charset="utf-8"/>
        <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
        <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&amp;family=Playfair+Display:wght@400;500;600;700&amp;display=swap" rel="stylesheet"/>
        <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap" rel="stylesheet"/>
        <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap" rel="stylesheet"/>
        <style>
            .material-symbols-outlined {
                font-variation-settings: 'FILL' 0, 'wght' 300, 'GRAD' 0, 'opsz' 24;
            }
            body {
                background-color: #121414;
                color: #e3e2e2;
                -webkit-font-smoothing: antialiased;
            }
        </style>
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
            body {
                min-height: max(884px, 100dvh);
            }
        </style>
    </head>
    <body class="bg-background text-on-surface">
        <!-- TopAppBar -->
        <header class="bg-surface/80 backdrop-blur-md text-primary font-headline-md text-headline-md fixed full-width top-0 z-50 border-b border-outline-variant/30 flex justify-between items-center px-margin-mobile md:px-margin-desktop py-4 w-full">
            <div class="flex items-center gap-4">
                <span class="material-symbols-outlined cursor-pointer hover:text-primary-container transition-colors scale-95 duration-200">menu</span>
                <h1 class="font-headline-lg text-headline-lg text-primary tracking-tight">Đồng Hồ Tinh Diệu</h1>
            </div>
            <div class="flex items-center gap-6">
                <span class="material-symbols-outlined cursor-pointer hover:text-primary-container transition-colors scale-95 duration-200">shopping_bag</span>
            </div>
        </header>
        <main class="pt-32 pb-section-gap px-margin-mobile md:px-margin-desktop max-w-container-max mx-auto">
            <div class="mb-12">
                <h2 class="font-headline-xl text-headline-xl text-primary mb-2">Thanh Toán</h2>
                <p class="font-body-md text-on-surface-variant">Hoàn tất đơn hàng của bạn để sở hữu những tuyệt tác thời gian.</p>
            </div>
            <div class="grid grid-cols-1 lg:grid-cols-12 gap-12 items-start">
                <!-- Left Column: Forms -->
                <div class="lg:col-span-7 space-y-12">
                    <!-- Shipping Info Section -->
                    <section>
                        <div class="flex items-center gap-3 mb-6">
                            <span class="material-symbols-outlined text-primary">local_shipping</span>
                            <h3 class="font-headline-md text-headline-md uppercase tracking-wider">Thông tin giao hàng</h3>
                        </div>
                        <div class="bg-surface-container border border-outline-variant/20 p-8 rounded-lg space-y-6 shadow-2xl">
                            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                                <div class="space-y-2">
                                    <label class="font-label-caps text-label-caps text-on-surface-variant uppercase">Họ và tên</label>
                                    <input class="w-full bg-transparent border-b border-outline focus:border-primary focus:ring-0 text-on-surface font-body-md py-3 transition-all placeholder:text-outline/50" placeholder="Nguyễn Văn A" type="text"/>
                                </div>
                                <div class="space-y-2">
                                    <label class="font-label-caps text-label-caps text-on-surface-variant uppercase">Số điện thoại</label>
                                    <input class="w-full bg-transparent border-b border-outline focus:border-primary focus:ring-0 text-on-surface font-body-md py-3 transition-all" type="tel" value="090 123 4567"/>
                                </div>
                            </div>
                            <div class="space-y-2">
                                <label class="font-label-caps text-label-caps text-on-surface-variant uppercase">Địa chỉ nhận hàng</label>
                                <input class="w-full bg-transparent border-b border-outline focus:border-primary focus:ring-0 text-on-surface font-body-md py-3 transition-all placeholder:text-outline/50" placeholder="Số nhà, tên đường, phường/xã..." type="text"/>
                            </div>
                        </div>
                    </section>
                    <!-- Shipping Method -->
                    <section>
                        <div class="flex items-center gap-3 mb-6">
                            <span class="material-symbols-outlined text-primary">speed</span>
                            <h3 class="font-headline-md text-headline-md uppercase tracking-wider">Phương thức vận chuyển</h3>
                        </div>
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                            <label class="relative flex flex-col p-6 cursor-pointer bg-surface-container border border-primary/40 rounded-lg group transition-all hover:bg-surface-container-high">
                                <input checked="" class="absolute top-4 right-4 text-primary focus:ring-primary bg-surface-container border-outline" name="shipping" type="radio" value="express"/>
                                <span class="font-headline-md text-primary mb-1">Hỏa tốc</span>
                                <span class="font-body-sm text-on-surface-variant">Giao hàng trong 24h nội thành</span>
                                <span class="mt-4 font-body-md text-on-surface">150.000đ</span>
                            </label>
                            <label class="relative flex flex-col p-6 cursor-pointer bg-surface-container border border-outline-variant/20 rounded-lg group transition-all hover:bg-surface-container-high">
                                <input class="absolute top-4 right-4 text-primary focus:ring-primary bg-surface-container border-outline" name="shipping" type="radio" value="standard"/>
                                <span class="font-headline-md text-on-surface mb-1 group-hover:text-primary transition-colors">Tiết kiệm</span>
                                <span class="font-body-sm text-on-surface-variant">Từ 3-5 ngày làm việc</span>
                                <span class="mt-4 font-body-md text-on-surface">Miễn phí</span>
                            </label>
                        </div>
                    </section>
                    <!-- Payment Method -->
                    <section>
                        <div class="flex items-center gap-3 mb-6">
                            <span class="material-symbols-outlined text-primary">account_balance_wallet</span>
                            <h3 class="font-headline-md text-headline-md uppercase tracking-wider">Phương thức thanh toán</h3>
                        </div>
                        <div class="space-y-4">
                            <label class="flex items-center justify-between p-6 cursor-pointer bg-surface-container border border-outline-variant/20 rounded-lg group transition-all hover:bg-surface-container-high">
                                <div class="flex items-center gap-4">
                                    <span class="material-symbols-outlined text-on-surface-variant group-hover:text-primary">payments</span>
                                    <span class="font-body-lg text-on-surface">Thanh toán khi nhận hàng (COD)</span>
                                </div>
                                <input checked="" class="text-primary focus:ring-primary bg-surface-container border-outline" name="payment" type="radio" value="cod"/>
                            </label>
                            <label class="flex items-center justify-between p-6 cursor-pointer bg-surface-container border border-outline-variant/20 rounded-lg group transition-all hover:bg-surface-container-high">
                                <div class="flex items-center gap-4">
                                    <span class="material-symbols-outlined text-on-surface-variant group-hover:text-primary">account_balance</span>
                                    <span class="font-body-lg text-on-surface">Chuyển khoản ngân hàng</span>
                                </div>
                                <input class="text-primary focus:ring-primary bg-surface-container border-outline" name="payment" type="radio" value="bank"/>
                            </label>
                        </div>
                    </section>
                </div>
                <!-- Right Column: Order Summary (Bento/Card) -->
                <div class="lg:col-span-5 sticky top-32">
                    <div class="bg-surface-container-high border border-outline-variant/30 rounded-lg p-8 shadow-2xl overflow-hidden relative">
                        <!-- Subtle Glow -->
                        <div class="absolute -top-24 -right-24 w-48 h-48 bg-primary/5 rounded-full blur-[80px]"></div>
                        <h3 class="font-headline-md text-headline-md text-primary mb-8 border-b border-outline-variant/10 pb-4">Tóm tắt đơn hàng</h3>
                        <div class="space-y-6 mb-8 max-h-[400px] overflow-y-auto pr-2 custom-scrollbar">
                            <!-- Item 1 -->
                            <div class="flex gap-4">
                                <div class="w-24 h-24 flex-shrink-0 bg-surface-container-lowest rounded overflow-hidden border border-outline-variant/10">
                                    <img class="w-full h-full object-cover" data-alt="A high-end luxury watch featuring a polished gold case and a deep black leather strap, displayed against a dark charcoal background with dramatic side lighting highlighting the intricate dial details. The overall aesthetic is professional, sophisticated, and minimalist, emphasizing the heritage and precision of the timepiece." src="https://lh3.googleusercontent.com/aida-public/AB6AXuBKQdqNlQ35YKipA0vxmNglPkyuRa9y_rukiZFbbsYdoerMx98pZHSKTkjCw1CjbGUh1iXWkHLRPUspkrY3GOU6oLwFNuqYGWeE1v_e_iVKRg68d0jeOiRM2nAuMCl9S2orwHNUk-sWMoKS5wWb9x-DImY7-TgeytJZz5vTOYK1fiEgekK3JZeN4qFsOiMLhklGeJbehSY85hQ1iZWBK9YNtZgkTJUevD7pLts7ndZSigs_ZR7T8EX-8o9UrT2n43lRLbN9qbNNTAY"/>
                                </div>
                                <div class="flex-grow">
                                    <p class="font-body-md text-on-surface font-semibold">Legacy Chronograph I</p>
                                    <p class="font-body-sm text-on-surface-variant">Phiên bản giới hạn</p>
                                    <div class="flex justify-between items-center mt-2">
                                        <span class="font-body-sm text-on-surface-variant">Số lượng: 01</span>
                                        <span class="font-body-md text-primary">85.000.000đ</span>
                                    </div>
                                </div>
                            </div>
                            <!-- Item 2 -->
                            <div class="flex gap-4">
                                <div class="w-24 h-24 flex-shrink-0 bg-surface-container-lowest rounded overflow-hidden border border-outline-variant/10">
                                    <img class="w-full h-full object-cover" data-alt="Close-up of a minimalist watch dial with golden hands and markers, set against a dark textured background. The lighting is moody and focused, creating a sense of luxury and exclusivity. The image captures the essence of horological precision and timeless elegance." src="https://lh3.googleusercontent.com/aida-public/AB6AXuAs4cZKmcBsyNuZE5va1a7jsv4UdUJE5yTEns8vW_DGwZyeHH5z4ckHEUIU8LpesezxG7GnJE0uLutMXdiu2kbNehNR4dsBUhd2b5GMzPIOrNC7hCM16JSMi9hfJVSG562uRZ1CPHaMyvHCSz4poVBJf7Dp1eeKT2ER-IAk1XhvRDU8mzqDn7u3CrxbCy0hSeirMjZrQedo_xnMtzjw5tuseWJ6qaWHX50jxRAul4tnII7iioAm4RMqiJLUtnySC0Q1z-_GDPBHBFo"/>
                                </div>
                                <div class="flex-grow">
                                    <p class="font-body-md text-on-surface font-semibold">Midnight Spectre</p>
                                    <p class="font-body-sm text-on-surface-variant">Vỏ thép 316L</p>
                                    <div class="flex justify-between items-center mt-2">
                                        <span class="font-body-sm text-on-surface-variant">Số lượng: 01</span>
                                        <span class="font-body-md text-primary">42.500.000đ</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="space-y-4 border-t border-outline-variant/20 pt-6">
                            <div class="flex justify-between font-body-md text-on-surface-variant">
                                <span>Tạm tính</span>
                                <span>127.500.000đ</span>
                            </div>
                            <div class="flex justify-between font-body-md text-on-surface-variant">
                                <span>Phí vận chuyển</span>
                                <span>150.000đ</span>
                            </div>
                            <div class="flex justify-between items-end pt-4">
                                <span class="font-headline-md text-headline-md text-on-surface">Tổng cộng</span>
                                <span class="font-headline-xl text-headline-xl text-primary">127.650.000đ</span>
                            </div>
                        </div>
                        <button class="w-full mt-10 bg-primary-container text-on-primary-container font-label-caps text-label-caps py-5 rounded-sm uppercase tracking-widest hover:bg-primary transition-all active:scale-95 shadow-[0_10px_30px_rgba(212,175,55,0.3)]">
                            Hoàn tất thanh toán
                        </button>
                        <div class="mt-6 flex items-center justify-center gap-2 text-on-surface-variant/50">
                            <span class="material-symbols-outlined text-[16px]">lock</span>
                            <span class="font-body-sm">Thanh toán bảo mật chuẩn quốc tế</span>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <!-- Footer -->
        <footer class="bg-surface-container-lowest text-primary font-body-sm text-body-sm w-full py-section-gap border-t border-outline-variant/10">
            <div class="flex flex-col md:flex-row justify-between items-center px-margin-desktop gap-unit max-w-container-max mx-auto">
                <div class="mb-8 md:mb-0">
                    <h2 class="font-headline-md text-headline-md text-primary mb-2">Đồng Hồ Tinh Diệu</h2>
                    <p class="text-on-tertiary-container opacity-70 italic">© 2024 Đồng Hồ Tinh Diệu. Đẳng cấp thời gian.</p>
                </div>
                <div class="flex flex-wrap justify-center gap-8">
                    <a class="text-on-tertiary-container hover:text-primary transition-colors" href="#">Về chúng tôi</a>
                    <a class="text-on-tertiary-container hover:text-primary transition-colors" href="#">Chính sách bảo hành</a>
                    <a class="text-on-tertiary-container hover:text-primary transition-colors" href="#">Liên hệ</a>
                    <a class="text-on-tertiary-container hover:text-primary transition-colors" href="#">Điều khoản</a>
                </div>
            </div>
        </footer>
        <!-- BottomNavBar (Mobile Only) -->
        <nav class="md:hidden fixed bottom-0 w-full z-50 bg-surface-container border-t border-outline-variant/20 shadow-[0_-4px_20px_rgba(0,0,0,0.5)] flex justify-around items-center h-20 pb-safe">
            <div class="flex flex-col items-center justify-center text-on-surface-variant opacity-60 hover:opacity-100 active:scale-90 transition-transform">
                <span class="material-symbols-outlined">home</span>
                <span class="font-label-caps text-label-caps">Trang chủ</span>
            </div>
            <div class="flex flex-col items-center justify-center text-on-surface-variant opacity-60 hover:opacity-100 active:scale-90 transition-transform">
                <span class="material-symbols-outlined">watch</span>
                <span class="font-label-caps text-label-caps">Sản phẩm</span>
            </div>
            <div class="flex flex-col items-center justify-center text-primary font-bold active:scale-90 transition-transform">
                <span class="material-symbols-outlined" style="font-variation-settings: 'FILL' 1;">shopping_cart</span>
                <span class="font-label-caps text-label-caps">Giỏ hàng</span>
            </div>
            <div class="flex flex-col items-center justify-center text-on-surface-variant opacity-60 hover:opacity-100 active:scale-90 transition-transform">
                <span class="material-symbols-outlined">person</span>
                <span class="font-label-caps text-label-caps">Cá nhân</span>
            </div>
        </nav>
    </body></html>