import 'package:flutter_ecommerce_app/src/model/category.dart';
import 'package:flutter_ecommerce_app/src/model/product.dart';

class AppData {
  static List<List> productList = [ productListClothes, productListElectronics , productListAccessories ];

  static List<Product> productListClothes = [
    Product(
      id: 1,
      name: 'Nike Air Max 200',
      price: 240.00,
      isSelected: true,
      isliked: false,
      image: 'assets/shooe_tilt_1.png',
      category: "Trending Now",
      describtion:
      'Clean lines, versatile and timeless—the people shoe returns with the Nike Air Max 90. Featuring the same iconic Waffle sole, stitched overlays and classic TPU accents you come to love, it lets you walk among the pantheon of Air. ßNothing as fly, nothing as comfortable, nothing as proven. The Nike Air Max 90 stays true to its OG running roots with the iconic Waffle sole, stitched overlays and classic TPU details. Classic colours celebrate your fresh look while Max Air cushioning adds comfort to the journey.',
    ),
    Product(
        id: 2,
        name: 'Nike Air Max 97',
        price: 220.00,
        isliked: false,
        image: 'assets/shoe_tilt_2.png',
        category: "Trending Now",
        describtion:
        'Clean lines, versatile and timeless—the people shoe returns with the Nike Air Max 97. Featuring the same iconic Waffle sole, stitched overlays and classic TPU accents you come to love, it lets you walk among the pantheon of Air. ßNothing as fly, nothing as comfortable, nothing as proven. The Nike Air Max 90 stays true to its OG running roots with the iconic Waffle sole, stitched overlays and classic TPU details. Classic colours celebrate your fresh look while Max Air cushioning adds comfort to the journey.'),
    Product(
        id: 3,
        name: "Baby Coat",
        price: 500.00,
        isliked: false,
        image: 'assets/j1.png',
        category: "Trending Now",
        describtion:
        'Jacket: 55% Cotton, 45% Polyester; Lining: 100% Polyester , Imported ,Zipper ,closure Machine ,Wash Hooded with 3D ears ,Full zip design ,Soft and cozy faux sherpa lined'),
    Product(
      id: 4,
      name: "Boy's winter jacket",
      price: 730.00,
      isliked: false,
      image: 'assets/j2.png',
      category: "Normal",
      describtion:
      "Occasion: An essential boy' s winter outdoor & travelling jacket,ideal outfits for winter indoor and outdoor activities,such as skiing, snowboarding, skating, camping, hiking, traveling with family,or football & PE class in school. Warm & Durable Snow Jacket: The outer layer fabric is very durable & wear resistant, and the inner soft fleece lining is thick enough to keep kids warm and comfortable during the cold winter yet breathable and lightweight to wear. Also the stitching is reinforced,solid enough to wear for years.",
    ),
    Product(
      id: 5,
      name: "Chemise's Kids",
      price: 470.00,
      isliked: false,
      image: 'assets/j3.png',
      category: "Normal",
      describtion:
      "95% Polyester, 5% Spandex Imported Button closure Machine Wash Comfortable Material：Produced By Soft Polyester Fabric.No fading. No shrink. Cooling Tech：Hawaiian Shirt with Soft & Coolness Fabric, helping Sweat Evaporates Faster. Fashionable Design：Regular fit, short sleeve hawaiian-print shirt, all over printing, turn down collar, lightweight and quick dry.",
    ),
    Product(
      id: 6,
      name: "T-Shirt's Kids",
      price: 463.00,
      isliked: false,
      image: 'assets/j4.png',
      category: "Normal",
      describtion:
      "100% Cotton Imported Button closure Machine Wash Regular fit through the chest for a relaxed, unrestricted fit with a printed neck label to maximize comfort A classic cut and soft cotton fabric make this polo a go-to for the office or the weekend Short-sleeve polo shirt in breathable, soft pique waffle knit Everyday made better: we listen to customer feedback and fine-tune every detail to ensure quality, fit, and comfort",
    ),
    Product(
      id: 7,
      name: "Baby's Dress",
      price: 1366.00,
      isliked: false,
      image: 'assets/j5.png',
      category: "Normal",
      describtion:
      "Beautiful Baby Dress – This baby dress is a Stylish vintage floral tutu ruffle dress. This toddler dress Is the best dress for your newborn baby or toddler girl, cute baby dress for baby or toddler Best Baby Ruffle Dress – This ruffle dress is the perfect dress for your baby or toddler girl for photo shoot or 1st birthday photos, family photoshoot",
    ),
    Product(
      id: 8,
      name: "Boy's pants",
      price: 456.00,
      isliked: false,
      image: 'assets/j6.png',
      category: "Normal",
      describtion:
      "60% Cotton, 40% Polyester Imported Drawstring closure Machine Wash These stylish and comfortable fleece jogger sweatpants are adventure-ready and great for everyday activities",
    ),
    Product(
      id: 9,
      name: "Men's T-shirt",
      price: 999.00,
      isliked: false,
      image: 'assets/j7.png',
      category: "Normal",
      describtion:
      "100% Cotton 100% Cotton High Quality: Anti-odor, Made in Vietnam. Comfortable & Breathable: Sweat wicking material. Perfect for everyday wear, sports, work, holiday, and more. Great for layering as undershirt or on its own.",
    ),
    Product(
      id: 10,
      name: "Girl's cap",
      price: 999.00,
      isliked: false,
      image: 'assets/j8.png',
      category: "Normal",
      describtion:
      "100% Cotton ■ The Hat Depot KIDS WASHED LOW PROFILE COTTON AND DENIM PLAIN BASEBALL CAP - This adorable and classic cap is perfect cap for anywhere your kids go. This cap combines both colorful styles to turn your head and comfort for your all-day wear. You can use it for your kids usual day-to-day activities. A Must Have Item!",
    ),
    Product(
      id: 11,
      name: "Men's Cap",
      price: 347.00,
      isliked: false,
      image: 'assets/j9.png',
      category: "Normal",
      describtion:
      "84% Polyester, 16% Elastane Imported Pull On closure Machine Wash UA Classic Fit features a pre-curved visor & structured front panels that maintain shape with a low profile fit Front panel backed with foam padding for added comfort UA Microthread fabric uses re-engineered fibers designed to give superior stretch & breathability Built-in HeatGear sweatband wicks away sweat to keep you cool & dry Stretch construction provides a comfortable fit",
    ),
    Product(
      id: 12,
      name: "Women's Scarf",
      price: 248.00,
      isliked: false,
      image: 'assets/j10.png',
      category: "Normal",
      describtion:
      "80% Viscose, 20% Cotton Imported No Closure closure Hand Wash Material： Blend of fine viscose and cotton, soft and cozy texture, has a subtle sheen. This winter wrap drapes nicely and is suitable for all skin tones. Size: 78 X 29 inches, whether you wrap it like a scarf or drape it down like a shawl, this cashmere shawl can keep you warm in cold weather. UNIQUE DESIGN: The multi-color plaid design of winter ladies scarf is more fashionable. Plaid scarf for ladies is suitable for daily life, work, leisure, streetwear or parties in autumn and winter.",
    ),
    Product(
      id: 13,
      name: "Women's Sedical Shoes",
      price: 964.00,
      isliked: false,
      image: 'assets/j11.png',
      category: "Normal",
      describtion:
      "Lightweight EVA sole SIZE & FIT: Size 6.5 to Size 9 tend to run large,we recommend ordering a 1/2 or 1 size down from your normal US size.Thank you in advance. Heel Height: 1.5, Platform Measures: 0.75 (approx) Soft synthetic leather upper ,easy to clean with soap and water Neutral arch design,lined with soft foam padding for all day comfort, easy on/off Clean lines on a chic, slip-resistant style.The construction is designed to give you a secure yet comfortable fit.",
    ),
    Product(
      id: 14,
      name: "Women's Sweatshirt",
      price: 845.00,
      isliked: false,
      image: 'assets/j13.png',
      category: "Normal",
      describtion:
      "【Material】Hoodies for women is made of 35%cotton+60%rayon+5%polyester, which is gentle and does not hurt the skin, Bring you a comfortable and soft wearing. 【Feature】Women's pullover hoodies/Two-color patchwork/Adjustable Drawstring Hood/Extra large kangaroo pocket/womans sweatshirt/women's casual hoodies. 【Fashion】 Color blocking hoodie is perfect for casual and sports. The oversized kangaroo pockets can be used not only to keep warm and hold some personal items; the adjustable drawstring hoodie is both practical and beautiful.",
    ),
    Product(
      id: 15,
      name: "Women's Blazer",
      price: 1725.00,
      isliked: false,
      image: 'assets/j14.png',
      category: "Normal",
      describtion:
      "100% Spandex Button closure ✦【MATERIAL】Polyester & Spandex. Light Wight and Breathable Fabric. This jacket comes with a full lining, soft and comfortable to wear. ✦【DESIGNS】White blazer with pocket/Double breasted blazers/Women blazer/Button work blazer/Lapel office blazer/Casual blazer/Open front blazer/Draped open front/Casual jacker/Solid blazer jacket/Turn down business suit/Slim fit jacket suit ✦【FEATURES】This a simple classic lapel collar blazer jacket for women, open front, padded shoulder and double breasted front button design, two functional flap pockets, perfectly carrying some necessity, or nailing a chic look.",
    ),
    Product(
      id: 16,
      name: "Women's Socks",
      price: 132.00,
      isliked: false,
      image: 'assets/j15.png',
      category: "Normal",
      describtion:
      "97% Polyester, 3% Spandex Imported Machine Wash Pack of 6 super-soft no show performance socks built for workouts and everyday life Fabric is soft like cotton, breathable, and lightweight Features include form-fitted arch support, deep heel pocket, and smooth minimal seam at toe Sock height sits right below the ankle An Amazon Brand",
    ),
  ];

  static List<Product> productListElectronics = [
    Product(
        id: 1,
        name: 'MacBook Air13-inch',
        price: 9100.00,
        isSelected: true,
        isliked: false,
        image: 'assets/1.jpg',
        category: "Trending Now",
        describtion:
        'The Apple MacBook Air "Core i5" 1.6 13-Inch (Early 2015/Broadwell) features a 14-nm "Broadwell ULT" 1.6 GHz Intel "Core i5" processor (5250U) with two independent processor "cores" on a single chip, a 3 MB shared level 3 cache, 8 GB of onboard 1600 MHz LPDDR3 SDRAM, 256 GB of 4 Lane PCIe-based flash storage, and an "integrated" Intel HD Graphics 6000 graphics processor that shares system memory. This all is packed in a razor thin 0.11-0.68 inch), 2.96 pound, aluminum case with an integrated 720p "FaceTime HD" webcam, a backlit full-size keyboard and a 13.3" widescreen TFT LED backlit active-matrix "glossy" display (1440x900 native resolution). Connectivity includes 802.11ac Wi-Fi, Bluetooth 4.0, analog audio out, a single "Thunderbolt" 2 port, two USB 3.0 ports, and an SDXC-capable SD card slot. Compared to its predecessor, this model looks effectively identical, but has a more advanced processor and architecture, more advanced graphics, "twice as fast" 4x PCIe storage and Thunderbolt 2 support. It has some different identifiers, too.'),
    Product(
        id: 2,
        name: 'Hp Spectre x360',
        price: 8300.00,
        isliked: false,
        image: 'assets/2.png',
        category: "Trending Now",
        describtion:
        "Operating system Windows 11 Pro 64 \n Processor 11th Gen Intel Core i7-1165G7 (up to 4.7 GHz with Intel Turbo Boost Technology, 12 MB L3 cache, 4 cores) \n Memory 16 GB LPDDR4-3200 SDRAM (onboard) Transfer rates up to 3200 MT/s. Onboard \n Optical drive Optical drive not included \n Display 13.5 diagonal, 3K2K (3000 x 2000), OLED, multitouch-enabled, UWVA, edge-to-edge glass, micro-edge, anti-reflection Corning Gorilla Glass NBT 400 nits, 100% DCI-P3 \n Graphics Integrated Intel Iris Xᵉ Graphics"),
    Product(
        id: 3,
        name: 'HP EliteBook 745 ',
        price: 9080.00,
        isliked: false,
        image: 'assets/4.jpg',
        category: "Trending Now",
        describtion:
        'This pre-owned or refurbished product has been professionally inspected and tested to work and look like new. How a product becomes part of Amazon Renewed, your destination for pre-owned, refurbished products: A customer buys a new product and returns it or trades it in for a newer or different model. That product is inspected and tested to work and look like new by Amazon-qualified suppliers. \n HP EB745G5 R7-2700U 14 8GB/256 PC AMD R7-2700U, 14. 0 FHD AG LED UWVA, UMA, Webcam, 8GB DDR4, 256GB SSD, AC+BT, 3C Batt, FPR, W10 Pro64, 3yr Wrty+3yrNBDOnsite U. S. - English localization'),
    Product(
        id: 4,
        name: 'Apple Airpods pro',
        price: 620.00,
        isliked: false,
        image: 'assets/a1.png',
        category: "Normal",
        describtion:
        'Active Noise Cancellation blocks outside noise, so you can immerse yourself in music \n Transparency mode for hearing and interacting with the world around you \n Spatial audio with dynamic head tracking places sound all around you \n Adaptive EQ automatically tunes music to your ears \n Three sizes of soft, tapered silicone tips for a customizable fit \n Force sensor lets you easily control your entertainment, answer or end calls, and more'),
    Product(
        id: 5,
        name: 'Beats Solo3 Wireless ',
        price: 350.00,
        isliked: false,
        image: 'assets/a2.png',
        category: "Normal",
        describtion:
        'With up to 40 hours of battery life, Beats by Dr. Dre Solo3 Wireless Headphones is your perfect everyday headphone. With Fast Fuel, a 5-minute charge gives you 3 hours of playback. Enjoy award-winning Beats sound with Class 1 Bluetooth wireless listening freedom. The on-ear, cushioned ear cups are adjustable so you can customize your fit for all-day comfort. DRIVEN BY THE APPLE W1 CHIP: Incorporating the efficient W1 chip brings seamless setup and switching for your Apple devices, up to 40 hours of battery life, and Fast Fuel technology for 3 hours of play with a 5-minute charge'),
    Product(
        id: 6,
        name: 'BeatsWire less',
        price: 90.00,
        isliked: false,
        image: 'assets/a4.png',
        category: "Normal",
        describtion:
        'Comfortable, capable and stylish - Samsung Level U is the ideal choice for high quality music on the go. Ergonomically designed for long term wear with large 12mm speaker units and active, dual-mic noise reduction ensures quality sound and ease of wear. \n 12mm Speaker Units deliver high quality, clear sound \n Dual Mic Noise Reduction and Echo Cancelation reduce outside sound interference and feedback during calls'),
    Product(
        id: 7,
        name: 'SanDisk Ultra Luxe',
        price: 220.00,
        isliked: false,
        image: 'assets/c1.png',
        category: "Normal",
        describtion:
        'The SanDisk Ultra Luxe USB 3.1 Flash Drive Storage device moves your files 10x faster than a 2.0 Flash drive. Transfer a full-length movie to the drive in less than 30 seconds. Spend less time waiting to transfer files and enjoy high-speed USB 3.0 / 3.1 performance of up to 150MB/s. Transfer and store your files, photos, videos, pictures, documents, music, memories and more easily and quickly between devices. Works in any device with a USB Type A port including desktop computer, laptop, tablet, and more. The all metal casing is tough enough to handle hard use with style and loop on the end allows you to attach your flashdrive to your key chain to take with you wherever you go.'),
    Product(
        id: 8,
        name: 'Kingston Digital Data',
        price: 320.00,
        isliked: false,
        image: 'assets/c2.png',
        category: "Normal",
        describtion:
        "16 GB storage capacity allows you to store music, films and a variety of other personal and professional files easily transfer multiple files at once or larger files without error with high-speed USB 3. 0 interface \n Automatic USB to Cloud by ClevX backup option to access your data anytime, anywhere (Windows & Mac) \n Hardware encryption - keeps your data safe.Windows 10, Windows 8.1, Windows 8, Windows 7.1 (SP1), Mac OS (v. 10.9.x - 10.12.x)"),
    Product(
        id: 9,
        name: 'Iphone 8 plus',
        price: 7500.00,
        isliked: false,
        image: 'assets/b1.png',
        category: "Normal",
        describtion:
        'Kingston’s DataTraveler Vault Privacy 3.0 (DTVP 3.0) USB Flash drive provides affordable business-grade security with 256-bit AES hardware-based encryption using XTS block cipher mode, which offers stronger protection than CBC and ECB modes. It protects 100 percent of data stored and enforces complex password protection with minimum characteristics to prevent unauthorized access. For additional peace of mind, the drive locks down and reformats after 10 intrusion attempts. It also features a read-only access mode to avoid potential malware risks.'),
    Product(
        id: 10,
        name: 'Galaxy Star 2 plus',
        price: 1130.00,
        isliked: false,
        image: 'assets/b2.png',
        category: "Normal",
        describtion:
        'for Samsung Galaxy Star 2 plus A015 SM-A015V A015T A015T1 A015V A015U A015U1 S111DL 5.69 Inches LCD display \n Features: \n 1 .It is used to repair dead touch, slow respond touch, part of screen do not respond touch, broken glass and any problems about display. \n 2.The connecting points on the battery and screen panel is very fragile, be more careful when replacing it, make sure your hands are dry when install the battery or the screen. \n 3.Check if the battery or the screen works well by connecting the cable before assemble your phone.'),
    Product(
        id: 11,
        name: 'Oppo A 73',
        price: 4580.00,
        isliked: false,
        image: 'assets/b3.png',
        category: "Normal",
        describtion:
        "Wouldn’t it be neat if there was a phone mount that worked with your A73 in any car? The Minimus MagnetoMount does just that! \n The Minimus MagnetoMount makes it EASY to answer calls, use your GPS, or play music without taking your eyes off the road! \n The Minimus is just that--mini! This LIGHTWEIGHT and DISCREET design packs a punch! Strong enough to hold your A73, yet small enough to fit in your pocket! \n The Minimus MagnetoMount doesn't rely on a bulky cradle to support your A73, full 360-DEGREE ROTATION is a breeze, meaning you can view your screen in PORTRAIT or LANDSCAPE mode with ease."),
    Product(
        id: 12,
        name: 'Iphone 12 plus',
        price: 15200.00,
        isliked: false,
        image: 'assets/b4.png',
        category: "Normal",
        describtion:
        "Apple iPhone 12 Pro Max, 128GB, Pacific Blue - Unlocked (Renewed Premium) \n Unlocked and compatible with any carrier of choice on GSM and CDMA networks (e.g. AT&T, T-Mobile, Sprint, Verizon, US Cellular, Cricket, Metro, Tracfone, Mint Mobile, etc.). \n Inspected and guaranteed to have minimal cosmetic damage, which is not noticeable when the device is held at arm's length. Successfully passed a full diagnostic test which ensures like-new functionality and removal of any prior-user personal information."),
    Product(
        id: 13,
        name: 'Hp Desktop 24-inch',
        price: 4130.00,
        isliked: false,
        image: 'assets/d1.png',
        category: "Normal",
        describtion:
        "With an AMD processor and up to 8 GB of RAM, seamlessly go from sending work emails to uploading vacation photos. This All-in-One PC displays more with a three-sided micro-edge display and has an adjustable tilt stand, allowing you to work from multiple perspectives. This PC includes an HD camera with a slide switch for privacy, plus built-in speakers and easy Wi-Fi connectivity. Now, you can stay in touch with family and friends while maintaining peace of mind. \n Windows 10 Home: Do great things confidently with the familiar feel of Windows – only better \n Fast processor: AMD Athlon Silver 3050U Processor, Dual-Core, 2.30 GHz"),
    Product(
        id: 14,
        name: 'Dell OptiPlex 5090 ',
        price: 3930.00,
        isliked: false,
        image: 'assets/d2.png',
        category: "Normal",
        describtion:
        "Processor: Intel Octa-Core i7-11700T [8 Cores] (1.4GHz – 4.6GHz, 16MB Cache) \n Hard Drive: 1TB NVMe; RAM: 16GB DDR4-3200MHz \n OS: Windows 10 Professional 64 bit; Graphics: Intel UHD 750 \n Warranty: 3 Year Dell Onsite Warranty / 3 Year Oemgenuine Limited Warranty \n Hard Drive Upgrade | * - View Product Description for complete details and notes \n "),
    Product(
        id: 15,
        name: 'Lenovo ThinkCentre',
        price: 2900.00,
        isliked: false,
        image: 'assets/d3.png',
        category: "Normal",
        describtion:
        "Be confident with Quality Recertified PCs: As a Microsoft Authorized Refurbisher & Global Partner, Quality Recertified is North America's most competitive company in Information Technology Asset Disposition and Refurbishing Industry. Products that arrives at Quality Recertified facilities through the Asset Recovery Program are restored to ISO and R2 industrial standards."),
  ];
  static List<Product> productListAccessories = [
    Product(
        id: 1,
        name: "Fossil Men's Copeland",
        price: 75.00,
        isSelected: true,
        isliked: false,
        image: 'assets/w1.jpg',
        category: "Trending Now", describtion: "From classic chronographs to the newest smartwatches, we’ve got the watch styles you love. The best part is that our wide selection of timepieces comes in enough styles, colors and designs to keep your style fresh and fun for years to come. Whether you’re looking for an everyday watch, something for a special occasion or a gift for loved ones, you’ll find it here. We’ve got leather strap watches, stainless steel, mesh and silicone for whatever material suits you best. Marrying the elegance and sophistication of a traditional Roman numeral dial with the casual styling of a wire-lug case, The Copeland is designed to be a versatile and practical dress option. This 42mm Copeland features a sunray dial with Roman numeral and stick indices, and three-hand movement."),
    Product(
        id: 2,
        name: "Invicta Men's Pro ",
        price: 60.00,
        isSelected: true,
        isliked: false,
        image: 'assets/w2.png',
        category: "Trending Now", describtion: "Plunge into any horizon using the steadfast guidance of the Invicta Pro Diver. Stylishly classic, internal workings are forged with variations of bold movements. Built with confident prowess, the fortitude with which these timepieces function makes the Pro Diver the quintessential in performance. Stainless steel case 43mm diameter x 12mm thick; Gold dial; Magnified date window Luminous hands and hour markers. Japanese quartz movement, PC32 Caliber; Assembled in Japan; SR626SW battery included Watch weight: 170 grams."),
    Product(
      id: 3,
      name: "Fitbit Versa 3 Health",
      price: 214.00,
      isSelected: true,
      isliked: false,
      image: 'assets/w3.png',
      category: "Trending Now", describtion: "Meet Fitbit Versa 3 the smartwatch with everything you need to just go. Track your pace & distance and leave your phone at home with built-in GPS. You can also get call, text and app notifications, use Google Assistant or Amazon Alexa Built-in, control Spotify, Deezer and Pandora and use the built-in mic and speaker to take Bluetooth calls hands-free when your phone is nearby. Plus with Active Zone Minutes, 20+ exercise modes and 6+ day battery with 12-minute fast charging, you’ve got all the motivation you need to reach your health & fitness goals.", ),
    Product(
      id: 4,
      name: "Disney Kids' PN1171",
      price: 30.00,
      isSelected: true,
      isliked: false,
      image: 'assets/w4.png',
      category: "Trending Now", describtion: "Round silver-tone watch with Disney Princesses graphic on dial, labeled hour and minute hands, and pink polyurethane band accented with purple hearts. \n Quartz movement with analog display. \n Protective glass dial window. \n Features buckle closure. \n Not water resistant.", ),
    Product(
      id: 5,
      name: "Michael Kors Women's Sofie",
      price: 155.00,
      isSelected: true,
      isliked: false,
      image: 'assets/w5.png',
      category: "Trending Now", describtion: "Product Dimensions : 0.55 x 1.69 x 0.31 inches; 8.8 Ounces. \n Item model number: MK4335. \n Department: Womens \n Batteries: 1 Lithium Metal batteries required. (included) \n Date First Available: May 5, 2019 \n Manufacturer: Michael Kors Watches \n ASIN: B07MFWPTVQ \n Best Sellers Rank: #198,804 in Clothing, Shoes & Jewelry.", ),
    Product(
      id: 6,
      name: "Black Stainless Steel Red ",
      price: 30.00,
      isSelected: true,
      isliked: false,
      image: 'assets/w6.png',
      category: "Trending Now", describtion: "Solid 316L Stainless Steel, Black Gun Plated, Never Rust or Color Finger. \n Comfort Fit, Nickel Free, Hypoallergenic. \n Perfect for Wedding Engagement Biker Cocktail Party Graduation Occasions. \n Gift for Father, Grandpa, Brothers, Uncle, Husband. \n Gift box is NOT included.", ),
    Product(
      id: 7,
      name: "Enhong Signet Rings Solid",
      price: 30.00,
      isSelected: true,
      isliked: false,
      image: 'assets/w7.png',
      category: "Trending Now", describtion: "Our Advantage:Our men's square biker signet ring is made of high grade durable Stainless Steel, 100% hypoallergenic, no rust, no fading, no allergies. \n Comfort Fit:Width:0.67 inches ,weight :16 g ; It’s a solid and well polished thumb ring;The brushed Inner surface of the ring is smooth; It is comfortable as daily or party jewelry for men and women. \n Perfect Crafted:This fashion blank signet ring is well crafted. The surfaces are highly polished.And the whole ring is precisely made to make sure every detail is perfect.High technology make sure that this ring can stand up well with long time wearing. \n ", ),
    Product(
      id: 8,
      name: "Love Heart Pendant Necklaces",
      price: 100.00,
      isSelected: true,
      isliked: false,
      image: 'assets/w8.png',
      category: "Trending Now", describtion: "Keep your necklace in your CDE box at the end of the day. \n Do not spray perfume directly on the jewelry. \n Do not immerse your jewelry in liquid. \n After wearing the Jewelry, wipe it with a soft flannel cloth before putting them away. \n Minor tarnish can be lightly buffed off with a jewelry polishing cloth(you can find the cloth in the gift box) or a mild jewelry cleaner.", ),
    Product(
      id: 9,
      name: "Alex and Ani Womens",
      price: 100.00,
      isSelected: true,
      isliked: false,
      image: 'assets/w9.png',
      category: "Trending Now", describtion: "Direction • Divine • AidGuardian Angels come to our aid as pure forms of energy. They enter our lives in times of need, guiding us to an abundance of adventure, blessings, and lessons. Keep the Guardian close when you seek an extra set of helping hands. Love, strength, knowledge, peace, healing, freedom, answers - there's no shortage in what The Guardian can bring to your life.Details: Adjustable sliding clasp allows for a customized fit. Adorned with a Swarovski® Crystal. Rafaelian Gold finish. Measurements: Width: 1⁄5 in Diameter/Length: 2 2⁄5 in Charm Length: 1 1⁄5 in Charm Width: 2⁄3 in Weight: 0.4 oz.", ),
    Product(
      id: 10,
      name: "Jasmine Ring 925",
      price: 65.00,
      isSelected: true,
      isliked: false,
      image: 'assets/w10.png',
      category: "Trending Now", describtion: "Elegant Jasmine Ring. \n Italian Sterling Silver 925. \n Free Size Ring; Size can be modified. \n Has a governmental stamp stating 925 Sterling Silver. \n Coated with Platinum for long lasting shine and durability. \n For more varieties kindly check our store \n ", ),
    Product(
      id: 11,
      name: "PAVOI 14K Gold ",
      price: 300.00,
      isSelected: true,
      isliked: false,
      image: 'assets/w11.png',
      category: "Trending Now", describtion: "PAVOI 19mm ( 3/4 Inch ) Diameter; Small Yellow Gold Hoop Earrings. A perfect gift! These Hoop Earrings are always Best Sellers!. \n PAVOI 19mm ( 3/4 Inch ) Diameter; Small Yellow Gold Hoop Earrings. A perfect gift! These Hoop Earrings are always Best Sellers!. \n This hoop earring is crafted to be lightweight for easy all-day wear. They are plated in 14K Yellow Gold for a long-lasting brilliant finish and to be Hypoallergenic; Nickel and Lead-Free with Sterling Silver Posts. ✦ MADE WITH LOVE ✦ This unique and heartfelt product is beautifully packaged and ready for giving. Makes a sentimental surprise for any awesome lady. Great gifts for Mom or Grandma on Mother's Day, anniversary, birthday, or wedding celebration.", ),
  ];
  static List<Product> cartList = [

  ];
  static List<Product> favoriteList = [

  ];

  static List<Category> categoryList = [
    Category( id: 0, name: "Clothes", image: 'assets/shoe_thumb_2.png', isSelected: true),
    Category(id: 1, name: "Electronics", image: 'assets/4.jpg'),
    Category(id: 2, name: "Accessories", image: 'assets/watch.png'),
  ];
}
