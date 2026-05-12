<%-- 
    Document   : ContactUs
    Created on : May 12, 2026, 4:45:46 PM
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
        <!-- Top Navigation Bar (Manual rendering to suppress on Success screen) -->
        <header class="bg-surface/80 backdrop-blur-md text-primary font-headline-md text-headline-md docked full-width top-0 z-50 border-b border-outline-variant/30 flex justify-between items-center px-margin-mobile md:px-margin-desktop py-4 w-full">
            <div class="flex items-center gap-4">
                <span class="material-symbols-outlined cursor-pointer" data-icon="menu">menu</span>
                <span class="font-headline-lg text-headline-lg text-primary tracking-tight">Đồng Hồ Tinh Diệu</span>
            </div>
            <div class="flex items-center gap-6">
                <nav class="hidden md:flex gap-8">
                    <a class="font-label-caps text-label-caps text-on-surface-variant hover:text-primary transition-colors" href="#">Trang chủ</a>
                    <a class="font-label-caps text-label-caps text-on-surface-variant hover:text-primary transition-colors" href="#">Sản phẩm</a>
                    <a class="font-label-caps text-label-caps text-on-surface-variant hover:text-primary transition-colors" href="#">Về chúng tôi</a>
                </nav>
                <span class="material-symbols-outlined cursor-pointer" data-icon="shopping_bag">shopping_bag</span>
            </div>
        </header>
        <main class="pt-24">
            <!-- Success Message Section -->
            <section class="min-h-[530px] flex flex-col items-center justify-center text-center px-margin-mobile py-section-gap bg-surface-container-lowest">
                <div class="w-24 h-24 rounded-full border border-primary flex items-center justify-center mb-8">
                    <span class="material-symbols-outlined text-primary text-5xl" data-icon="check_circle" data-weight="fill" style="font-variation-settings: 'FILL' 1;">check_circle</span>
                </div>
                <h1 class="font-display-lg text-display-lg-mobile md:text-display-lg text-primary mb-4">Đặt hàng thành công!</h1>
                <p class="font-body-lg text-body-lg text-on-surface-variant max-w-2xl mb-2">Cảm ơn quý khách đã tin tưởng lựa chọn tuyệt tác thời gian từ chúng tôi.</p>
                <p class="font-label-caps text-label-caps text-secondary mb-10">Mã đơn hàng: <span class="text-primary">#TD-2024-8899</span></p>
                <a class="bg-primary-container text-on-primary-container font-label-caps text-label-caps px-10 py-4 rounded-none uppercase tracking-widest hover:brightness-110 transition-all active:scale-95" href="#">Tiếp tục mua sắm</a>
            </section>
            <!-- Brand Story Section (About) -->
            <section class="px-margin-mobile md:px-margin-desktop py-section-gap max-w-container-max mx-auto overflow-hidden">
                <div class="grid grid-cols-1 md:grid-cols-2 gap-section-gap items-center">
                    <div class="order-2 md:order-1 relative">
                        <div class="absolute -top-10 -left-10 w-40 h-40 border border-primary/20 -z-10"></div>
                        <img alt="Watch Craftsmanship" class="w-full grayscale hover:grayscale-0 transition-all duration-700 border border-outline-variant/30" data-alt="A macro close-up shot of a master horologist meticulously assembling the internal gears of a luxury mechanical watch. The lighting is dramatic and moody, high-contrast chiaroscuro style, highlighting the golden brass components against a deep black background. The atmosphere is quiet, prestigious, and timeless, capturing the essence of elite craftsmanship in a high-end boutique setting." src="https://lh3.googleusercontent.com/aida-public/AB6AXuCqUm4uwW-KFv5VHtJio48Gu_mCkqrSpWaeHuIlCs9ZkRnBfSyXoLiN31cd0PJWHm6vcq0UJ20Ie3Jib5QM9Ks0GucPOFNEa1l-g0jyL3h9eWTU2K8BUXtCZpGfgqNPjtA4hFzfMG9CdQFhopa1nZivjhJFmZnP7YAzWBOEZ3ubjE9b6iz_C53JroW81noTf3Ds-UVBcGuYgL2hVGVSwzZP_V-P9v3nVdXsdQ66ZdBvPfE0n6CyeNNvi_e3C70WWodDb4WuJZzgz2g"/>
                    </div>
                    <div class="order-1 md:order-2 space-y-8">
                        <h2 class="font-headline-xl text-headline-xl text-primary border-l-4 border-primary pl-6">Câu Chuyện Thương Hiệu</h2>
                        <p class="font-body-md text-body-md text-on-surface-variant leading-relaxed text-justify">
                            Ra đời từ niềm đam mê mãnh liệt với những chuyển động tinh vi của cỗ máy thời gian, <span class="text-primary font-bold">Đồng Hồ Tinh Diệu</span> không chỉ là nơi cung cấp những sản phẩm xa xỉ, mà là nơi lưu giữ những giá trị vĩnh cửu. Chúng tôi tin rằng mỗi chiếc đồng hồ là một tác phẩm nghệ thuật, một người bạn đồng hành chứng kiến từng khoảnh khắc huy hoàng trong cuộc đời quý khách.
                        </p>
                        <div class="grid grid-cols-2 gap-gutter">
                            <div class="p-6 bg-surface-container border border-outline-variant/20">
                                <h3 class="font-label-caps text-label-caps text-primary mb-2">Chính Trực</h3>
                                <p class="font-body-sm text-body-sm text-on-surface-variant">Cam kết 100% sản phẩm chính hãng với đầy đủ chứng nhận quốc tế.</p>
                            </div>
                            <div class="p-6 bg-surface-container border border-outline-variant/20">
                                <h3 class="font-label-caps text-label-caps text-primary mb-2">Tận Tâm</h3>
                                <p class="font-body-sm text-body-sm text-on-surface-variant">Dịch vụ hậu mãi chuẩn thượng lưu, bảo hành trọn đời tâm huyết.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Contact & Map Section -->
            <section class="bg-surface-container-low py-section-gap border-y border-outline-variant/10">
                <div class="px-margin-mobile md:px-margin-desktop max-w-container-max mx-auto">
                    <div class="text-center mb-16">
                        <h2 class="font-headline-xl text-headline-xl text-primary mb-4">Liên Hệ Với Chúng Tôi</h2>
                        <p class="font-body-md text-body-md text-on-surface-variant">Quý khách cần hỗ trợ? Hãy để lại lời nhắn, chuyên viên của chúng tôi sẽ phản hồi trong vòng 24h.</p>
                    </div>
                    <div class="grid grid-cols-1 lg:grid-cols-3 gap-12">
                        <!-- Contact Form -->
                        <div class="lg:col-span-2 space-y-6 bg-surface p-8 md:p-12 border border-outline-variant/20">
                            <form class="space-y-8">
                                <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                                    <div class="space-y-2">
                                        <label class="font-label-caps text-label-caps text-on-surface-variant">Họ và Tên</label>
                                        <input class="w-full bg-transparent border-0 border-b border-outline-variant focus:border-primary focus:ring-0 px-0 py-2 text-on-surface transition-all placeholder:text-surface-variant" placeholder="Nguyễn Văn A" type="text"/>
                                    </div>
                                    <div class="space-y-2">
                                        <label class="font-label-caps text-label-caps text-on-surface-variant">Email</label>
                                        <input class="w-full bg-transparent border-0 border-b border-outline-variant focus:border-primary focus:ring-0 px-0 py-2 text-on-surface transition-all placeholder:text-surface-variant" placeholder="example@email.com" type="email"/>
                                    </div>
                                </div>
                                <div class="space-y-2">
                                    <label class="font-label-caps text-label-caps text-on-surface-variant">Lời nhắn của quý khách</label>
                                    <textarea class="w-full bg-transparent border-0 border-b border-outline-variant focus:border-primary focus:ring-0 px-0 py-2 text-on-surface transition-all placeholder:text-surface-variant" placeholder="Tôi quan tâm đến mẫu đồng hồ..." rows="4"></textarea>
                                </div>
                                <button class="border border-primary text-primary font-label-caps text-label-caps px-12 py-4 hover:bg-primary/10 transition-all uppercase tracking-widest" type="submit">Gửi thông tin</button>
                            </form>
                        </div>
                        <!-- Map Placeholder & Info -->
                        <div class="space-y-8">
                            <div class="h-64 md:h-80 bg-surface-container-highest border border-outline-variant/20 relative overflow-hidden group">
                                <img alt="Showroom Map" class="w-full h-full object-cover opacity-50 group-hover:opacity-70 transition-opacity" data-alt="A stylized, high-contrast dark mode map showing a luxury retail district at night. The map features golden glowing paths and minimalist markers, emphasizing an exclusive boutique location. The visual style is sleek and technological, with a palette of deep charcoals and metallic golds, matching the prestigious horological brand identity." src="https://lh3.googleusercontent.com/aida-public/AB6AXuCKwhwKsJtabtQmtPoVKMik4YdsjCamWEknxhi7OoMkkS-nODkWgk2PivJTHJMimR52Ezn64UYrdGxEl34K41U-5DrH_MqtHGcVzHCs09wf6yS7718jQ6dXhqT8AaP8lFhfaFvc0cc8Iu1n1j8gwhw67PMExLlk8wpOdAQ59HeTNtw8rTYElY5Mna1wdrnhmi-hcSdJUlnEZZPEK42WIHgp1osjur-58miWH4_tzxh4DVJWhFt7jpTldn9YpngQjrq4ZpHbjK_od6E"/>
                                <div class="absolute inset-0 flex items-center justify-center">
                                    <div class="bg-primary p-4 rounded-full shadow-lg">
                                        <span class="material-symbols-outlined text-on-primary-container" data-icon="location_on" data-weight="fill" style="font-variation-settings: 'FILL' 1;">location_on</span>
                                    </div>
                                </div>
                                <div class="absolute bottom-4 left-4 right-4 bg-surface/90 backdrop-blur-sm p-4 border border-outline-variant/30">
                                    <p class="font-label-caps text-label-caps text-primary">Tòa nhà Heritage, Quận 1, TP. HCM</p>
                                </div>
                            </div>
                            <div class="space-y-6 p-6 border-l border-primary/30">
                                <div class="flex gap-4">
                                    <span class="material-symbols-outlined text-primary" data-icon="call">call</span>
                                    <div>
                                        <p class="font-label-caps text-label-caps text-on-surface-variant">Điện thoại</p>
                                        <p class="font-body-md text-body-md">1900 88xx</p>
                                    </div>
                                </div>
                                <div class="flex gap-4">
                                    <span class="material-symbols-outlined text-primary" data-icon="mail">mail</span>
                                    <div>
                                        <p class="font-label-caps text-label-caps text-on-surface-variant">Email</p>
                                        <p class="font-body-md text-body-md">contact@tinhdieu.vn</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        <!-- Footer -->
        <footer class="bg-surface-container-lowest py-section-gap border-t border-outline-variant/10">
            <div class="flex flex-col md:flex-row justify-between items-center px-margin-desktop gap-unit max-w-container-max mx-auto w-full">
                <div class="mb-8 md:mb-0 text-center md:text-left">
                    <h2 class="font-headline-md text-headline-md text-primary mb-2">Đồng Hồ Tinh Diệu</h2>
                    <p class="font-body-sm text-body-sm text-on-surface-variant opacity-60">© 2024 Đồng Hồ Tinh Diệu. Đẳng cấp thời gian.</p>
                </div>
                <div class="flex flex-wrap justify-center gap-8">
                    <a class="font-body-sm text-body-sm text-on-tertiary-container hover:text-primary transition-colors" href="#">Về chúng tôi</a>
                    <a class="font-body-sm text-body-sm text-on-tertiary-container hover:text-primary transition-colors" href="#">Chính sách bảo hành</a>
                    <a class="font-body-sm text-body-sm text-on-tertiary-container hover:text-primary transition-colors" href="#">Liên hệ</a>
                    <a class="font-body-sm text-body-sm text-on-tertiary-container hover:text-primary transition-colors" href="#">Điều khoản</a>
                </div>
            </div>
        </footer>
        <!-- Bottom Navigation Bar (Mobile only) -->
        <nav class="md:hidden fixed bottom-0 w-full z-50 bg-surface-container border-t border-outline-variant/20 shadow-[0_-4px_20px_rgba(0,0,0,0.5)] flex justify-around items-center h-20 pb-safe">
            <div class="flex flex-col items-center justify-center text-on-surface-variant opacity-60 hover:opacity-100 active:scale-90 transition-transform">
                <span class="material-symbols-outlined" data-icon="home">home</span>
                <span class="font-label-caps text-[10px] mt-1">Trang chủ</span>
            </div>
            <div class="flex flex-col items-center justify-center text-on-surface-variant opacity-60 hover:opacity-100 active:scale-90 transition-transform">
                <span class="material-symbols-outlined" data-icon="watch">watch</span>
                <span class="font-label-caps text-[10px] mt-1">Sản phẩm</span>
            </div>
            <div class="flex flex-col items-center justify-center text-on-surface-variant opacity-60 hover:opacity-100 active:scale-90 transition-transform">
                <span class="material-symbols-outlined" data-icon="shopping_cart">shopping_cart</span>
                <span class="font-label-caps text-[10px] mt-1">Giỏ hàng</span>
            </div>
            <div class="flex flex-col items-center justify-center text-primary font-bold active:scale-90 transition-transform">
                <span class="material-symbols-outlined" data-icon="person" data-weight="fill" style="font-variation-settings: 'FILL' 1;">person</span>
                <span class="font-label-caps text-[10px] mt-1">Cá nhân</span>
            </div>
        </nav>
    </body></html>
