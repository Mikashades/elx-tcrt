# Elx_Tcrt - Comprehensive E-commerce Application

Elixir ve Phoenix kullanarak geliştirilmiş kapsamlı bir e-ticaret uygulamasıdır. Kullanıcıların ürünleri görüntülemesine, sepete eklemesine ve sipariş vermesine olanak tanır.

## Özellikler

- **Kullanıcı Yönetimi**: Kullanıcı kayıt ve giriş işlemleri.
- **Ürün Yönetimi**: Ürün ekleme, düzenleme, silme ve listeleme.
- **Sepet Yönetimi**: Sepete ürün ekleme, çıkarma ve görüntüleme.
- **Sipariş Yönetimi**: Sipariş oluşturma ve sipariş detaylarını görüntüleme.

## Kurulum

### Gereksinimler

- Elixir 1.12+
- Erlang/OTP 24+
- PostgreSQL

### Adımlar

1. **Projeyi Klonlama**

   ```bash
   git clone https://github.com/kullaniciadi/elx_tcrt.git
   cd elx_tcrt
   ```

# Dosya Şeması

    elx_tcrt/
    ├──.gitignore              
    ├── LICENSE                  
    ├── README.md                
    ├── mix.exs                  
    ├── config/                  
    │   ├── config.exs
    │   ├── dev.exs
    │   ├── prod.exs
    │   └── test.exs
    ├── lib/                     
    │   ├── elx_tcrt/           
    │   │   ├── application.ex   
    │   │   ├── repo.ex          
    │   │   ├── accounts/        
    │   │   │   ├── user.ex
    │   │   │   └── accounts.ex
    │   │   ├── catalog/         
    │   │   │   ├── product.ex
    │   │   │   └── catalog.ex
    │   │   ├── cart/            
    │   │   │   ├── cart.ex
    │   │   │   ├── cart_item.ex
    │   │   │   └── cart.ex
    │   │   ├── orders/          
    │   │   │   ├── order.ex
    │   │   │   └── order_item.ex
    │   │   └── web/             
    │   │       ├── controllers/  
    │   │       │   ├── product_controller.ex
    │   │       │   └── order_controller.ex
    │   │       ├── templates/    
    │   │       │   ├── product/
    │   │       │   │   ├── index.html.eex
    │   │       │   │   └── new.html.eex
    │   │       │   └── order/
    │   │       │       └── show.html.eex
    │   │       ├── views/        
    │   │       │   ├── product_view.ex
    │   │       │   └── order_view.ex
    │   │       └── router.ex     
    ├── priv/                    
    │   ├── repo/                
    │   │   └── migrations/      
    │   └── static/              
    ├── test/                    
    │   ├── elx_ticaret_web/       
    │   ├── elx_ticaret/           
    │   └── support/             
    └── assets/                  
    ├── css/
    ├── js/
    ├── images/
    └── package.json         
