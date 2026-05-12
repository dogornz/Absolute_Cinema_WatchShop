<%-- 
    Document   : UserProfile
    Created on : May 12, 2026, 3:49:37 PM
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
        <style>
            .material-symbols-outlined {
                font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 24;
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
                    }
                }
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
        <header class="bg-surface/80 backdrop-blur-md text-primary font-headline-md text-headline-md docked full-width top-0 z-50 border-b border-outline-variant/30 flat no shadows flex justify-between items-center px-margin-mobile md:px-margin-desktop py-4 w-full sticky">
            <div class="flex items-center gap-4">
                <span class="material-symbols-outlined cursor-pointer" data-icon="menu">menu</span>
                <h1 class="font-headline-lg text-headline-lg text-primary tracking-tight">Đồng Hồ Tinh Diệu</h1>
            </div>
            <div class="flex items-center gap-6">
                <nav class="hidden md:flex gap-8">
                    <a class="font-label-caps text-label-caps text-on-surface-variant hover:text-primary transition-colors" href="#">Trang chủ</a>
                    <a class="font-label-caps text-label-caps text-on-surface-variant hover:text-primary transition-colors" href="#">Bộ sưu tập</a>
                    <a class="font-label-caps text-label-caps text-primary transition-colors" href="#">Cá nhân</a>
                </nav>
                <span class="material-symbols-outlined cursor-pointer scale-95 duration-200" data-icon="shopping_bag">shopping_bag</span>
            </div>
        </header>
        <main class="max-w-container-max mx-auto px-margin-mobile md:px-margin-desktop py-12 mb-20">
            <div class="grid grid-cols-1 lg:grid-cols-12 gap-10">
                <!-- Sidebar / Profile Info -->
                <aside class="lg:col-span-4 space-y-8">
                    <div class="bg-surface-container p-8 rounded-lg border border-outline-variant/20 shadow-2xl">
                        <div class="flex flex-col items-center text-center mb-8">
                            <div class="w-32 h-32 rounded-full overflow-hidden border-2 border-primary-container mb-4 shadow-[0_0_15px_rgba(212,175,55,0.3)]">
                                <img alt="Avatar" class="w-full h-full object-cover" data-alt="A high-end professional headshot of a sophisticated gentleman in his late 30s wearing a dark charcoal tailored suit. The lighting is dramatic and moody, casting soft shadows across his face to create a sense of mystery and luxury. The background is a blurred dark studio setting, maintaining a minimalist high-contrast aesthetic consistent with a luxury horology brand." src="https://lh3.googleusercontent.com/aida-public/AB6AXuDBzeHSFxgCGE_BihM3FEAWMz9IeQWTaAd9shDF_AOFg70onC7M6M1vetOh2s9B9HTtmCVW1qtiuJtWGtKx-K7xHUX2vSd-lJXNKFt3p-hK2cuTdzgTVInCf7hYtfQgj_o-e-L8RVhlcmK6H07uWtwI2fDtvjm2Qg9xaAX9fkHCkCbJ_AConAUCwXuYzOr5FTErLZLt_-fA3CkuxmmuhPawpgXR8397fEbBoKN0JssbsrKRJ2Z1ComCmn_MyV8K1qVnxlQybUX7CpM"/>
                            </div>
                            <h2 class="font-headline-md text-headline-md text-primary mb-1">Nguyễn Thế Vinh</h2>
                            <span class="font-label-caps text-label-caps text-outline uppercase tracking-widest">Thành viên VIP</span>
                        </div>
                        <div class="space-y-6">
                            <div>
                                <label class="font-label-caps text-label-caps text-outline block mb-1">Email</label>
                                <p class="font-body-md text-body-md text-on-surface">vinh.nguyen@exclusive.com</p>
                            </div>
                            <div>
                                <label class="font-label-caps text-label-caps text-outline block mb-1">Số điện thoại</label>
                                <p class="font-body-md text-body-md text-on-surface">+84 901 234 567</p>
                            </div>
                            <div>
                                <label class="font-label-caps text-label-caps text-outline block mb-1">Địa chỉ</label>
                                <p class="font-body-md text-body-md text-on-surface">123 Đường Đồng Khởi, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh</p>
                            </div>
                            <button class="w-full bg-primary-container text-on-primary-container font-label-caps text-label-caps py-4 rounded hover:bg-primary-fixed transition-all active:scale-95 mt-4 uppercase">
                                Cập nhật thông tin
                            </button>
                        </div>
                    </div>
                    <div class="bg-surface-container-high p-6 rounded-lg border border-outline-variant/10">
                        <h3 class="font-headline-md text-headline-md text-primary-fixed-dim mb-4 text-center">Đặc quyền VIP</h3>
                        <ul class="space-y-3 font-body-sm text-body-sm text-on-surface-variant">
                            <li class="flex items-center gap-3"><span class="material-symbols-outlined text-primary text-[18px]" data-icon="verified">verified</span> Bảo trì định kỳ trọn đời</li>
                            <li class="flex items-center gap-3"><span class="material-symbols-outlined text-primary text-[18px]" data-icon="auto_awesome">auto_awesome</span> Ưu tiên sở hữu phiên bản giới hạn</li>
                            <li class="flex items-center gap-3"><span class="material-symbols-outlined text-primary text-[18px]" data-icon="local_shipping">local_shipping</span> Miễn phí vận chuyển hỏa tốc</li>
                        </ul>
                    </div>
                </aside>
                <!-- Order History -->
                <section class="lg:col-span-8">
                    <h2 class="font-headline-xl text-headline-xl text-on-surface mb-8">Lịch sử đơn hàng</h2>
                    <div class="space-y-4">
                        <!-- Order Card 1 -->
                        <div class="bg-surface-container-low border border-outline-variant/10 p-6 rounded-lg hover:border-primary-container/30 transition-all group">
                            <div class="flex flex-wrap justify-between items-center gap-4 mb-6">
                                <div class="flex items-center gap-4">
                                    <span class="bg-primary/10 text-primary p-3 rounded-full material-symbols-outlined" data-icon="watch">watch</span>
                                    <div>
                                        <h4 class="font-body-lg text-body-lg font-bold">#DH-2024-0892</h4>
                                        <p class="font-body-sm text-body-sm text-outline">Ngày đặt: 12 Tháng 10, 2024</p>
                                    </div>
                                </div>
                                <div class="text-right">
                                    <span class="block font-headline-md text-headline-md text-primary">125.000.000đ</span>
                                    <span class="inline-block font-label-caps text-[10px] px-3 py-1 rounded-full bg-green-900/30 text-green-400 border border-green-400/20">ĐÃ GIAO HÀNG</span>
                                </div>
                            </div>
                            <div class="border-t border-outline-variant/10 pt-4 flex justify-between items-center">
                                <p class="font-body-sm text-body-sm text-on-surface-variant italic">Vacheron Constantin Patrimony - Blue Dial Edition</p>
                                <button class="text-primary font-label-caps text-label-caps hover:underline flex items-center gap-2">
                                    Chi tiết <span class="material-symbols-outlined text-[16px]" data-icon="arrow_forward">arrow_forward</span>
                                </button>
                            </div>
                        </div>
                        <!-- Order Card 2 -->
                        <div class="bg-surface-container-low border border-outline-variant/10 p-6 rounded-lg hover:border-primary-container/30 transition-all group">
                            <div class="flex flex-wrap justify-between items-center gap-4 mb-6">
                                <div class="flex items-center gap-4">
                                    <span class="bg-primary/10 text-primary p-3 rounded-full material-symbols-outlined" data-icon="watch">watch</span>
                                    <div>
                                        <h4 class="font-body-lg text-body-lg font-bold">#DH-2024-0755</h4>
                                        <p class="font-body-sm text-body-sm text-outline">Ngày đặt: 28 Tháng 08, 2024</p>
                                    </div>
                                </div>
                                <div class="text-right">
                                    <span class="block font-headline-md text-headline-md text-primary">89.500.000đ</span>
                                    <span class="inline-block font-label-caps text-[10px] px-3 py-1 rounded-full bg-blue-900/30 text-blue-400 border border-blue-400/20">ĐANG VẬN CHUYỂN</span>
                                </div>
                            </div>
                            <div class="border-t border-outline-variant/10 pt-4 flex justify-between items-center">
                                <p class="font-body-sm text-body-sm text-on-surface-variant italic">Grand Seiko Heritage Collection "Snowflake"</p>
                                <button class="text-primary font-label-caps text-label-caps hover:underline flex items-center gap-2">
                                    Chi tiết <span class="material-symbols-outlined text-[16px]" data-icon="arrow_forward">arrow_forward</span>
                                </button>
                            </div>
                        </div>
                        <!-- Order Card 3 -->
                        <div class="bg-surface-container-low border border-outline-variant/10 p-6 rounded-lg hover:border-primary-container/30 transition-all group opacity-80">
                            <div class="flex flex-wrap justify-between items-center gap-4 mb-6">
                                <div class="flex items-center gap-4">
                                    <span class="bg-primary/10 text-primary p-3 rounded-full material-symbols-outlined" data-icon="watch">watch</span>
                                    <div>
                                        <h4 class="font-body-lg text-body-lg font-bold">#DH-2024-0512</h4>
                                        <p class="font-body-sm text-body-sm text-outline">Ngày đặt: 05 Tháng 06, 2024</p>
                                    </div>
                                </div>
                                <div class="text-right">
                                    <span class="block font-headline-md text-headline-md text-primary">450.000.000đ</span>
                                    <span class="inline-block font-label-caps text-[10px] px-3 py-1 rounded-full bg-surface-container-highest text-outline border border-outline/20">ĐÃ HOÀN TẤT</span>
                                </div>
                            </div>
                            <div class="border-t border-outline-variant/10 pt-4 flex justify-between items-center">
                                <p class="font-body-sm text-body-sm text-on-surface-variant italic">Patek Philippe Calatrava 5227R-001</p>
                                <button class="text-primary font-label-caps text-label-caps hover:underline flex items-center gap-2">
                                    Chi tiết <span class="material-symbols-outlined text-[16px]" data-icon="arrow_forward">arrow_forward</span>
                                </button>
                            </div>
                        </div>
                    </div>
                    <!-- Empty State Suggestion (if needed) -->
                    <div class="mt-12 p-10 border-2 border-dashed border-outline-variant/20 rounded-xl flex flex-col items-center justify-center text-center">
                        <span class="material-symbols-outlined text-outline-variant text-6xl mb-4" data-icon="history_edu">history_edu</span>
                        <h3 class="font-headline-md text-headline-md text-outline mb-2">Quý khách cần tìm đơn hàng cũ hơn?</h3>
                        <p class="font-body-md text-body-md text-on-surface-variant max-w-md mb-6">Mọi dữ liệu giao dịch từ năm 2020 đã được lưu trữ trong kho lưu trữ bảo mật của chúng tôi.</p>
                        <button class="border border-primary-container text-primary font-label-caps text-label-caps px-8 py-3 hover:bg-primary-container/10 transition-colors uppercase">Yêu cầu sao kê đơn hàng</button>
                    </div>
                </section>
            </div>
        </main>
        <!-- Footer -->
        <footer class="bg-surface-container-lowest text-primary font-body-sm text-body-sm w-full py-section-gap border-t border-outline-variant/10 flat">
            <div class="flex flex-col md:flex-row justify-between items-center px-margin-desktop gap-unit max-w-container-max mx-auto w-full">
                <div class="text-center md:text-left mb-6 md:mb-0">
                    <h3 class="font-headline-md text-headline-md text-primary mb-2">Đồng Hồ Tinh Diệu</h3>
                    <p class="text-on-tertiary-container opacity-70">© 2024 Đồng Hồ Tinh Diệu. Đẳng cấp thời gian.</p>
                </div>
                <div class="flex gap-8 flex-wrap justify-center">
                    <a class="text-on-tertiary-container hover:text-primary transition-colors" href="#">Về chúng tôi</a>
                    <a class="text-on-tertiary-container hover:text-primary transition-colors" href="#">Chính sách bảo hành</a>
                    <a class="text-on-tertiary-container hover:text-primary transition-colors" href="#">Liên hệ</a>
                    <a class="text-on-tertiary-container hover:text-primary transition-colors" href="#">Điều khoản</a>
                </div>
            </div>
        </footer>
        <!-- BottomNavBar (Mobile Only) -->
        <nav class="md:hidden bg-surface-container text-primary font-label-caps text-label-caps fixed bottom-0 w-full z-50 border-t border-outline-variant/20 shadow-[0_-4px_20px_rgba(0,0,0,0.5)] flex justify-around items-center h-20 pb-safe">
            <div class="flex flex-col items-center justify-center text-on-surface-variant opacity-60 hover:opacity-100 active:scale-90 transition-transform">
                <span class="material-symbols-outlined" data-icon="home">home</span>
                <span class="mt-1">Trang chủ</span>
            </div>
            <div class="flex flex-col items-center justify-center text-on-surface-variant opacity-60 hover:opacity-100 active:scale-90 transition-transform">
                <span class="material-symbols-outlined" data-icon="watch">watch</span>
                <span class="mt-1">Sản phẩm</span>
            </div>
            <div class="flex flex-col items-center justify-center text-on-surface-variant opacity-60 hover:opacity-100 active:scale-90 transition-transform">
                <span class="material-symbols-outlined" data-icon="shopping_cart">shopping_cart</span>
                <span class="mt-1">Giỏ hàng</span>
            </div>
            <div class="flex flex-col items-center justify-center text-primary font-bold hover:opacity-100 active:scale-90 transition-transform">
                <span class="material-symbols-outlined" data-icon="person" style="font-variation-settings: 'FILL' 1;">person</span>
                <span class="mt-1">Cá nhân</span>
            </div>
        </nav>
    </body></html>
