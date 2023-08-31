# bursa

<img src="https://github.com/ozancanozdemir/bursa/assets/33122288/da50adfe-0778-49c2-8660-b75c0dc57014" width="200">


This package is developed to access the datasets in [Bursa Open Data Portal](https://acikyesil.bursa.bel.tr/)

## Installation

You can install the package from [CRAN.](https://cran.r-project.org/web/packages/bursa/index.html)

```
install.packages("bursa")
```

You can also install the package from GitHub.

```
remotes::install_github("ozancanozdemir/bursa")
```

## Usage and Examples

```
> library(bursa)
Welcome to bursa package!
This is an unofficial R package for Bursa Municipality Open Data Portal.
For more information, you can visit https://acikyesil.bursa.bel.tr/
```

The package has three main functions. You can list the all datasets by using ```list_data_names()``` 


```
list_data_names()
  [1] ""                         "idari-yapilanma"         
  [3] "orman"                    "btso"                    
  [5] "genclik-tesis"            "tiyatro"                 
  [7] "staj"                     "karagoz-sinema"          
  [9] "kultur"                   "plaj"                    
 [11] "spor"                     "spor-etkinlik"           
 [13] "teleferik-yolcu-sayilari" "turizm-danisma"          
 [15] "turizm-danisma-rapor"     "dolmus-hat"              
 [17] "minibus-hat"              "duraklar"                
 [19] "egitim"                   "yesil-alan-bakim"        
 [21] "bisiklet-tamir"           ""                        
 [23] "taksi-durak"              "bisiklet-park"           
 [25] "atik"                     "atik-depolama"           
 [27] "atik-arac"                "atik-tibbi"              
 [29] "btm"                      "atik-steril"             
 [31] "spor-tesisleri-sayilari"  "burkent"                 
 [33] "spor-tesis"               "covid19-yardim"          
 [35] "yayinlar"                 "kaza-kara-noktalari"     
 [37] "arazi-sinif"              "akarsu"                  
 [39] "egitim-tesis"             "besas-satis-nokta"       
 [41] "yol"                      "toplanma-alan"           
 [43] ""                         "tarihi-mekan"            
 [45] "sanayi"                   "resmi-kurum"             
 [47] "gol"                      "park-bahce"              
 [49] "otopark"                  "organize-sanayi"         
 [51] "mahalle-sinir"            "isik-kirliligi"          
 [53] "ilce-sinir"               "hastane"                 
 [55] "eczane"                   "ibadethane"              
 [57] "aile-sagligi-merkezi"     "metro-istasyon"          
 [59] "park-bahce-bakim-yerleri" "yuzme-havuzu-kullanim"   
 [61] "halk-plajlari"            "baraj-bursa"             
 [63] "arac-ozellik"             ""                        
 [65] "seyehat-karti-dolum"      "seyehat-karti-ofis"      
 [67] "arac-takip"               "genel-bilgiler"          
 [69] "yolculuk-kurallari"       "tarife-bilgi"            
 [71] "mah-abone-sayisi"         "mahalle-abone-sayisi"    
 [73] "ilce-abone-sayisi"        "abone-sayisi"            
 [75] "tuketim-yillik"           "tuketim-aylik"           
 [77] "tuketim-gunluk"           "su-tuketim-yillik"       
 [79] "su-tuketim-aylik"         "su-tuketim-gunluk"       
 [81] "su-yillik"                "su-aylik"                
 [83] "su-gunluk"                "doluluk-yillik"          
 [85] ""                         "doluluk-aylik"           
 [87] "mahalle-kodlari"          "mahalle-kodu"            
 [89] "mahalle-kod"              "ilce-kodu"               
 [91] "ilce-kod"                 "tarife"                  
 [93] "doluluk-gunluk"           "baraj"                   
 [95] "tarife-grup"              "baraj-durum"             
 [97] "hat-bilgi"                "durak-saat"              
 [99] "durak-arac"               "mahalle-nufus"           
[101] "nobet-eczane"             "hat-calisma-gunleri"     
[103] "hatlar"                   "su-kesintisi"            
[105] "buyuk-sehir-tv"           ""                        
[107] "ihaleler"                 "iletisim"                
[109] "meclis-gundem"
```

You can get the data that you would like to have using ```get_data_from_bursa(data_name)``` 

```
> get_data_from_bursa("duraklar")
# A tibble: 7,286 × 6
    S_NO DURAK_NO DURAK_ADI           LATITUDE           LONGITUDE          ADRES                           
   <dbl> <chr>    <chr>               <chr>              <chr>              <chr>                           
 1     1 B59      T1-OSMANGAZİ        29.058965000000001 40.195878          AHMETPAŞA Kıbrıs Şehitleri Cd O…
 2     2 B60      T1-ÇARŞAMBA MERİNOS 29.053561999999999 40.194763000000002 ÇIRPAN DARMSTAD CD. OSMANGAZİ   
 3     3 B61      T1-STADYUM          29.049236000000001 40.193809999999999 GAZİAKDEMİR STADYUM CD. OSMANGA…
 4     4 B62      T1-ALTIPARMAK       29.049541000000001 40.190832          MURADİYE ALTIPARMAK CD. OSMANGA…
 5     5 B63      T1-ÇATALFIRIN       29.056739          40.188702999999997 KURUÇEŞME ALTIPARMAK CD. OSMANG…
 6     6 B64      T1-ULUCAMİ          29.061810999999999 40.183481          NALBANTOĞLU ATATÜRK CD. OSMANGA…
 7     7 B65      T1-HEYKEL           29.066233          40.182974999999999 HOCAALİZADE ATATÜRK CD. OSMANGA…
 8     8 B66      T1-DEMİRTAŞ         29.069842999999999 40.186321          EBUİSHAK İnönü Cd OSMANGAZİ     
 9     9 B67      T1-GAZCILAR         29.071270999999999 40.189020999999997 DEMİRTAŞPAŞA OSMAN GAZİ CD. OSM…
10    10 B68      T1-SGK              29.072793999999998 40.191709000000003 DEMİRTAŞPAŞA OSMAN GAZİ CD. OSM…
# ℹ 7,276 more rows
# ℹ Use `print(n = ...)` to see more rows
``` 
You can search the data by using ```search_data_by_keyword(key_word).```

```
> search_data_by_keyword("covid19")
[1] "covid19-yardim"
``` 
