<%-- 
    Document   : Admin.jsp
    Created on : May 12, 2026, 4:45:06 PM
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
        <!-- Top Navigation -->
        <header class="bg-surface/80 backdrop-blur-md text-primary font-headline-md text-headline-md docked full-width top-0 z-50 border-b border-outline-variant/30 flex justify-between items-center px-margin-mobile md:px-margin-desktop py-4 w-full">
            <div class="flex items-center gap-4">
                <span class="material-symbols-outlined cursor-pointer" data-icon="menu">menu</span>
                <h1 class="font-headline-lg text-headline-lg text-primary tracking-tight">Đồng Hồ Tinh Diệu</h1>
            </div>
            <div class="flex items-center gap-6">
                <div class="hidden md:flex gap-8">
                    <a class="font-label-caps text-label-caps text-primary" href="#">BẢNG ĐIỀU KHIỂN</a>
                    <a class="font-label-caps text-label-caps text-on-surface-variant hover:text-primary transition-colors" href="#">SẢN PHẨM</a>
                    <a class="font-label-caps text-label-caps text-on-surface-variant hover:text-primary transition-colors" href="#">ĐƠN HÀNG</a>
                </div>
                <span class="material-symbols-outlined cursor-pointer" data-icon="shopping_bag">shopping_bag</span>
            </div>
        </header>
        <div class="flex min-h-screen pt-20">
            <!-- Sidebar Navigation Drawer -->
            <aside class="hidden md:flex flex-col p-6 space-y-4 bg-surface-container-high h-screen sticky top-20 w-80 border-r border-outline-variant/10">
                <div class="flex items-center gap-4 p-4 border-b border-outline-variant/20 mb-4">
                    <div class="w-12 h-12 rounded-full overflow-hidden border border-primary/30">
                        <img alt="Quản trị viên" data-alt="A professional portrait of a senior luxury boutique manager in a charcoal suit, set against a blurred background of a high-end watch store. The lighting is dramatic and warm, emphasizing prestige and authority. The overall aesthetic is dark-mode compatible with gold reflections on the glass display cases in the background." src="https://lh3.googleusercontent.com/aida-public/AB6AXuCCJm_6bs-BTixOfuUsdxcDT5wxaGSYw7piMHndDICZTkd4pglehn0H3cnFGlLcWhZZmoV9i_ivVvfAi5KInS54mdqcOz7AKbLLde0zIlmX4AWMU08juf0c5J-tkbLyhjjyEb4ev7axJO-8VQ9DqosJOAa4B8UN2bZU5hGwu4iT1f8LPTTe9NW6kms5JrdbTwlFORTxGTcT_ppvlpbcPclXH7th3utugOn0QF3_bZoW2IchG0ndm7J9j1vIeeArwmlKP68eppbCQLg"/>
                    </div>
                    <div>
                        <p class="font-headline-md text-headline-md text-primary text-sm">Quản trị viên</p>
                        <p class="font-body-sm text-body-sm text-on-surface-variant">Thành viên VIP</p>
                    </div>
                </div>
                <nav class="space-y-2">
                    <a class="flex items-center gap-4 p-3 text-primary bg-primary/10 rounded-full transition-all duration-300" href="#">
                        <span class="material-symbols-outlined" data-icon="home">home</span>
                        <span class="font-body-md text-body-md">Trang chủ</span>
                    </a>
                    <a class="flex items-center gap-4 p-3 text-on-surface hover:text-primary hover:bg-surface-variant transition-all duration-300" href="#">
                        <span class="material-symbols-outlined" data-icon="diamond">diamond</span>
                        <span class="font-body-md text-body-md">Quản lý sản phẩm</span>
                    </a>
                    <a class="flex items-center gap-4 p-3 text-on-surface hover:text-primary hover:bg-surface-variant transition-all duration-300" href="#">
                        <span class="material-symbols-outlined" data-icon="history_edu">history_edu</span>
                        <span class="font-body-md text-body-md">Quản lý đơn hàng</span>
                    </a>
                    <a class="flex items-center gap-4 p-3 text-on-surface hover:text-primary hover:bg-surface-variant transition-all duration-300" href="#">
                        <span class="material-symbols-outlined" data-icon="menu_book">menu_book</span>
                        <span class="font-body-md text-body-md">Báo cáo doanh thu</span>
                    </a>
                    <a class="flex items-center gap-4 p-3 text-on-surface hover:text-primary hover:bg-surface-variant transition-all duration-300" href="#">
                        <span class="material-symbols-outlined" data-icon="contact_support">contact_support</span>
                        <span class="font-body-md text-body-md">Cài đặt hệ thống</span>
                    </a>
                </nav>
            </aside>
            <!-- Main Content Canvas -->
            <main class="flex-1 p-margin-mobile md:p-margin-desktop bg-surface pb-32">
                <!-- Overview Stats (Bento Grid) -->
                <section class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-section-gap">
                    <div class="bg-surface-container border border-outline-variant/30 p-8 flex flex-col justify-between hover:border-primary/50 transition-all shadow-2xl">
                        <div class="flex justify-between items-start mb-4">
                            <span class="material-symbols-outlined text-primary text-4xl" data-icon="payments">payments</span>
                            <span class="text-xs font-label-caps text-primary bg-primary/10 px-2 py-1">+12.5%</span>
                        </div>
                        <div>
                            <p class="font-label-caps text-label-caps text-on-surface-variant mb-1 uppercase">Tổng doanh thu</p>
                            <p class="font-headline-xl text-headline-xl text-primary">2.450.000.000đ</p>
                        </div>
                    </div>
                    <div class="bg-surface-container border border-outline-variant/30 p-8 flex flex-col justify-between hover:border-primary/50 transition-all shadow-2xl">
                        <div class="flex justify-between items-start mb-4">
                            <span class="material-symbols-outlined text-primary text-4xl" data-icon="shopping_cart">shopping_cart</span>
                            <span class="text-xs font-label-caps text-primary bg-primary/10 px-2 py-1">+8%</span>
                        </div>
                        <div>
                            <p class="font-label-caps text-label-caps text-on-surface-variant mb-1 uppercase">Tổng đơn hàng</p>
                            <p class="font-headline-xl text-headline-xl text-primary">1,284</p>
                        </div>
                    </div>
                    <div class="bg-surface-container border border-outline-variant/30 p-8 flex flex-col justify-between hover:border-primary/50 transition-all shadow-2xl">
                        <div class="flex justify-between items-start mb-4">
                            <span class="material-symbols-outlined text-primary text-4xl" data-icon="group">group</span>
                            <span class="text-xs font-label-caps text-primary bg-primary/10 px-2 py-1">+5.2%</span>
                        </div>
                        <div>
                            <p class="font-label-caps text-label-caps text-on-surface-variant mb-1 uppercase">Tổng người dùng</p>
                            <p class="font-headline-xl text-headline-xl text-primary">45,600</p>
                        </div>
                    </div>
                </section>
                <!-- Product Management Table -->
                <section class="mb-section-gap">
                    <div class="flex justify-between items-end mb-8">
                        <div>
                            <h2 class="font-headline-lg text-headline-lg text-primary">Quản lý sản phẩm</h2>
                            <p class="font-body-md text-body-md text-on-surface-variant">Danh sách đồng hồ cao cấp hiện có</p>
                        </div>
                        <button class="bg-primary text-on-primary font-label-caps text-label-caps py-3 px-8 hover:bg-primary-container transition-all active:scale-95">
                            THÊM SẢN PHẨM MỚI
                        </button>
                    </div>
                    <div class="bg-surface-container border border-outline-variant/30 overflow-x-auto">
                        <table class="w-full text-left border-collapse">
                            <thead>
                                <tr class="border-b border-outline-variant/20 bg-surface-container-high">
                                    <th class="p-6 font-label-caps text-label-caps text-on-surface-variant">SẢN PHẨM</th>
                                    <th class="p-6 font-label-caps text-label-caps text-on-surface-variant">MÃ SP</th>
                                    <th class="p-6 font-label-caps text-label-caps text-on-surface-variant">GIÁ NIÊM YẾT</th>
                                    <th class="p-6 font-label-caps text-label-caps text-on-surface-variant">KHO</th>
                                    <th class="p-6 font-label-caps text-label-caps text-on-surface-variant text-right">THAO TÁC</th>
                                </tr>
                            </thead>
                            <tbody class="divide-y divide-outline-variant/10">
                                <tr class="hover:bg-surface-variant transition-colors group">
                                    <td class="p-6">
                                        <div class="flex items-center gap-4">
                                            <div class="w-12 h-12 bg-black border border-outline-variant/30 flex items-center justify-center overflow-hidden">
                                                <img alt="Grand Celestial Gold" data-alt="A macro studio shot of a luxury gold mechanical watch with an intricate black dial, displayed on a velvet cushion. The lighting is high-key and atmospheric, highlighting the metallic textures and polished surfaces. The style is minimalist and high-contrast, following a prestigious dark-mode boutique aesthetic with golden highlights." src="https://lh3.googleusercontent.com/aida-public/AB6AXuDslILN4bcWWOrDKUQI_K-NfVmUYSudXtCw5rrKmbtX9r8bGbSuh2X9Fq47ScihdxVa7ee0lNQZ8OYnm0L8g9pm_-KZAckY5ZRN2hAe75JE7MPkk70OGkIcAE6kWqO_Si6sucCgtmjKOemZJEaoOF_6UWtdlZjhoYBqZcG3TMLyhF9W7qI2xGB_nb2ir21qO5z9dVPx41HmOqo575HGntfpsjPQ-ULJjZ-0u_-l6tiZYHglb36XWRxWzfeHgJrqxTdW16G99a4Dmrg"/>
                                            </div>
                                            <span class="font-body-md text-body-md text-on-surface font-semibold">Grand Celestial Gold</span>
                                        </div>
                                    </td>
                                    <td class="p-6 font-body-md text-body-md text-on-surface-variant">TW-9021</td>
                                    <td class="p-6 font-body-md text-body-md text-primary">850.000.000đ</td>
                                    <td class="p-6 font-body-md text-body-md text-on-surface-variant">05</td>
                                    <td class="p-6 text-right">
                                        <div class="flex justify-end gap-4">
                                            <button class="material-symbols-outlined text-on-surface-variant hover:text-primary transition-colors" data-icon="edit">edit</button>
                                            <button class="material-symbols-outlined text-on-surface-variant hover:text-error transition-colors" data-icon="delete">delete</button>
                                        </div>
                                    </td>
                                </tr>
                                <tr class="hover:bg-surface-variant transition-colors group">
                                    <td class="p-6">
                                        <div class="flex items-center gap-4">
                                            <div class="w-12 h-12 bg-black border border-outline-variant/30 flex items-center justify-center overflow-hidden">
                                                <img alt="Midnight Elegance" data-alt="Close-up of a premium platinum watch with a blue sunburst dial and leather strap. The background is a moody, dark charcoal texture. The lighting captures the sharp edges of the watch hands and the subtle glow of the indices. This high-end horology visual emphasizes precision and timeless craftsmanship." src="https://lh3.googleusercontent.com/aida-public/AB6AXuA63QdwnM3P9-V2BVL7mJz--qS_VU4_uq2h7sQpdhR5oFALWUOTvfQsdGqvFgb-nFjSwePChQW84tLQVaHFadzpdG1yop2V_CvQtQG8O5WfvHQ9b19JHtoLgnypkWaekCatzs-rJaEbxyGu90iiy7TzhnA8c5Afl2zY8NMstO9dbLWlx6_UtxSJsRcUwMnHkDx8zheiKcOfJ38-k3NMgPo24ZpeKUa6mYon6AwbIK6Q1fAqPc-S8wUnXjM8vN4Wf68bK7aJU6j8f1I"/>
                                            </div>
                                            <span class="font-body-md text-body-md text-on-surface font-semibold">Midnight Elegance</span>
                                        </div>
                                    </td>
                                    <td class="p-6 font-body-md text-body-md text-on-surface-variant">ME-4050</td>
                                    <td class="p-6 font-body-md text-body-md text-primary">420.000.000đ</td>
                                    <td class="p-6 font-body-md text-body-md text-on-surface-variant">12</td>
                                    <td class="p-6 text-right">
                                        <div class="flex justify-end gap-4">
                                            <button class="material-symbols-outlined text-on-surface-variant hover:text-primary transition-colors" data-icon="edit">edit</button>
                                            <button class="material-symbols-outlined text-on-surface-variant hover:text-error transition-colors" data-icon="delete">delete</button>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </section>
                <!-- Order List with Status Update -->
                <section>
                    <div class="flex justify-between items-end mb-8">
                        <div>
                            <h2 class="font-headline-lg text-headline-lg text-primary">Quản lý đơn hàng</h2>
                            <p class="font-body-md text-body-md text-on-surface-variant">Cập nhật trạng thái giao dịch khách hàng</p>
                        </div>
                    </div>
                    <div class="space-y-4">
                        <!-- Order Item Card -->
                        <div class="bg-surface-container border border-outline-variant/30 p-6 flex flex-col md:flex-row justify-between items-center gap-6 hover:border-primary/30 transition-all">
                            <div class="flex items-center gap-6 w-full md:w-auto">
                                <div class="flex flex-col">
                                    <span class="font-label-caps text-label-caps text-on-surface-variant">MÃ ĐƠN HÀNG</span>
                                    <span class="font-body-lg text-body-lg text-primary font-bold">#ORD-78921</span>
                                </div>
                                <div class="h-10 w-px bg-outline-variant/20 hidden md:block"></div>
                                <div class="flex flex-col">
                                    <span class="font-label-caps text-label-caps text-on-surface-variant">KHÁCH HÀNG</span>
                                    <span class="font-body-md text-body-md">Trần Hoàng Long</span>
                                </div>
                            </div>
                            <div class="flex items-center gap-8 w-full md:w-auto justify-between md:justify-end">
                                <div class="flex flex-col text-right">
                                    <span class="font-label-caps text-label-caps text-on-surface-variant">TỔNG TIỀN</span>
                                    <span class="font-body-lg text-body-lg font-semibold">1.270.000.000đ</span>
                                </div>
                                <div class="relative min-w-[180px]">
                                    <select class="w-full bg-surface-container-highest border-b-2 border-primary text-primary font-body-md py-2 px-4 focus:outline-none appearance-none cursor-pointer">
                                        <option value="pending">Chờ xác nhận</option>
                                        <option value="processing">Đang xử lý</option>
                                        <option selected="" value="shipped">Đang giao hàng</option>
                                        <option value="completed">Đã hoàn tất</option>
                                        <option value="cancelled">Đã hủy</option>
                                    </select>
                                    <span class="material-symbols-outlined absolute right-2 top-2 pointer-events-none text-primary" data-icon="expand_more">expand_more</span>
                                </div>
                            </div>
                        </div>
                        <!-- Order Item Card 2 -->
                        <div class="bg-surface-container border border-outline-variant/30 p-6 flex flex-col md:flex-row justify-between items-center gap-6 hover:border-primary/30 transition-all">
                            <div class="flex items-center gap-6 w-full md:w-auto">
                                <div class="flex flex-col">
                                    <span class="font-label-caps text-label-caps text-on-surface-variant">MÃ ĐƠN HÀNG</span>
                                    <span class="font-body-lg text-body-lg text-primary font-bold">#ORD-78922</span>
                                </div>
                                <div class="h-10 w-px bg-outline-variant/20 hidden md:block"></div>
                                <div class="flex flex-col">
                                    <span class="font-label-caps text-label-caps text-on-surface-variant">KHÁCH HÀNG</span>
                                    <span class="font-body-md text-body-md">Nguyễn Thảo Anh</span>
                                </div>
                            </div>
                            <div class="flex items-center gap-8 w-full md:w-auto justify-between md:justify-end">
                                <div class="flex flex-col text-right">
                                    <span class="font-label-caps text-label-caps text-on-surface-variant">TỔNG TIỀN</span>
                                    <span class="font-body-lg text-body-lg font-semibold">450.000.000đ</span>
                                </div>
                                <div class="relative min-w-[180px]">
                                    <select class="w-full bg-surface-container-highest border-b-2 border-outline text-on-surface-variant font-body-md py-2 px-4 focus:outline-none appearance-none cursor-pointer">
                                        <option selected="" value="pending">Chờ xác nhận</option>
                                        <option value="processing">Đang xử lý</option>
                                        <option value="shipped">Đang giao hàng</option>
                                        <option value="completed">Đã hoàn tất</option>
                                        <option value="cancelled">Đã hủy</option>
                                    </select>
                                    <span class="material-symbols-outlined absolute right-2 top-2 pointer-events-none text-on-surface-variant" data-icon="expand_more">expand_more</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </main>
        </div>
        <!-- Bottom Nav for Mobile -->
        <nav class="md:hidden fixed bottom-0 w-full z-50 bg-surface-container border-t border-outline-variant/20 shadow-[0_-4px_20px_rgba(0,0,0,0.5)] flex justify-around items-center h-20 pb-safe">
            <div class="flex flex-col items-center justify-center text-primary font-bold">
                <span class="material-symbols-outlined" data-icon="home">home</span>
                <span class="font-label-caps text-label-caps">Trang chủ</span>
            </div>
            <div class="flex flex-col items-center justify-center text-on-surface-variant opacity-60 hover:opacity-100 active:scale-90 transition-transform">
                <span class="material-symbols-outlined" data-icon="watch">watch</span>
                <span class="font-label-caps text-label-caps">Sản phẩm</span>
            </div>
            <div class="flex flex-col items-center justify-center text-on-surface-variant opacity-60 hover:opacity-100 active:scale-90 transition-transform">
                <span class="material-symbols-outlined" data-icon="shopping_cart">shopping_cart</span>
                <span class="font-label-caps text-label-caps">Giỏ hàng</span>
            </div>
            <div class="flex flex-col items-center justify-center text-on-surface-variant opacity-60 hover:opacity-100 active:scale-90 transition-transform">
                <span class="material-symbols-outlined" data-icon="person">person</span>
                <span class="font-label-caps text-label-caps">Cá nhân</span>
            </div>
        </nav>
        <!-- Footer -->
        <footer class="w-full py-section-gap bg-surface-container-lowest border-t border-outline-variant/10">
            <div class="flex flex-col md:flex-row justify-between items-center px-margin-desktop gap-unit max-w-container-max mx-auto">
                <p class="font-body-sm text-body-sm text-on-tertiary-container">© 2024 Đồng Hồ Tinh Diệu. Đẳng cấp thời gian.</p>
                <div class="flex gap-8">
                    <a class="font-body-sm text-body-sm text-on-tertiary-container hover:text-primary transition-colors" href="#">Về chúng tôi</a>
                    <a class="font-body-sm text-body-sm text-on-tertiary-container hover:text-primary transition-colors" href="#">Chính sách bảo hành</a>
                    <a class="font-body-sm text-body-sm text-on-tertiary-container hover:text-primary transition-colors" href="#">Điều khoản</a>
                </div>
            </div>
        </footer>
    </body></html>
