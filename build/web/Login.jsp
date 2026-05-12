<%-- 
    Document   : Login.jsp
    Created on : May 12, 2026, 3:49:08 PM
    Author     : dogor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html class="dark" lang="vi"><head>
        <meta charset="utf-8"/>
        <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
        <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&amp;family=Playfair+Display:wght@400;500;600;700&amp;display=swap" rel="stylesheet"/>
        <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap" rel="stylesheet"/>
        <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap" rel="stylesheet"/>
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
                            "body-md": ["16px", {"lineHeight": "26px", "fontWeight": "400"}],
                            "display-lg": ["64px", {"lineHeight": "72px", "letterSpacing": "-0.02em", "fontWeight": "700"}],
                            "body-sm": ["14px", {"lineHeight": "22px", "fontWeight": "400"}],
                            "body-lg": ["18px", {"lineHeight": "30px", "fontWeight": "400"}],
                            "headline-md": ["24px", {"lineHeight": "32px", "fontWeight": "500"}],
                            "headline-lg": ["32px", {"lineHeight": "40px", "fontWeight": "600"}],
                            "label-caps": ["12px", {"lineHeight": "16px", "letterSpacing": "0.1em", "fontWeight": "600"}],
                            "headline-xl": ["48px", {"lineHeight": "56px", "fontWeight": "600"}],
                            "display-lg-mobile": ["40px", {"lineHeight": "48px", "letterSpacing": "-0.01em", "fontWeight": "700"}]
                        }
                    },
                },
            }
        </script>
        <style>
            .material-symbols-outlined {
                font-variation-settings: 'FILL' 0, 'wght' 300, 'GRAD' 0, 'opsz' 24;
            }
            .luxury-shadow {
                box-shadow: 0 20px 50px rgba(0, 0, 0, 0.8), 0 0 15px rgba(212, 175, 55, 0.05);
            }
            .glass-panel {
                background: rgba(20, 20, 20, 0.85);
                backdrop-filter: blur(12px);
                border: 0.5px solid rgba(212, 175, 55, 0.2);
            }
        </style>
        <style>
            body {
                min-height: max(884px, 100dvh);
            }
        </style>
    </head>
    <body class="bg-surface text-on-surface font-body-md overflow-x-hidden selection:bg-primary/30 selection:text-primary">
        <!-- TopAppBar Navigation Shell -->
        <header class="bg-surface/80 backdrop-blur-md text-primary font-headline-md text-headline-md docked full-width top-0 z-50 border-b border-outline-variant/30 flex justify-between items-center px-margin-mobile md:px-margin-desktop py-4 w-full sticky">
            <div class="flex items-center gap-4">
                <button class="material-symbols-outlined hover:text-primary-container transition-colors active:scale-95 duration-200" data-icon="menu">menu</button>
            </div>
            <div class="font-headline-lg text-headline-lg text-primary tracking-tight font-bold">
                Đồng Hồ Tinh Diệu
            </div>
            <div class="flex items-center gap-4">
                <button class="material-symbols-outlined hover:text-primary-container transition-colors active:scale-95 duration-200" data-icon="shopping_bag">shopping_bag</button>
            </div>
        </header>
        <main class="min-h-[calc(100vh-80px)] flex items-center justify-center relative overflow-hidden px-margin-mobile py-20">
            <!-- Background Artistic Element -->
            <div class="absolute inset-0 z-0 opacity-40">
                <img alt="Watch Movement Background" class="w-full h-full object-cover grayscale brightness-[0.2]" data-alt="A macro close-up of a high-end mechanical watch movement with intricate gold gears and shimmering rubies. The lighting is dramatic, high-key against a deep black void, highlighting the polished metallic surfaces and craftsmanship. The atmosphere is one of timeless luxury and technical precision, maintaining a minimalist dark aesthetic with warm gold reflections." src="https://lh3.googleusercontent.com/aida-public/AB6AXuBUJA4_Nlrtt47iKIRrUPqyIkcfcqiCDcvdN-gWMgIT77_oFcO3KhhIOkqOhQtxl7ZTiysP0T4b81WxjwJl23pxq9FMfp9I-qnWoQWlpcuH8Qu-mkKNwAKgZGjoNcqNfTLff6ckKnU3xOXsKEEBuMwTAJJzyUpbDkHVCeKZkeULOV2naXBydvyRyjCiL3CVTl08kGZlqpPZAn_8ZjZp6ttJkN80TpVbrLjcDcc7IZBYRi5ufqvJwlHNx7WfPFSQkiwxMRWgkOB1nKE"/>
                <div class="absolute inset-0 bg-gradient-to-b from-surface via-transparent to-surface"></div>
            </div>
            <div class="container-max w-full flex justify-center z-10">
                <!-- Login Card -->
                <div class="glass-panel w-full max-w-[500px] p-unit md:p-12 luxury-shadow rounded-lg flex flex-col items-center">
                    <div class="text-center mb-10">
                        <h1 class="font-headline-xl text-headline-xl text-primary mb-4">Tuyệt Tác Thời Gian</h1>
                        <p class="font-body-md text-on-surface-variant max-w-[300px] mx-auto opacity-80 uppercase tracking-widest text-xs">Chào mừng quý khách trở lại</p>
                    </div>
                    <c:if test="${not empty errorMessage}">
                        <div class="w-full bg-error/10 border border-error/30 text-error px-4 py-3 rounded mb-6 text-center font-body-sm shadow-[0_0_15px_rgba(255,180,171,0.1)]">
                            ${errorMessage}
                        </div>
                    </c:if>
                    <form action="LoginServlet" method="POST" class="w-full space-y-8">
                        <!-- Username Field -->
                        <div class="group">
                            <label class="block font-label-caps text-label-caps text-on-surface-variant mb-2 transition-colors group-focus-within:text-primary">EMAIL HOẶC TÊN ĐĂNG NHẬP</label>
                            <input class="w-full bg-transparent border-t-0 border-x-0 border-b border-outline-variant focus:border-primary focus:ring-0 px-0 py-3 text-on-surface placeholder:text-outline/40 transition-all font-body-md" name="identifier" placeholder="quanly@tinhdieu.vn" type="text" required/>
                        </div>
                        <!-- Password Field -->
                        <div class="group relative">
                            <label class="block font-label-caps text-label-caps text-on-surface-variant mb-2 transition-colors group-focus-within:text-primary">MẬT KHẨU</label>
                            <div class="relative">
                                <input class="w-full bg-transparent border-t-0 border-x-0 border-b border-outline-variant focus:border-primary focus:ring-0 px-0 py-3 text-on-surface placeholder:text-outline/40 transition-all font-body-md pr-10" name="password" placeholder="••••••••" type="password" required/>
                                <button class="absolute right-0 top-1/2 -translate-y-1/2 material-symbols-outlined text-outline-variant hover:text-primary transition-colors" data-icon="visibility" type="button">visibility</button>
                            </div>
                        </div>
                        <div class="flex items-center justify-between">
                            <label class="flex items-center gap-3 cursor-pointer group">
                                <input class="w-4 h-4 rounded-none bg-surface-container-high border-outline-variant text-primary focus:ring-primary focus:ring-offset-surface bg-transparent transition-all" type="checkbox"/>
                                <span class="font-body-sm text-on-surface-variant group-hover:text-on-surface transition-colors">Ghi nhớ tôi</span>
                            </label>
                            <a class="font-body-sm text-primary hover:underline transition-all" href="#">Quên mật khẩu?</a>
                        </div>
                        <!-- Login Button -->
                        <button class="w-full bg-primary text-on-primary py-4 px-6 font-label-caps text-label-caps font-bold tracking-[0.2em] uppercase hover:bg-primary-fixed-dim hover:shadow-[0_0_20px_rgba(212,175,55,0.4)] transition-all active:scale-95 duration-200">
                            ĐĂNG NHẬP NGAY
                        </button>
                    </form>
                    <div class="w-full flex items-center gap-4 my-8">
                        <div class="flex-grow h-[1px] bg-outline-variant/30"></div>
                        <span class="font-label-caps text-label-caps text-outline text-[10px]">HOẶC TIẾP TỤC VỚI</span>
                        <div class="flex-grow h-[1px] bg-outline-variant/30"></div>
                    </div>
                    <!-- Social Logins -->
                    <div class="flex gap-4 w-full">
                        <button class="flex-1 border border-outline-variant/50 hover:border-primary py-3 flex items-center justify-center gap-3 transition-all hover:bg-primary/5 active:scale-95">
                            <svg class="w-5 h-5" viewbox="0 0 24 24">
                            <path d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z" fill="currentColor"></path>
                            <path d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z" fill="currentColor"></path>
                            <path d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l3.66-2.84z" fill="currentColor"></path>
                            <path d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z" fill="currentColor"></path>
                            </svg>
                            <span class="font-label-caps text-[10px] tracking-wider">GOOGLE</span>
                        </button>
                        <button class="flex-1 border border-outline-variant/50 hover:border-primary py-3 flex items-center justify-center gap-3 transition-all hover:bg-primary/5 active:scale-95">
                            <svg class="w-5 h-5" viewbox="0 0 24 24">
                            <path d="M22 12c0-5.52-4.48-10-10-10S2 6.48 2 12c0 4.84 3.44 8.87 8 9.8V15H8v-3h2V9.5C10 7.57 11.57 6 13.5 6H16v3h-2c-.55 0-1 .45-1 1v2h3l-.5 3H13v6.8c4.56-.93 8-4.96 8-9.8z" fill="currentColor"></path>
                            </svg>
                            <span class="font-label-caps text-[10px] tracking-wider">FACEBOOK</span>
                        </button>
                    </div>
                    <div class="mt-12 text-center">
                        <p class="font-body-sm text-on-surface-variant">Quý khách chưa có tài khoản?</p>
                        <a class="inline-block mt-2 font-label-caps text-primary hover:text-primary-fixed tracking-widest border-b border-primary/30 hover:border-primary transition-all" href="Register.jsp">ĐĂNG KÝ THÀNH VIÊN</a>
                    </div>
                </div>
            </div>
        </main>
        <!-- Footer -->
        <footer class="bg-surface-container-lowest text-on-tertiary-container font-body-sm text-body-sm w-full py-section-gap border-t border-outline-variant/10">
            <div class="flex flex-col md:flex-row justify-between items-center px-margin-desktop gap-unit max-w-container-max mx-auto w-full">
                <div class="flex flex-col items-center md:items-start gap-4 mb-8 md:mb-0">
                    <div class="font-headline-md text-headline-md text-primary font-bold">Đồng Hồ Tinh Diệu</div>
                    <p class="max-w-[300px] text-center md:text-left opacity-60">© 2024 Đồng Hồ Tinh Diệu. Đẳng cấp thời gian. Nâng tầm phong cách thượng lưu.</p>
                </div>
                <div class="flex flex-wrap justify-center gap-x-8 gap-y-4">
                    <a class="text-on-tertiary-container hover:text-primary transition-colors" href="#">Về chúng tôi</a>
                    <a class="text-on-tertiary-container hover:text-primary transition-colors" href="#">Chính sách bảo hành</a>
                    <a class="text-on-tertiary-container hover:text-primary transition-colors" href="#">Liên hệ</a>
                    <a class="text-on-tertiary-container hover:text-primary transition-colors" href="#">Điều khoản</a>
                </div>
            </div>
        </footer>
    </body></html>
