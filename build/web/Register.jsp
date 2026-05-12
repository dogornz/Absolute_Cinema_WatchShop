<%-- Document : Register.jsp Created on : May 12, 2026, 3:49:17 PM Author : dogor --%>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
            <!DOCTYPE html>

            <html class="dark" lang="vi">

            <head>
                <meta charset="utf-8" />
                <meta content="width=device-width, initial-scale=1.0" name="viewport" />
                <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
                <link
                    href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700&amp;family=Montserrat:wght@300;400;500;600;700&amp;display=swap"
                    rel="stylesheet" />
                <link
                    href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap"
                    rel="stylesheet" />
                <link
                    href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap"
                    rel="stylesheet" />
                <style>
                    .material-symbols-outlined {
                        font-variation-settings: 'FILL' 0, 'wght' 300, 'GRAD' 0, 'opsz' 24;
                    }

                    input:focus+label,
                    input:not(:placeholder-shown)+label {
                        transform: translateY(-24px) scale(0.85);
                        color: #d4af37;
                    }

                    .glass-effect {
                        background: rgba(20, 20, 20, 0.8);
                        backdrop-filter: blur(12px);
                    }
                </style>
                <script id="tailwind-config">
                    tailwind.config = {
                        darkMode: "class",
                        theme: {
                            extend: {
                                "colors": {
                                    "on-error": "#690005",
                                    "on-background": "#e3e2e2",
                                    "surface-tint": "#e9c349",
                                    "surface-container-low": "#1b1c1c",
                                    "on-secondary": "#313030",
                                    "on-primary": "#3c2f00",
                                    "error": "#ffb4ab",
                                    "primary": "#f2ca50",
                                    "outline": "#99907c",
                                    "inverse-surface": "#e3e2e2",
                                    "inverse-on-surface": "#2f3031",
                                    "on-secondary-fixed-variant": "#474646",
                                    "on-secondary-container": "#bab8b7",
                                    "background": "#121414",
                                    "outline-variant": "#4d4635",
                                    "surface-container-highest": "#343535",
                                    "inverse-primary": "#735c00",
                                    "on-surface-variant": "#d0c5af",
                                    "primary-fixed": "#ffe088",
                                    "on-tertiary-container": "#454544",
                                    "surface": "#121414",
                                    "on-error-container": "#ffdad6",
                                    "surface-container-lowest": "#0d0e0f",
                                    "on-primary-container": "#554300",
                                    "surface-variant": "#343535",
                                    "surface-dim": "#121414",
                                    "secondary-fixed-dim": "#c9c6c5",
                                    "on-tertiary-fixed-variant": "#474746",
                                    "tertiary": "#d0cdcd",
                                    "on-surface": "#e3e2e2",
                                    "on-primary-fixed-variant": "#574500",
                                    "tertiary-container": "#b4b2b2",
                                    "surface-container-high": "#292a2a",
                                    "on-secondary-fixed": "#1c1b1b",
                                    "tertiary-fixed-dim": "#c8c6c5",
                                    "error-container": "#93000a",
                                    "secondary-container": "#4a4949",
                                    "on-tertiary-fixed": "#1c1b1b",
                                    "primary-container": "#d4af37",
                                    "surface-bright": "#383939",
                                    "primary-fixed-dim": "#e9c349",
                                    "on-primary-fixed": "#241a00",
                                    "surface-container": "#1f2020",
                                    "secondary-fixed": "#e5e2e1",
                                    "on-tertiary": "#313030",
                                    "tertiary-fixed": "#e5e2e1",
                                    "secondary": "#c9c6c5"
                                },
                                "borderRadius": {
                                    "DEFAULT": "0.125rem",
                                    "lg": "0.25rem",
                                    "xl": "0.5rem",
                                    "full": "0.75rem"
                                },
                                "spacing": {
                                    "gutter": "24px",
                                    "unit": "8px",
                                    "margin-desktop": "60px",
                                    "container-max": "1200px",
                                    "section-gap": "120px",
                                    "margin-mobile": "20px"
                                },
                                "fontFamily": {
                                    "body-md": ["Montserrat"],
                                    "display-lg": ["Playfair Display"],
                                    "body-sm": ["Montserrat"],
                                    "body-lg": ["Montserrat"],
                                    "headline-md": ["Playfair Display"],
                                    "headline-lg": ["Playfair Display"],
                                    "label-caps": ["Montserrat"],
                                    "headline-xl": ["Playfair Display"],
                                    "display-lg-mobile": ["Playfair Display"]
                                },
                                "fontSize": {
                                    "body-md": ["16px", { "lineHeight": "24px", "fontWeight": "400" }],
                                    "display-lg": ["64px", { "lineHeight": "72px", "letterSpacing": "-0.02em", "fontWeight": "700" }],
                                    "body-sm": ["14px", { "lineHeight": "20px", "fontWeight": "400" }],
                                    "body-lg": ["18px", { "lineHeight": "28px", "fontWeight": "400" }],
                                    "headline-md": ["24px", { "lineHeight": "32px", "fontWeight": "500" }],
                                    "headline-lg": ["32px", { "lineHeight": "40px", "fontWeight": "600" }],
                                    "label-caps": ["12px", { "lineHeight": "16px", "letterSpacing": "0.1em", "fontWeight": "600" }],
                                    "headline-xl": ["48px", { "lineHeight": "56px", "fontWeight": "600" }],
                                    "display-lg-mobile": ["40px", { "lineHeight": "48px", "letterSpacing": "-0.01em", "fontWeight": "700" }]
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

            <body class="bg-surface text-on-surface font-body-md selection:bg-primary/30">
                <!-- Top AppBar (Identity Anchor) -->
                <header
                    class="bg-surface/80 backdrop-blur-md text-primary font-headline-md text-headline-md docked full-width top-0 z-50 border-b border-outline-variant/30 flex justify-between items-center px-margin-mobile md:px-margin-desktop py-4 w-full fixed">
                    <div class="flex items-center gap-4">
                        <span
                            class="material-symbols-outlined cursor-pointer hover:text-primary-container transition-colors duration-200 active:scale-95">menu</span>
                        <h1 class="font-headline-lg text-headline-lg text-primary tracking-tight">Đồng Hồ Tinh Diệu</h1>
                    </div>
                    <div class="flex items-center gap-6">
                        <span
                            class="material-symbols-outlined cursor-pointer hover:text-primary-container transition-colors duration-200 active:scale-95">shopping_bag</span>
                    </div>
                </header>
                <main
                    class="min-h-screen flex items-center justify-center pt-24 pb-section-gap px-margin-mobile overflow-hidden relative">
                    <!-- Abstract Background Decorative Element -->
                    <div
                        class="absolute top-1/4 -right-20 w-96 h-96 bg-primary/5 rounded-full blur-[120px] pointer-events-none">
                    </div>
                    <div
                        class="absolute bottom-1/4 -left-20 w-96 h-96 bg-primary/10 rounded-full blur-[120px] pointer-events-none">
                    </div>
                    <section
                        class="grid grid-cols-1 lg:grid-cols-2 max-w-container-max w-full gap-gutter items-center relative z-10">
                        <!-- Left Side: Brand Story/Visual -->
                        <div class="hidden lg:flex flex-col justify-center pr-12">
                            <h2 class="font-display-lg text-display-lg text-primary mb-6">Kiệt Tác <br /> Thời Gian</h2>
                            <p class="text-on-surface-variant font-body-lg mb-8 max-w-md">
                                Gia nhập cộng đồng thượng lưu để tận hưởng những đặc quyền riêng biệt và sở hữu những cỗ
                                máy thời gian tinh xảo nhất thế giới.
                            </p>
                            <div
                                class="aspect-[4/5] w-full max-w-sm rounded-xl overflow-hidden border border-outline-variant/30 shadow-2xl">
                                <img class="w-full h-full object-cover"
                                    data-alt="A close-up shot of a luxury skeleton mechanical watch with gold gears and intricate details, set against a dark, moody charcoal background with soft golden rim lighting. The style is ultra-high-end and professional, emphasizing the precision and craftsmanship of horology. The atmosphere is exclusive, silent, and prestigious, using a minimalist high-contrast palette of deep blacks and radiant gold."
                                    src="https://lh3.googleusercontent.com/aida-public/AB6AXuBvOZJHi1ACcUiJLYH8ohwF0jp1Li_ET-IWTc93K8EFaONsAf4U_NBYZtRyEhXpFTkRyp8Hn25x0upFKlEdThiQvX-Osxh8YYm-tpyxGv1Py1w1XaMSz4viQkxSdXARtrZynxKIZyaFCXBUrMxwaLjUcRPtxRGgm5gl7DpcQbnDWkb5EqvS1ReJbxeqjhhM4UWx8Zj-2F1Ezb4wktadqDs_4ZFFxD1ZPCpwPTiybk7wyED68D3bHNr6Xo3ieunl5kDHNEF6fa4JedY" />
                            </div>
                        </div>
                        <!-- Right Side: Registration Form Card -->
                        <div class="w-full flex justify-center lg:justify-end">
                            <div
                                class="w-full max-w-lg glass-effect p-8 md:p-12 border border-outline-variant/30 rounded-xl shadow-2xl">
                                <div class="text-center mb-10">
                                    <h3 class="font-headline-xl text-headline-xl text-primary mb-2">Đăng Ký</h3>
                                    <p
                                        class="font-label-caps text-label-caps text-on-surface-variant uppercase tracking-widest">
                                        Hành trình thượng lưu bắt đầu từ đây</p>
                                </div>
                                <c:if test="${not empty errorMessage}">
                                    <div
                                        class="bg-error/10 border border-error/30 text-error px-4 py-3 rounded mb-6 text-center font-body-sm shadow-[0_0_15px_rgba(255,180,171,0.1)]">
                                        ${errorMessage}
                                    </div>
                                </c:if>
                                <form action="RegisterServlet" method="POST" class="space-y-8">
                                    <!-- Full Name -->
                                    <div class="relative">
                                        <input
                                            class="peer w-full bg-transparent border-0 border-b border-outline-variant py-2 focus:ring-0 focus:border-primary text-on-surface transition-all duration-300"
                                            id="fullname" name="fullname" placeholder=" " required="" type="text" />
                                        <label
                                            class="absolute left-0 top-2 text-on-surface-variant font-body-md transition-all duration-300 pointer-events-none peer-focus:text-primary"
                                            for="fullname">
                                            Họ và tên
                                        </label>
                                    </div>
                                    <!-- Email -->
                                    <div class="relative">
                                        <input
                                            class="peer w-full bg-transparent border-0 border-b border-outline-variant py-2 focus:ring-0 focus:border-primary text-on-surface transition-all duration-300"
                                            id="email" name="email" placeholder=" " required="" type="email" />
                                        <label
                                            class="absolute left-0 top-2 text-on-surface-variant font-body-md transition-all duration-300 pointer-events-none peer-focus:text-primary"
                                            for="email">
                                            Địa chỉ Email
                                        </label>
                                    </div>
                                    <!-- Phone -->
                                    <div class="relative">
                                        <input
                                            class="peer w-full bg-transparent border-0 border-b border-outline-variant py-2 focus:ring-0 focus:border-primary text-on-surface transition-all duration-300"
                                            id="phone" name="phone" placeholder=" " required="" type="tel" />
                                        <label
                                            class="absolute left-0 top-2 text-on-surface-variant font-body-md transition-all duration-300 pointer-events-none peer-focus:text-primary"
                                            for="phone">
                                            Số điện thoại
                                        </label>
                                    </div>
                                    <!-- Password -->
                                    <div class="relative">
                                        <input
                                            class="peer w-full bg-transparent border-0 border-b border-outline-variant py-2 focus:ring-0 focus:border-primary text-on-surface transition-all duration-300"
                                            id="password" name="password" placeholder=" " required="" type="password" />
                                        <label
                                            class="absolute left-0 top-2 text-on-surface-variant font-body-md transition-all duration-300 pointer-events-none peer-focus:text-primary"
                                            for="password">
                                            Mật khẩu
                                        </label>
                                    </div>
                                    <!-- Confirm Password -->
                                    <div class="relative">
                                        <input
                                            class="peer w-full bg-transparent border-0 border-b border-outline-variant py-2 focus:ring-0 focus:border-primary text-on-surface transition-all duration-300"
                                            id="confirm_password" name="confirm_password" placeholder=" " required=""
                                            type="password" />
                                        <label
                                            class="absolute left-0 top-2 text-on-surface-variant font-body-md transition-all duration-300 pointer-events-none peer-focus:text-primary"
                                            for="confirm_password">
                                            Xác nhận mật khẩu
                                        </label>
                                    </div>
                                    <!-- Terms Checkbox -->
                                    <div class="flex items-start gap-3 pt-2">
                                        <div class="relative flex items-center h-5">
                                            <input
                                                class="w-4 h-4 rounded border-outline-variant bg-transparent text-primary focus:ring-primary focus:ring-offset-surface"
                                                id="terms" required="" type="checkbox" />
                                        </div>
                                        <label class="text-body-sm text-on-surface-variant leading-tight" for="terms">
                                            Tôi đồng ý với các <a class="text-primary hover:underline transition-all"
                                                href="#">Điều khoản dịch vụ</a> và <a
                                                class="text-primary hover:underline transition-all" href="#">Chính sách
                                                bảo mật</a> của Đồng Hồ Tinh Diệu.
                                        </label>
                                    </div>
                                    <!-- Submit Button -->
                                    <div class="pt-4">
                                        <button
                                            class="w-full py-4 bg-primary text-on-primary font-label-caps text-label-caps uppercase tracking-[0.2em] font-bold hover:bg-primary-fixed transition-all duration-300 shadow-[0_10px_30px_rgba(212,175,55,0.2)] active:scale-[0.98]"
                                            type="submit">
                                            Đăng Ký
                                        </button>
                                    </div>
                                    <!-- Login Link -->
                                    <div class="text-center pt-6">
                                        <p class="text-body-sm text-on-surface-variant">
                                            Bạn đã có tài khoản?
                                            <a class="text-primary font-bold ml-2 hover:underline transition-all"
                                                href="Login.jsp">Đăng nhập ngay</a>
                                        </p>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </section>
                </main>
                <!-- Footer (Transactional Suppressed Logic - Minimized for focused task) -->
                <footer class="bg-surface-container-lowest border-t border-outline-variant/10 w-full py-12">
                    <div
                        class="flex flex-col md:flex-row justify-between items-center px-margin-desktop gap-unit max-w-container-max mx-auto">
                        <div class="mb-4 md:mb-0">
                            <span class="font-headline-md text-headline-md text-primary">Đồng Hồ Tinh Diệu</span>
                        </div>
                        <p class="text-on-tertiary-container font-body-sm text-body-sm">
                            © 2024 Đồng Hồ Tinh Diệu. Đẳng cấp thời gian.
                        </p>
                        <div class="flex gap-6 mt-4 md:mt-0">
                            <a class="text-on-tertiary-container font-body-sm text-body-sm hover:text-primary transition-colors"
                                href="#">Về chúng tôi</a>
                            <a class="text-on-tertiary-container font-body-sm text-body-sm hover:text-primary transition-colors"
                                href="#">Liên hệ</a>
                        </div>
                    </div>
                </footer>
                <!-- Bottom Nav (Mobile Only) -->
                <nav
                    class="md:hidden fixed bottom-0 w-full z-50 bg-surface-container border-t border-outline-variant/20 shadow-[0_-4px_20px_rgba(0,0,0,0.5)] flex justify-around items-center h-20 pb-safe">
                    <a class="flex flex-col items-center justify-center text-on-surface-variant opacity-60 hover:opacity-100 active:scale-90 transition-transform"
                        href="#">
                        <span class="material-symbols-outlined">home</span>
                        <span class="font-label-caps text-[10px] mt-1 uppercase">Trang chủ</span>
                    </a>
                    <a class="flex flex-col items-center justify-center text-on-surface-variant opacity-60 hover:opacity-100 active:scale-90 transition-transform"
                        href="#">
                        <span class="material-symbols-outlined">watch</span>
                        <span class="font-label-caps text-[10px] mt-1 uppercase">Sản phẩm</span>
                    </a>
                    <a class="flex flex-col items-center justify-center text-primary font-bold active:scale-90 transition-transform"
                        href="#">
                        <span class="material-symbols-outlined">person</span>
                        <span class="font-label-caps text-[10px] mt-1 uppercase">Cá nhân</span>
                    </a>
                </nav>
            </body>

            </html>