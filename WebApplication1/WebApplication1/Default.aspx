<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
        href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css"
        rel="stylesheet" />
    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <link rel="stylesheet" href="styles.css" />
    <title></title>
    <script>
        const mesajlar = [
            "Yola Titanium Güvencesiyle Çıkın",
            "Hızlı Kiralama, Güvenli Sürüş",
            "Konforlu Yolculuklar Sizi Bekliyor"
        ];

        let mesajIndex = 0;
        let harfIndex = 0;
        let yaziyor = true;

        function yazBaslik() {
            let aktifMesaj = mesajlar[mesajIndex];

            if (yaziyor) {
                document.title = aktifMesaj.substring(0, harfIndex++);
                if (harfIndex > aktifMesaj.length) {
                    yaziyor = false;
                    setTimeout(() => {
                        yaziyor = true;
                    }, 1000);
                }
            } else {
                setTimeout(() => {
                    mesajIndex = (mesajIndex + 1) % mesajlar.length;
                    harfIndex = 0;
                    yaziyor = true;
                }, 1000);
            }
        }

        setInterval(yazBaslik, 170);
    </script>

</head>
<body>
    <header>
        <nav>
            <div class="nav__header">
                <div class="nav__logo">
                    <a href="#" class="logo">
                        <img src="assets/logo1.png" alt="logo" class="logo-white" />
                        <img src="assets/logo1.png" alt="logo" class="logo-dark" />
                        <span>Titanium Rent</span>
                    </a>
                </div>
                <div class="nav__menu__btn" id="menu-btn">
                    <i class="ri-menu-line"></i>
                </div>
            </div>
            <ul class="nav__links" id="nav-links">
                <li><a href="#home">Anasayfa</a></li>
                <li><a href="#about">Hakkımızda</a></li>
                <li><a href="#deals">Kiralık Araçlar</a></li>
                <li><a href="#deals">İletişim</a></li>
                <li><a href="#choose">Neden Biz?</a></li>
                <li><a href="#client">Müşteri Yorumları</a></li>
                <li><a href="#">Üye Girişi</a></li>
            </ul>
            <div class="nav__btns">
                <button class="btn">Üye Girişi</button>
            </div>
        </nav>
        <div class="header__container" id="home">
            <div class="header__image">
                <img src="assets/header.png" alt="header" />
            </div>
            <div class="header__content">
                <h2>👍 %100 Memnuniyet Garantili Araç Kiralama Hizmeti</h2>
                <h1>ARABA KİRALAMANIN HIZLI VE KOLAY YOLU</h1>
                <p class="section__description">
                    Zahmetsiz bir kiralama deneyimi sizi bekliyor. Tarzınıza ve ihtiyaçlarınıza özel, bakımlı ve premium araç seçenekleriyle her yolculuk artık daha keyifli. Hemen şimdi güvenle kiralayın, konforlu sürüşe ilk adımı atın!
                </p>
            </div>
        </div>
    </header>

    <section class="header__form">
        <form action="/">
            <div class="input__group">
                <label for="location">Teslim Alma Lokasyonu</label>
                <input
                    type="text"
                    name="location"
                    id="location"
                    placeholder="İstanbul, Türkiye" />
            </div>
            <div class="input__group">
                <label for="start">Teslim Alma Tarihi</label>
                <input
                    type="text"
                    name="start"
                    id="start"
                    placeholder="16 Ağustos, 10:00" />
            </div>
            <div class="input__group">
                <label for="stop">İade Tarihi</label>
                <input
                    type="text"
                    name="stop"
                    id="stop"
                    placeholder="18 Ağustos, 22:00" />
            </div>
            <button class="btn">Ara <i class="ri-search-line"></i></button>
        </form>
    </section>


    <section class="section__container about__container" id="about">
        <h2 class="section__header">Nasıl Çalışır?</h2>
        <p class="section__description">
            Bizimle araç kiralamak çok kolay! Aracını seç, tarihlerini belirle ve rezervasyonunu tamamla. Geri kalan her şeyi biz hallediyoruz; yolculuğuna sorunsuz bir başlangıç seni bekliyor.
        </p>
        <div class="about__grid">
            <div class="about__card">
                <span><i class="ri-map-pin-2-fill"></i></span>
                <h4>Lokasyon Seçimi</h4>
                <p>
                    İster evine yakın, ister iş yerine ya da havalimanına en uygun teslim alma noktasını seç sana en uygun konumu belirle.
                </p>
            </div>
            <div class="about__card">
                <span><i class="ri-calendar-event-fill"></i></span>
                <h4>Teslim Alma Tarihi</h4>
                <p>
                    Aracını ne zaman teslim almak istiyorsan, tam tarih ve saati seç aracın tam vaktinde hazır olacak.
                </p>
            </div>
            <div class="about__card">
                <span><i class="ri-roadster-fill"></i></span>
                <h4>Aracını Rezerve Et</h4>
                <p>
                    Sadece birkaç tıklamayla rezervasyonunu tamamla, biz de aracını sorunsuz şekilde teslim alman için hazırlayalım.
                </p>
            </div>
        </div>
    </section>

    <section class="deals" id="deals">
        <div class="section__container deals__container">
            <h2 class="section__header">En Popüler Araç Kiralama Fırsatları</h2>
            <p class="section__description">
                Sizin için özenle seçtiğimiz en avantajlı araç kiralama fırsatlarını keşfedin. Favori aracınızı harika fiyatlarla kiralayın, yola keyifle çıkın!
            </p>
            <div class="deals__tabs">
                <button class="btn active" data-id="Ekonomik">Ekonomik</button>
                <button class="btn" data-id="Orta">Orta</button>
                <button class="btn" data-id="Ust">Üst</button>
                <button class="btn" data-id="Luks">Lüks</button>
                <button class="btn" data-id="Minibus">Van</button>
                <button class="btn" data-id="Suv">Suv</button>

            </div>
            <div id="Ekonomik" class="tab__content active">
                <div class="deals__card">
                    <img src="assets/i20.png" alt="deals" />
                    <div class="deals__rating">
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-line"></i></span>
                        <span>(550)</span>
                    </div>
                    <h4>Hyundai i20</h4>
                    <div class="deals__card__grid">
                        <div>
                            <span><i class="ri-group-line"></i></span>5 Kişilik
                        </div>
                        <div>
                            <span><i class="ri-steering-2-line"></i></span>Otomatik
                        </div>
                        <div>
                            <span><i class="ri-speed-up-line"></i></span>500km
                        </div>
                        <div>
                            <span><i class="ri-car-line"></i></span>Benzin
                        </div>
                    </div>
                    <hr />
                    <div class="deals__card__footer">
                        <div class="deals__card__footer__price-wrapper">
                            <h3 class="deals__card__footer__amount">883 TL</h3>
                            <span class="deals__card__footer__note">'den başlayan fiyatlarla</span>
                        </div>
                        <a href="#" class="deals__card__footer__action">Kirala <i class="ri-arrow-right-line"></i>
                        </a>
                    </div>



                </div>
                <div class="deals__card">
                    <img src="assets/egea.png" alt="deals" />
                    <div class="deals__rating">
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-line"></i></span>
                        <span><i class="ri-star-line"></i></span>
                        <span>(320)</span>
                    </div>
                    <h4>Fiat Egea</h4>
                    <div class="deals__card__grid">
                        <div>
                            <span><i class="ri-group-line"></i></span>5 Kişilik
                        </div>
                        <div>
                            <span><i class="ri-steering-2-line"></i></span>Manuel
                        </div>
                        <div>
                            <span><i class="ri-speed-up-line"></i></span>600km
                        </div>
                        <div>
                            <span><i class="ri-car-line"></i></span>Dizel
                        </div>
                    </div>
                    <hr />
                    <div class="deals__card__footer">
                        <div class="deals__card__footer__price-wrapper">
                            <h3 class="deals__card__footer__amount">749 TL</h3>
                            <span class="deals__card__footer__note">'den başlayan fiyatlarla</span>
                        </div>
                        <a href="#" class="deals__card__footer__action">Kirala <i class="ri-arrow-right-line"></i>
                        </a>
                    </div>


                </div>

                <div class="deals__card">
                    <img src="assets/clio.png" alt="deals" />
                    <div class="deals__rating">
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-line"></i></span>
                        <span><i class="ri-star-line"></i></span>
                        <span><i class="ri-star-line"></i></span>
                        <span>(420)</span>
                    </div>
                    <h4>Renault Clio</h4>
                    <div class="deals__card__grid">
                        <div>
                            <span><i class="ri-group-line"></i></span>5 Kişilik
                        </div>
                        <div>
                            <span><i class="ri-steering-2-line"></i></span>Manuel
                        </div>
                        <div>
                            <span><i class="ri-speed-up-line"></i></span>550km
                        </div>
                        <div>
                            <span><i class="ri-car-line"></i></span>Benzin
                        </div>
                    </div>
                    <hr />
                    <div class="deals__card__footer">
                        <div class="deals__card__footer__price-wrapper">
                            <h3 class="deals__card__footer__amount">799 TL</h3>
                            <span class="deals__card__footer__note">'den başlayan fiyatlarla</span>
                        </div>
                        <a href="#" class="deals__card__footer__action">Kirala <i class="ri-arrow-right-line"></i>
                        </a>
                    </div>


                </div>

            </div>
            <div id="Orta" class="tab__content">
                <div class="deals__card">
                    <img src="assets/megan.png" alt="deals" />
                    <div class="deals__rating">
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-line"></i></span>
                        <span>(540)</span>
                    </div>
                    <h4>Renault Megane</h4>
                    <div class="deals__card__grid">
                        <div>
                            <span><i class="ri-group-line"></i></span>5 Kişilik
                        </div>
                        <div>
                            <span><i class="ri-steering-2-line"></i></span>Otomatik
                        </div>
                        <div>
                            <span><i class="ri-speed-up-line"></i></span>650km
                        </div>
                        <div>
                            <span><i class="ri-car-line"></i></span>Dizel
                        </div>
                    </div>
                    <hr />
                    <div class="deals__card__footer">
                        <div class="deals__card__footer__price-wrapper">
                            <h3 class="deals__card__footer__amount">999 TL</h3>
                            <span class="deals__card__footer__note">'den başlayan fiyatlarla</span>
                        </div>
                        <a href="#" class="deals__card__footer__action">Kirala <i class="ri-arrow-right-line"></i>
                        </a>
                    </div>
                </div>

                <div class="deals__card">
                    <img src="assets/corolla.png" alt="deals" />
                    <div class="deals__rating">
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-line"></i></span>
                        <span><i class="ri-star-line"></i></span>
                        <span>(600)</span>
                    </div>
                    <h4>Toyota Corolla</h4>
                    <div class="deals__card__grid">
                        <div>
                            <span><i class="ri-group-line"></i></span>5 Kişilik
                        </div>
                        <div>
                            <span><i class="ri-steering-2-line"></i></span>Otomatik
                        </div>
                        <div>
                            <span><i class="ri-speed-up-line"></i></span>700km
                        </div>
                        <div>
                            <span><i class="ri-car-line"></i></span>Benzin
                        </div>
                    </div>
                    <hr />
                    <div class="deals__card__footer">
                        <div class="deals__card__footer__price-wrapper">
                            <h3 class="deals__card__footer__amount">1,099 TL</h3>
                            <span class="deals__card__footer__note">'den başlayan fiyatlarla</span>
                        </div>
                        <a href="#" class="deals__card__footer__action">Kirala <i class="ri-arrow-right-line"></i>
                        </a>
                    </div>
                </div>

                <div class="deals__card">
                    <img src="assets/puma.png" alt="deals" />
                    <div class="deals__rating">
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-line"></i></span>
                        <span><i class="ri-star-line"></i></span>
                        <span>(450)</span>
                    </div>
                    <h4>Ford Puma</h4>
                    <div class="deals__card__grid">
                        <div>
                            <span><i class="ri-group-line"></i></span>5 Kişilik
                        </div>
                        <div>
                            <span><i class="ri-steering-2-line"></i></span>Otomatik
                        </div>
                        <div>
                            <span><i class="ri-speed-up-line"></i></span>600km
                        </div>
                        <div>
                            <span><i class="ri-car-line"></i></span>Benzin
                        </div>
                    </div>
                    <hr />
                    <div class="deals__card__footer">
                        <div class="deals__card__footer__price-wrapper">
                            <h3 class="deals__card__footer__amount">1,049 TL</h3>
                            <span class="deals__card__footer__note">'den başlayan fiyatlarla</span>
                        </div>
                        <a href="#" class="deals__card__footer__action">Kirala <i class="ri-arrow-right-line"></i>
                        </a>
                    </div>
                </div>

            </div>
            <div id="Ust" class="tab__content">
                <div class="deals__card">
                    <img src="assets/kuga.png" alt="deals" />
                    <div class="deals__rating">
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-line"></i></span>
                        <span>(720)</span>
                    </div>
                    <h4>Ford Kuga</h4>
                    <div class="deals__card__grid">
                        <div>
                            <span><i class="ri-group-line"></i></span>5 Kişilik
                        </div>
                        <div>
                            <span><i class="ri-steering-2-line"></i></span>Otomatik
                        </div>
                        <div>
                            <span><i class="ri-speed-up-line"></i></span>800km
                        </div>
                        <div>
                            <span><i class="ri-car-line"></i></span>Dizel
                        </div>
                    </div>
                    <hr />
                    <div class="deals__card__footer">
                        <div class="deals__card__footer__price-wrapper">
                            <h3 class="deals__card__footer__amount">1,499 TL</h3>
                            <span class="deals__card__footer__note">'den başlayan fiyatlarla</span>
                        </div>
                        <a href="#" class="deals__card__footer__action">Kirala <i class="ri-arrow-right-line"></i>
                        </a>
                    </div>
                </div>

                <div class="deals__card">
                    <img src="assets/passat.png" alt="deals" />
                    <div class="deals__rating">
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-line"></i></span>
                        <span>(850)</span>
                    </div>
                    <h4>Volkswagen Passat Variant</h4>
                    <div class="deals__card__grid">
                        <div>
                            <span><i class="ri-group-line"></i></span>5 Kişilik
                        </div>
                        <div>
                            <span><i class="ri-steering-2-line"></i></span>Otomatik
                        </div>
                        <div>
                            <span><i class="ri-speed-up-line"></i></span>750km
                        </div>
                        <div>
                            <span><i class="ri-car-line"></i></span>Benzin
                        </div>
                    </div>
                    <hr />
                    <div class="deals__card__footer">
                        <div class="deals__card__footer__price-wrapper">
                            <h3 class="deals__card__footer__amount">1,799 TL</h3>
                            <span class="deals__card__footer__note">'den başlayan fiyatlarla</span>
                        </div>
                        <a href="#" class="deals__card__footer__action">Kirala <i class="ri-arrow-right-line"></i>
                        </a>
                    </div>
                </div>

                <div class="deals__card">
                    <img src="assets/superb.png" alt="deals" />
                    <div class="deals__rating">
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-line"></i></span>
                        <span>(670)</span>
                    </div>
                    <h4>Skoda Superb</h4>
                    <div class="deals__card__grid">
                        <div>
                            <span><i class="ri-group-line"></i></span>5 Kişilik
                        </div>
                        <div>
                            <span><i class="ri-steering-2-line"></i></span>Otomatik
                        </div>
                        <div>
                            <span><i class="ri-speed-up-line"></i></span>780km
                        </div>
                        <div>
                            <span><i class="ri-car-line"></i></span>Dizel
                        </div>
                    </div>
                    <hr />
                    <div class="deals__card__footer">
                        <div class="deals__card__footer__price-wrapper">
                            <h3 class="deals__card__footer__amount">1,649 TL</h3>
                            <span class="deals__card__footer__note">'den başlayan fiyatlarla</span>
                        </div>
                        <a href="#" class="deals__card__footer__action">Kirala <i class="ri-arrow-right-line"></i>
                        </a>
                    </div>
                </div>

            </div>
            <div id="Luks" class="tab__content">
                <div class="deals__card">
                    <img src="assets/volvo.png" alt="deals" />
                    <div class="deals__rating">
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span>(1,200)</span>
                    </div>
                    <h4>Volvo S60</h4>
                    <div class="deals__card__grid">
                        <div>
                            <span><i class="ri-group-line"></i></span>5 Kişilik
                        </div>
                        <div>
                            <span><i class="ri-steering-2-line"></i></span>Otomatik
                        </div>
                        <div>
                            <span><i class="ri-speed-up-line"></i></span>900km
                        </div>
                        <div>
                            <span><i class="ri-car-line"></i></span>Benzin
                        </div>
                    </div>
                    <hr />
                    <div class="deals__card__footer">
                        <div class="deals__card__footer__price-wrapper">
                            <h3 class="deals__card__footer__amount">2,499 TL</h3>
                            <span class="deals__card__footer__note">'den başlayan fiyatlarla</span>
                        </div>
                        <a href="#" class="deals__card__footer__action">Kirala <i class="ri-arrow-right-line"></i>
                        </a>
                    </div>
                </div>

                <div class="deals__card">
                    <img src="assets/lexus.png" alt="deals" />
                    <div class="deals__rating">
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span>(1,100)</span>
                    </div>
                    <h4>Lexus ES</h4>
                    <div class="deals__card__grid">
                        <div>
                            <span><i class="ri-group-line"></i></span>5 Kişilik
                        </div>
                        <div>
                            <span><i class="ri-steering-2-line"></i></span>Otomatik
                        </div>
                        <div>
                            <span><i class="ri-speed-up-line"></i></span>850km
                        </div>
                        <div>
                            <span><i class="ri-car-line"></i></span>Benzin
                        </div>
                    </div>
                    <hr />
                    <div class="deals__card__footer">
                        <div class="deals__card__footer__price-wrapper">
                            <h3 class="deals__card__footer__amount">2,699 TL</h3>
                            <span class="deals__card__footer__note">'den başlayan fiyatlarla</span>
                        </div>
                        <a href="#" class="deals__card__footer__action">Kirala <i class="ri-arrow-right-line"></i>
                        </a>
                    </div>
                </div>

                <div class="deals__card">
                    <img src="assets/a6.png" alt="deals" />
                    <div class="deals__rating">
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span>(950)</span>
                    </div>
                    <h4>Audi A6</h4>
                    <div class="deals__card__grid">
                        <div>
                            <span><i class="ri-group-line"></i></span>5 Kişilik
                        </div>
                        <div>
                            <span><i class="ri-steering-2-line"></i></span>Otomatik
                        </div>
                        <div>
                            <span><i class="ri-speed-up-line"></i></span>800km
                        </div>
                        <div>
                            <span><i class="ri-car-line"></i></span>Benzin
                        </div>
                    </div>
                    <hr />
                    <div class="deals__card__footer">
                        <div class="deals__card__footer__price-wrapper">
                            <h3 class="deals__card__footer__amount">2,899 TL</h3>
                            <span class="deals__card__footer__note">'den başlayan fiyatlarla</span>
                        </div>
                        <a href="#" class="deals__card__footer__action">Kirala <i class="ri-arrow-right-line"></i>
                        </a>
                    </div>
                </div>

            </div>
            <div id="Minibus" class="tab__content">
                <div class="deals__card">
                    <img src="assets/ulyse.png" alt="deals" />
                    <div class="deals__rating">
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-line"></i></span>
                        <span><i class="ri-star-line"></i></span>
                        <span>(400)</span>
                    </div>
                    <h4>Fiat Ulysee</h4>
                    <div class="deals__card__grid">
                        <div>
                            <span><i class="ri-group-line"></i></span>9 Kişilik
                        </div>
                        <div>
                            <span><i class="ri-steering-2-line"></i></span>Otomatik
                        </div>
                        <div>
                            <span><i class="ri-speed-up-line"></i></span>600km
                        </div>
                        <div>
                            <span><i class="ri-car-line"></i></span>Benzin
                        </div>
                    </div>
                    <hr />
                    <div class="deals__card__footer">
                        <div class="deals__card__footer__price-wrapper">
                            <h3 class="deals__card__footer__amount">1,199 TL</h3>
                            <span class="deals__card__footer__note">'den başlayan fiyatlarla</span>
                        </div>
                        <a href="#" class="deals__card__footer__action">Kirala <i class="ri-arrow-right-line"></i>
                        </a>
                    </div>
                </div>

                <div class="deals__card">
                    <img src="assets/staria.png" alt="deals" />
                    <div class="deals__rating">
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-line"></i></span>
                        <span><i class="ri-star-line"></i></span>
                        <span>(350)</span>
                    </div>
                    <h4>Hyundai Staria</h4>
                    <div class="deals__card__grid">
                        <div>
                            <span><i class="ri-group-line"></i></span>9 Kişilik
                        </div>
                        <div>
                            <span><i class="ri-steering-2-line"></i></span>Otomatik
                        </div>
                        <div>
                            <span><i class="ri-speed-up-line"></i></span>650km
                        </div>
                        <div>
                            <span><i class="ri-car-line"></i></span>Dizel
                        </div>
                    </div>
                    <hr />
                    <div class="deals__card__footer">
                        <div class="deals__card__footer__price-wrapper">
                            <h3 class="deals__card__footer__amount">1,099 TL</h3>
                            <span class="deals__card__footer__note">'den başlayan fiyatlarla</span>
                        </div>
                        <a href="#" class="deals__card__footer__action">Kirala <i class="ri-arrow-right-line"></i>
                        </a>
                    </div>
                </div>

                <div class="deals__card">
                    <img src="assets/vito.png" alt="deals" />
                    <div class="deals__rating">
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-line"></i></span>
                        <span><i class="ri-star-line"></i></span>
                        <span>(320)</span>
                    </div>
                    <h4>Mercedes Vito</h4>
                    <div class="deals__card__grid">
                        <div>
                            <span><i class="ri-group-line"></i></span>9 Kişilik
                        </div>
                        <div>
                            <span><i class="ri-steering-2-line"></i></span>Otomatik
                        </div>
                        <div>
                            <span><i class="ri-speed-up-line"></i></span>700km
                        </div>
                        <div>
                            <span><i class="ri-car-line"></i></span>Benzin
                        </div>
                    </div>
                    <hr />
                    <div class="deals__card__footer">
                        <div class="deals__card__footer__price-wrapper">
                            <h3 class="deals__card__footer__amount">1,249 TL</h3>
                            <span class="deals__card__footer__note">'den başlayan fiyatlarla</span>
                        </div>
                        <a href="#" class="deals__card__footer__action">Kirala <i class="ri-arrow-right-line"></i>
                        </a>
                    </div>
                </div>


            </div>
            <div id="Suv" class="tab__content">
                <div class="deals__card">
                    <img src="assets/cross.png" alt="deals" />
                    <div class="deals__rating">
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-line"></i></span>
                        <span><i class="ri-star-line"></i></span>
                        <span>(500)</span>
                    </div>
                    <h4>Fiat Egea Crocs</h4>
                    <div class="deals__card__grid">
                        <div>
                            <span><i class="ri-group-line"></i></span>5 Kişilik
                        </div>
                        <div>
                            <span><i class="ri-steering-2-line"></i></span>Otomatik
                        </div>
                        <div>
                            <span><i class="ri-speed-up-line"></i></span>550km
                        </div>
                        <div>
                            <span><i class="ri-car-line"></i></span>Benzin
                        </div>
                    </div>
                    <hr />
                    <div class="deals__card__footer">
                        <div class="deals__card__footer__price-wrapper">
                            <h3 class="deals__card__footer__amount">1,399 TL</h3>
                            <span class="deals__card__footer__note">'den başlayan fiyatlarla</span>
                        </div>
                        <a href="#" class="deals__card__footer__action">Kirala <i class="ri-arrow-right-line"></i>
                        </a>
                    </div>
                </div>

                <div class="deals__card">
                    <img src="assets/mg.png" alt="deals" />
                    <div class="deals__rating">
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-line"></i></span>
                        <span><i class="ri-star-line"></i></span>
                        <span>(650)</span>
                    </div>
                    <h4>MG HS</h4>
                    <div class="deals__card__grid">
                        <div>
                            <span><i class="ri-group-line"></i></span>5 Kişilik
                        </div>
                        <div>
                            <span><i class="ri-steering-2-line"></i></span>Otomatik
                        </div>
                        <div>
                            <span><i class="ri-speed-up-line"></i></span>600km
                        </div>
                        <div>
                            <span><i class="ri-car-line"></i></span>Dizel
                        </div>
                    </div>
                    <hr />
                    <div class="deals__card__footer">
                        <div class="deals__card__footer__price-wrapper">
                            <h3 class="deals__card__footer__amount">1,499 TL</h3>
                            <span class="deals__card__footer__note">'den başlayan fiyatlarla</span>
                        </div>
                        <a href="#" class="deals__card__footer__action">Kirala <i class="ri-arrow-right-line"></i>
                        </a>
                    </div>
                </div>

                <div class="deals__card">
                    <img src="assets/bayon.png" alt="deals" />
                    <div class="deals__rating">
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-fill"></i></span>
                        <span><i class="ri-star-line"></i></span>
                        <span><i class="ri-star-line"></i></span>
                        <span>(720)</span>
                    </div>
                    <h4>Hyundai Bayon</h4>
                    <div class="deals__card__grid">
                        <div>
                            <span><i class="ri-group-line"></i></span>5 Kişilik
                        </div>
                        <div>
                            <span><i class="ri-steering-2-line"></i></span>Otomatik
                        </div>
                        <div>
                            <span><i class="ri-speed-up-line"></i></span>700km
                        </div>
                        <div>
                            <span><i class="ri-car-line"></i></span>Benzin
                        </div>
                    </div>
                    <hr />
                    <div class="deals__card__footer">
                        <div class="deals__card__footer__price-wrapper">
                            <h3 class="deals__card__footer__amount">1,599 TL</h3>
                            <span class="deals__card__footer__note">'den başlayan fiyatlarla</span>
                        </div>
                        <a href="#" class="deals__card__footer__action">Kirala <i class="ri-arrow-right-line"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="choose__container" id="choose">
        <div class="choose__image">
            <img src="assets/choose.png" alt="neden bizi seçmelisiniz" />
        </div>
        <div class="choose__content">
            <h2 class="section__header">Neden Bizi Tercih Etmelisiniz?</h2>
            <p class="section__description">
                Araç kiralama deneyiminizi farklı bir seviyeye taşıyoruz. Güvenilir araçlarımız, üstün müşteri hizmetimiz ve rekabetçi fiyatlarımızla sorunsuz bir deneyim sunuyoruz.
            </p>
            <div class="choose__grid">
                <div class="choose__card">
                    <span><i class="ri-customer-service-line"></i></span>
                    <div>
                        <h4>7/24 Destek</h4>
                        <p>Uzman destek ekibimiz size günün her saati yardımcı olmaya hazır.</p>
                    </div>
                </div>
                <div class="choose__card">
                    <span><i class="ri-map-pin-line"></i></span>
                    <div>
                        <h4>Geniş Lokasyon Ağı</h4>
                        <p>Ev, iş yeri veya havalimanına yakın teslim alma ve iade noktaları.</p>
                    </div>
                </div>
                <div class="choose__card">
                    <span><i class="ri-wallet-line"></i></span>
                    <div>
                        <h4>En Uygun Fiyatlar</h4>
                        <p>Her kiralamada rekabetçi fiyatlar ve yüksek memnuniyet.</p>
                    </div>
                </div>
                <div class="choose__card">
                    <span><i class="ri-user-star-line"></i></span>
                    <div>
                        <h4>Profesyonel Sürücüler</h4>
                        <p>İsteğe bağlı deneyimli sürücü desteğiyle güvenli sürüş keyfi.</p>
                    </div>
                </div>
                <div class="choose__card">
                    <span><i class="ri-verified-badge-line"></i></span>
                    <div>
                        <h4>Onaylı Marka Araçlar</h4>
                        <p>Güvenilir ve bakımlı araç markaları arasından seçim yapın.</p>
                    </div>
                </div>
                <div class="choose__card">
                    <span><i class="ri-calendar-close-line"></i></span>
                    <div>
                        <h4>Ücretsiz İptal</h4>
                        <p>Esnek rezervasyon imkânı ve ücretsiz iptal seçeneği.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="subscribe__container">
        <div class="subscribe__image">
            <img src="assets/subscribe.png" alt="abonelik" />
        </div>
        <div class="subscribe__content">
            <h2 class="section__header">Son Araç Kiralama Kampanyalarından Haberdar Olun</h2>
            <p class="section__description">
                En yeni kampanyalar, özel teklifler ve filomuza eklenen araçlarla ilgili güncellemeleri kaçırmayın! Abone olun, fırsatlar e-posta kutunuza gelsin.
            </p>
            <form action="/">
                <input type="text" placeholder="E-posta adresiniz" />
                <button class="btn">Abone Ol</button>
            </form>
        </div>
    </section>


    <section class="section__container client__container" id="client">
        <h2 class="section__header">Müşterilerimiz Ne Diyor?</h2>
        <p class="section__description">
            Neden müşterilerimiz bizi tercih ediyor? Gerçek kullanıcı yorumlarını okuyun ve sunduğumuz hizmetin farkını keşfedin.
        </p>
        <div class="swiper">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="client__card">
                        <div class="client__details">
                            <img src="assets/client-1.jpg" alt="müşteri" />
                            <div>
                                <h4>Ayşe Yılmaz</h4>
                                <div class="client__rating">
                                    <span><i class="ri-star-fill"></i></span>
                                    <span><i class="ri-star-fill"></i></span>
                                    <span><i class="ri-star-fill"></i></span>
                                    <span><i class="ri-star-fill"></i></span>
                                    <span><i class="ri-star-line"></i></span>
                                </div>
                            </div>
                        </div>
                        <p>
                            Bu hizmetten araç kiralamak harika bir deneyimdi. Rezervasyon süreci hızlı ve kolaydı, araç ise mükemmel durumdaydı. Kesinlikle tavsiye ederim!
                        </p>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="client__card">
                        <div class="client__details">
                            <img src="assets/client-2.jpg" alt="müşteri" />
                            <div>
                                <h4>Mehmet Demir</h4>
                                <div class="client__rating">
                                    <span><i class="ri-star-fill"></i></span>
                                    <span><i class="ri-star-fill"></i></span>
                                    <span><i class="ri-star-fill"></i></span>
                                    <span><i class="ri-star-fill"></i></span>
                                    <span><i class="ri-star-line"></i></span>
                                </div>
                            </div>
                        </div>
                        <p>
                            Müşteri hizmetleri harikaydı! Tüm sorularıma yanıt verdiler ve rezervasyon konusunda kendimi güvende hissettim. Tekrar tercih edeceğim.
                        </p>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="client__card">
                        <div class="client__details">
                            <img src="assets/client-3.jpg" alt="müşteri" />
                            <div>
                                <h4>Elif Kaya</h4>
                                <div class="client__rating">
                                    <span><i class="ri-star-fill"></i></span>
                                    <span><i class="ri-star-fill"></i></span>
                                    <span><i class="ri-star-fill"></i></span>
                                    <span><i class="ri-star-fill"></i></span>
                                    <span><i class="ri-star-line"></i></span>
                                </div>
                            </div>
                        </div>
                        <p>
                            Uygun fiyatlar ve geniş araç seçenekleriyle tam aradığım aracı buldum. Teslim alma ve iade süreci çok kolaydı. Çok memnun kaldım!
                        </p>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="client__card">
                        <div class="client__details">
                            <img src="assets/client-4.jpg" alt="müşteri" />
                            <div>
                                <h4>Can Yücel</h4>
                                <div class="client__rating">
                                    <span><i class="ri-star-fill"></i></span>
                                    <span><i class="ri-star-fill"></i></span>
                                    <span><i class="ri-star-fill"></i></span>
                                    <span><i class="ri-star-fill"></i></span>
                                    <span><i class="ri-star-line"></i></span>
                                </div>
                            </div>
                        </div>
                        <p>
                            Ücretsiz iptal seçeneği seyahatimi çok daha rahat hale getirdi. Planlarımı değiştirdim ama rezervasyonu güncellemek hiç sorun olmadı.
                        </p>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="client__card">
                        <div class="client__details">
                            <img src="assets/client-5.jpg" alt="müşteri" />
                            <div>
                                <h4>Ahmet Öztürk</h4>
                                <div class="client__rating">
                                    <span><i class="ri-star-fill"></i></span>
                                    <span><i class="ri-star-fill"></i></span>
                                    <span><i class="ri-star-fill"></i></span>
                                    <span><i class="ri-star-fill"></i></span>
                                    <span><i class="ri-star-line"></i></span>
                                </div>
                            </div>
                        </div>
                        <p>
                            Kiraladığım araç birinci sınıftı ve sürücü gerçekten deneyimliydi. Yolculuğum çok daha keyifli geçti. Bir sonraki seyahatimde de buradan kiralayacağım!
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <footer class="footer">
        <div class="section__container footer__container">
            <div class="footer__col">
                <div class="footer__logo">
                    <a href="#" class="logo">
                        <img src="assets/logo1.png" alt="logo" />
                        <span>Titanium Rent</span>
                    </a>
                </div>
                <p>
                    Size en iyi araçları ve sorunsuz bir kiralama deneyimi sunmak için buradayız.
                Kampanyalar, özel teklifler ve daha fazlası için bizi takipte kalın.
                Güvenle yola çıkın!
                </p>
                <ul class="footer__socials">
                    <li>
                        <a href="#"><i class="ri-facebook-fill"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="ri-twitter-fill"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="ri-linkedin-fill"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="ri-instagram-line"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="ri-youtube-fill"></i></a>
                    </li>
                </ul>
            </div>
            <div class="footer__col">
                <h4>Hizmetlerimiz</h4>
                <ul class="footer__links">
                    <li><a href="#home">Anasayfa</a></li>
                    <li><a href="#about">Hakkımızda</a></li>
                    <li><a href="#deals">Kiralama Fırsatları</a></li>
                    <li><a href="#choose">Neden Biz?</a></li>
                    <li><a href="#client">Müşteri Yorumları</a></li>
                </ul>
            </div>
            <div class="footer__col">
                <h4>Araç Modelleri</h4>
                <ul class="footer__links">
                    <li><a href="#">Toyota Corolla</a></li>
                    <li><a href="#">Toyota Noah</a></li>
                    <li><a href="#">Toyota Allion</a></li>
                    <li><a href="#">Toyota Premio</a></li>
                    <li><a href="#">Mitsubishi Pajero</a></li>
                </ul>
            </div>
            <div class="footer__col">
                <h4>İletişim</h4>
                <ul class="footer__links">
                    <li>
                        <a href="#">
                            <span><i class="ri-phone-fill"></i></span>+90 532 000 0000
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span><i class="ri-map-pin-fill"></i></span>İstanbul, Türkiye
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span><i class="ri-mail-fill"></i></span>info@titaniumrent.com
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="footer__bar">
            Copyright © 2024 Titanium Rent. Tüm hakları saklıdır.
        </div>
    </footer>


    <script src="https://unpkg.com/scrollreveal"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <script src="main.js"></script>
</body>
</html>

