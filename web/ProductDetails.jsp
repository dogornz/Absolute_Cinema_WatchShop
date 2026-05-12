<%-- 
    Document   : ProductDetails
    Created on : May 12, 2026, 4:35:42 PM
    Author     : dogor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html class="dark" lang="vi"><head>
        <meta charset="utf-8"/>
        <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
        <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&amp;family=Playfair+Display:wght@500;600;700&amp;display=swap" rel="stylesheet"/>
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
            body {
                background-color: #0a0a0a;
                color: #e3e2e2;
            }
            .material-symbols-outlined {
                font-variation-settings: 'FILL' 0, 'wght' 300, 'GRAD' 0, 'opsz' 24;
            }
            /* Custom Scrollbar for Luxury Look */
            ::-webkit-scrollbar {
                width: 4px;
            }
            ::-webkit-scrollbar-track {
                background: #0a0a0a;
            }
            ::-webkit-scrollbar-thumb {
                background: #d4af37;
            }
        </style>
        <style>
            body {
                min-height: max(884px, 100dvh);
            }
        </style>
    </head>
    <body class="bg-background text-on-surface">
        <!-- TopAppBar -->
        <header class="fixed top-0 z-50 w-full bg-surface/80 backdrop-blur-md border-b border-outline-variant/30 flex justify-between items-center px-margin-mobile md:px-margin-desktop py-4">
            <div class="flex items-center gap-4">
                <button class="text-primary active:scale-95 duration-200">
                    <span class="material-symbols-outlined" data-icon="menu">menu</span>
                </button>
                <h1 class="font-headline-lg text-headline-lg text-primary tracking-tight">Đồng Hồ Tinh Diệu</h1>
            </div>
            <div class="flex items-center gap-6">
                <div class="hidden md:flex gap-8">
                    <a class="font-label-caps text-label-caps text-primary" href="#">Trang chủ</a>
                    <a class="font-label-caps text-label-caps text-on-surface-variant hover:text-primary transition-colors" href="#">Sản phẩm</a>
                    <a class="font-label-caps text-label-caps text-on-surface-variant hover:text-primary transition-colors" href="#">Bộ sưu tập</a>
                </div>
                <button class="text-primary active:scale-95 duration-200">
                    <span class="material-symbols-outlined" data-icon="shopping_bag">shopping_bag</span>
                </button>
            </div>
        </header>
        <main class="pt-24 pb-section-gap max-w-container-max mx-auto px-margin-mobile md:px-margin-desktop">
            <!-- Breadcrumb -->
            <nav class="flex mb-8 gap-2 font-label-caps text-[10px] uppercase tracking-widest text-on-surface-variant/60">
                <a class="hover:text-primary" href="#">Trang chủ</a>
                <span>/</span>
                <a class="hover:text-primary" href="#">Đồng hồ nam</a>
                <span>/</span>
                <span class="text-primary">Rolex Submariner Gold Edition</span>
            </nav>
            <div class="grid grid-cols-1 lg:grid-cols-12 gap-gutter lg:gap-16">
                <!-- Image Gallery: Bento Style -->
                <div class="lg:col-span-7 grid grid-cols-2 gap-4">
                    <div class="col-span-2 aspect-[4/5] bg-surface-container overflow-hidden border border-outline-variant/20">
                        <img alt="Rolex Submariner Gold Edition Main" class="w-full h-full object-cover" data-alt="A macro close-up shot of a luxury gold Rolex Submariner watch resting on a reflective black marble surface. The lighting is dramatic high-key, highlighting the brushed gold texture and the deep black ceramic bezel. The mood is opulent and prestigious, following a minimalist high-contrast aesthetic with deep shadows and golden glints. Professional horological photography style." src="https://lh3.googleusercontent.com/aida-public/AB6AXuBVjGup3xyLvseZkjP1kn3m2Tz-DbHzxIQ-vla9dKxD99OF5ze1v_FHRZiCYjqGioylvmzvg7_5dwZ8rNBVn4lh2bVTA4yXby2FwQa-9ZFoPvnbhOCt3hfjuNeALPTu1g4C9NlUpJ9qF2_z8AGQHnG_dlIM37-xKfXX8TG5MO4wEbbzM3jPtcbcBfqNFLw4Cs5-nXgvv-3BInhktbzd7Ek6B8ePhWitfZ0q0n-61kbBi6XHkU9Z_hxAdQN_F8quWCTls7sAbGy8ty0"/>
                    </div>
                    <div class="aspect-square bg-surface-container overflow-hidden border border-outline-variant/20">
                        <img alt="Rolex Submariner Detail" class="w-full h-full object-cover" data-alt="Detailed close-up of a gold watch crown and casing, showing the intricate mechanical engravings and polished finish. The background is a soft-focus dark velvet, creating a sense of infinite depth. Warm golden light spills across the metallic edges, emphasizing precision craftsmanship. Dark charcoal and gold color palette for a luxury boutique feel." src="https://lh3.googleusercontent.com/aida-public/AB6AXuDcXe9ALqzKQmK9dQmfK2TQuX52BHOZMpe6OYUdaFG9rYtNnIXUC3jbJmTeN1bA3zX5pktem-sg-L63TIq3mZ8aHG1sgWNK6SPk2NNeHdI8UgB7cx0LVNDx8uSdpCMluT0PPvZFvAjyS1iOHzj_dSNkv7UkwN1o1m-NYpn7TIt8VgnOYPuegRNvGCfLkHJbv-9baaGg7fjMSWrlmsQ2IBzrvlpT5lBIVUlkGjPHR7R8xHmQtjDF7ccRogUCAVB5VdWfdbk2nEaaP-E"/>
                    </div>
                    <div class="aspect-square bg-surface-container overflow-hidden border border-outline-variant/20">
                        <img alt="Rolex Submariner Movement" class="w-full h-full object-cover" data-alt="A sophisticated shot of the back of a luxury watch, revealing the complex internal golden gears and oscillating weight through a sapphire crystal case back. The scene is dimly lit with focused spotlights on the jewels and mechanical parts. High contrast between the dark metallic casing and the shimmering internal gold movement." src="https://lh3.googleusercontent.com/aida-public/AB6AXuAI7EaEtaqaZM1DP8mLmyiPB4nqiNmmpz9KRRhf7Z9oeDR5nh1AabaNMqcqTbzbJAbxyKUzw_1cRkI9s_mO8Ds4AAtWvOlPRyq3tjipGqR3Fqpa8t335DdmYmF7cEZ0ZMSaDmx70TnLJTJ4sxqM-59YOGso2NA5dxiapJ6ru8L81_cwRuYptNHBxvbr3A5lw1hJWegsqaeqamN-nvqOCMrZKLRAtcuTpsbtRxx5L6kiglICDhn0gKQRoj2gC0fh5PxGs5KIOLNs-A4"/>
                    </div>
                </div>
                <!-- Product Info -->
                <div class="lg:col-span-5 flex flex-col">
                    <div class="sticky top-32">
                        <span class="font-label-caps text-label-caps text-primary mb-4 block">Limited Edition</span>
                        <h2 class="font-headline-xl text-headline-xl text-on-surface mb-2 leading-tight">Rolex Submariner Gold Edition</h2>
                        <p class="font-headline-md text-headline-md text-primary mb-8">500.000.000đ</p>
                        <div class="h-px w-full bg-outline-variant/20 mb-8"></div>
                        <div class="space-y-6 mb-10">
                            <div>
                                <h3 class="font-label-caps text-label-caps text-on-surface mb-3 uppercase">Mô tả sản phẩm</h3>
                                <p class="font-body-md text-body-md text-on-surface-variant leading-relaxed">
                                    Biểu tượng của sự chính xác và quyền lực. Rolex Submariner Gold Edition được chế tác từ vàng nguyên khối 18ct, kết hợp với mặt số đen huyền bí và vành Cerachrom xoay một chiều. Đây không chỉ là một chiếc đồng hồ, mà là một kiệt tác di sản vượt thời gian.
                                </p>
                            </div>
                            <div class="grid grid-cols-2 gap-4">
                                <div class="p-4 border border-outline-variant/20 bg-surface-container-low">
                                    <span class="font-label-caps text-[10px] text-on-surface-variant/60 block mb-1">CHẤT LIỆU</span>
                                    <span class="font-body-sm text-on-surface">Vàng 18ct &amp; Sapphire</span>
                                </div>
                                <div class="p-4 border border-outline-variant/20 bg-surface-container-low">
                                    <span class="font-label-caps text-[10px] text-on-surface-variant/60 block mb-1">BỘ MÁY</span>
                                    <span class="font-body-sm text-on-surface">Automatic 3235</span>
                                </div>
                            </div>
                        </div>
                        <!-- Actions -->
                        <div class="space-y-4">
                            <div class="flex items-center gap-4 mb-6">
                                <span class="font-label-caps text-label-caps text-on-surface">Số lượng:</span>
                                <div class="flex items-center border border-outline-variant/40">
                                    <button class="px-4 py-2 hover:bg-surface-variant text-primary">-</button>
                                    <span class="px-6 py-2 font-body-md border-x border-outline-variant/40">01</span>
                                    <button class="px-4 py-2 hover:bg-surface-variant text-primary">+</button>
                                </div>
                            </div>
                            <div class="flex flex-col sm:flex-row gap-4">
                                <button class="flex-1 py-5 border border-primary text-primary font-label-caps text-label-caps uppercase tracking-widest hover:bg-primary/10 transition-all active:scale-[0.98]">
                                    Thêm vào giỏ hàng
                                </button>
                                <button class="flex-1 py-5 bg-primary text-on-primary font-label-caps text-label-caps uppercase tracking-widest hover:brightness-110 shadow-[0_0_15px_rgba(212,175,55,0.3)] transition-all active:scale-[0.98]">
                                    Mua ngay
                                </button>
                            </div>
                        </div>
                        <!-- Trust Badges -->
                        <div class="mt-12 flex justify-between border-t border-outline-variant/10 pt-8">
                            <div class="flex flex-col items-center gap-2 text-center">
                                <span class="material-symbols-outlined text-primary" data-icon="verified">verified</span>
                                <span class="font-label-caps text-[10px] text-on-surface-variant">Bảo hành 5 năm</span>
                            </div>
                            <div class="flex flex-col items-center gap-2 text-center">
                                <span class="material-symbols-outlined text-primary" data-icon="local_shipping">local_shipping</span>
                                <span class="font-label-caps text-[10px] text-on-surface-variant">Giao hàng miễn phí</span>
                            </div>
                            <div class="flex flex-col items-center gap-2 text-center">
                                <span class="material-symbols-outlined text-primary" data-icon="lock">lock</span>
                                <span class="font-label-caps text-[10px] text-on-surface-variant">Thanh toán bảo mật</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Related Products Section -->
            <section class="mt-section-gap">
                <div class="flex justify-between items-end mb-12">
                    <div class="max-w-xl">
                        <h2 class="font-headline-lg text-headline-lg text-on-surface mb-2">Tuyệt phẩm tương tự</h2>
                        <p class="font-body-md text-body-md text-on-surface-variant">Khám phá những mẫu đồng hồ đẳng cấp khác trong bộ sưu tập di sản của chúng tôi.</p>
                    </div>
                    <a class="font-label-caps text-label-caps text-primary border-b border-primary pb-1 hidden md:block" href="#">Xem tất cả</a>
                </div>
                <div class="grid grid-cols-1 md:grid-cols-3 gap-gutter">
                    <!-- Related Card 1 -->
                    <div class="group border border-outline-variant/20 bg-surface-container-low overflow-hidden transition-all hover:border-primary/50">
                        <div class="aspect-[3/4] overflow-hidden bg-surface-container-highest">
                            <img alt="Patek Philippe Grand Complications" class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-700" data-alt="A minimalist studio photograph of a luxury platinum Patek Philippe watch against a solid charcoal gray background. The lighting is soft and directional, casting subtle shadows that define the watch's elegant curves. The composition is centered and formal, reflecting a high-end gallery aesthetic. Deep blacks and cool silver tones dominate the image." src="https://lh3.googleusercontent.com/aida-public/AB6AXuAfeiR8igcn5um7Vdfsoio-2DK-CEdU-F7t78jadpmF4tfTFDCDGHsjzv9HPRCvdiBaVG6gyS2fc10kEPUfvswuqyIt-MJ-XEGXEHdg2ulHfVVxGR5Bew7C_R_unchCTQeRwnQgHNG1f3uwmjCeaIU95rWX1b3JDRMTphyXS0f2fyyq8COpY5URavPRn0NLjQRVEmPSvE-j9Dyoq2qRRAZVPQToHhjdq_kEnxeaRp4mB88RMQsQeTncWE76cUIwgcIlI5nRTxw7ZSo"/>
                        </div>
                        <div class="p-8 text-center">
                            <span class="font-label-caps text-[10px] text-on-surface-variant/60 mb-2 block tracking-widest uppercase">Patek Philippe</span>
                            <h4 class="font-headline-md text-headline-md text-on-surface mb-3">Grand Complications</h4>
                            <p class="font-body-md text-primary font-semibold">1.250.000.000đ</p>
                        </div>
                    </div>
                    <!-- Related Card 2 -->
                    <div class="group border border-outline-variant/20 bg-surface-container-low overflow-hidden transition-all hover:border-primary/50">
                        <div class="aspect-[3/4] overflow-hidden bg-surface-container-highest">
                            <img alt="Audemars Piguet Royal Oak" class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-700" data-alt="Close-up of an Audemars Piguet Royal Oak watch with its iconic octagonal bezel and 'Grande Tapisserie' pattern dial. The scene is shot in a low-light luxury boutique setting, with gold-toned ambient light reflecting off the steel and gold surfaces. High-contrast imagery emphasizing the sharp architectural lines and prestige of the piece." src="https://lh3.googleusercontent.com/aida-public/AB6AXuD5-zCO4gAYs9fwp5EQ7Z1H3KKOesEm2eQm9lSdAiGtWcck7vGAo5f3g44gVaGaO4aRLv-obfIFeOtsm1vpcpgq6HpWeKy7TzBfrpsef9JqzHEYN9S4KYyyniLvKIxrlox21alrob6YnDeQaBNrL8LxPxCg3XCkuhjFxhNwQK_PJUKHb4gjH_xQVVUsRUVPI7pCX_mFlX-jYZtkpKdmeJibXAFCFX65xWKZqiFCrUisb0Vhsn9HIawnmY6kSskkJVbH7bwvX1xvZ1Q"/>
                        </div>
                        <div class="p-8 text-center">
                            <span class="font-label-caps text-[10px] text-on-surface-variant/60 mb-2 block tracking-widest uppercase">Audemars Piguet</span>
                            <h4 class="font-headline-md text-headline-md text-on-surface mb-3">Royal Oak Gold</h4>
                            <p class="font-body-md text-primary font-semibold">980.000.000đ</p>
                        </div>
                    </div>
                    <!-- Related Card 3 -->
                    <div class="group border border-outline-variant/20 bg-surface-container-low overflow-hidden transition-all hover:border-primary/50">
                        <div class="aspect-[3/4] overflow-hidden bg-surface-container-highest">
                            <img alt="Cartier Tank Louis" class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-700" data-alt="Elegant flat-lay of a gold Cartier Tank watch on a dark, textured leather surface. The square watch face with Roman numerals is highlighted by a narrow beam of warm light. The image captures the essence of classic French luxury through high-contrast lighting and a rich, dark-toned color palette. Minimalist and editorial style photography." src="https://lh3.googleusercontent.com/aida-public/AB6AXuA1uqi6GbpSb-yXK9gS1tOydv_55sybU_rE3AaWuTML1G74WgQeK_5S5OHiIidYooHrkM8AHypsf56yO2odApYjmPS7fJLpheR5KQzPAHh1oQYkqz2EU21eBJCoOSvEpTJMYIkalRn_lDsIIsJpnlSxJhcthlGiXXc0gtU_I_IBD-aTkT0EiPwqOixGYo-NQ5sPeuTWr8YOB1Md9UCF9f14uhkxionRODrhhXxzM2NtSNsfxUW9Jwufg3f3-rIcKfv4XVhvbjHf2oQ"/>
                        </div>
                        <div class="p-8 text-center">
                            <span class="font-label-caps text-[10px] text-on-surface-variant/60 mb-2 block tracking-widest uppercase">Cartier</span>
                            <h4 class="font-headline-md text-headline-md text-on-surface mb-3">Tank Louis Gold</h4>
                            <p class="font-body-md text-primary font-semibold">420.000.000đ</p>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        <!-- Footer -->
        <footer class="w-full py-section-gap bg-surface-container-lowest border-t border-outline-variant/10">
            <div class="max-w-container-max mx-auto px-margin-mobile md:px-margin-desktop flex flex-col md:flex-row justify-between items-center gap-unit">
                <div class="mb-8 md:mb-0">
                    <h2 class="font-headline-md text-headline-md text-primary mb-2">Đồng Hồ Tinh Diệu</h2>
                    <p class="font-body-sm text-body-sm text-on-surface-variant/60">© 2024 Đồng Hồ Tinh Diệu. Đẳng cấp thời gian.</p>
                </div>
                <div class="flex flex-wrap justify-center gap-8">
                    <a class="font-body-sm text-body-sm text-on-tertiary-container hover:text-primary transition-colors" href="#">Về chúng tôi</a>
                    <a class="font-body-sm text-body-sm text-on-tertiary-container hover:text-primary transition-colors" href="#">Chính sách bảo hành</a>
                    <a class="font-body-sm text-body-sm text-on-tertiary-container hover:text-primary transition-colors" href="#">Liên hệ</a>
                    <a class="font-body-sm text-body-sm text-on-tertiary-container hover:text-primary transition-colors" href="#">Điều khoản</a>
                </div>
            </div>
        </footer>
        <!-- BottomNavBar (Mobile Only) -->
        <nav class="md:hidden fixed bottom-0 w-full z-50 h-20 bg-surface-container border-t border-outline-variant/20 shadow-[0_-4px_20px_rgba(0,0,0,0.5)] flex justify-around items-center pb-safe">
            <a class="flex flex-col items-center justify-center text-on-surface-variant opacity-60 active:scale-90 transition-transform" href="#">
                <span class="material-symbols-outlined" data-icon="home">home</span>
                <span class="font-label-caps text-[10px] mt-1">Trang chủ</span>
            </a>
            <a class="flex flex-col items-center justify-center text-primary font-bold active:scale-90 transition-transform" href="#">
                <span class="material-symbols-outlined" data-icon="watch" style="font-variation-settings: 'FILL' 1;">watch</span>
                <span class="font-label-caps text-[10px] mt-1">Sản phẩm</span>
            </a>
            <a class="flex flex-col items-center justify-center text-on-surface-variant opacity-60 active:scale-90 transition-transform" href="#">
                <span class="material-symbols-outlined" data-icon="shopping_cart">shopping_cart</span>
                <span class="font-label-caps text-[10px] mt-1">Giỏ hàng</span>
            </a>
            <a class="flex flex-col items-center justify-center text-on-surface-variant opacity-60 active:scale-90 transition-transform" href="#">
                <span class="material-symbols-outlined" data-icon="person">person</span>
                <span class="font-label-caps text-[10px] mt-1">Cá nhân</span>
            </a>
        </nav>
    </body></html>
