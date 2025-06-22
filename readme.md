# ERD DIAGRAM MOVXTAR

This project is a backend database schema for a cinema ticket booking application. It includes user management, movie listings, genre classifications, director and actor mappings, cinema information, transactions, and detailed purchase history.

```mermaid
erDiagram
direction LR
   users ||--o{ transactions : makes
    users ||--o{ session : has
    transactions ||--o{ transaction_detail : contains
    transactions ||--o{ history_transaction : contains
    transactions ||--o{ cinema : held_at
    transactions ||--o{ payment_method : paid_with
    movies ||--o{ transactions : involved_in

    movies ||--o{ movie_genre : categorized_as
    genres ||--o{ movie_genre : classifies

    movies ||--o{ movie_director : directed_by
    directors ||--o{ movie_director : directs

    movies ||--o{ movie_actors : includes
    actors ||--o{ movie_actors : acts_in
    users {
        string id PK
        string name
        string phone_number
        string profile_image
        string email
        string password
        string role
        timestamp created_at
    }
    session{
        string id PK
        string token
        timestamp created_at
        string id_users FK

    }

    movies {
        string id PK "index"
        string title
        string synopsis
        string background
        string poster
        timestamp release_date
        int duration
        int price

    }

    transactions {
        string id PK
        timestamp time
        date date_booking
        int price_total
        string id_cinema FK
        string id_payment_method FK
        string id_user FK
        string id_movie FK
    }
    transaction_detail{
        string id PK
        string id_transaction FK
        string costumer_name
        string costumer_phone
        string seat

    }

    directors {
        string id PK
        string name
    }

    genres {
        string id PK
        string name
    }

    actors {
        string id PK
        string name
    }

    movie_actors {
        string id PK
        string id_movie FK
        string id_actor FK
    }
      movie_genre {
        string id PK
        string id_movie FK
        string id_genre FK
    }
      movie_director {
        string id PK
        string id_movie FK
        string id_director FK
    }
     history_transaction{   string id PK
        string id_transaction FK
        string status
        string updated_by
        timestamp updated_at
        string note
    }
    cinema{
        string ID PK
        string name
    }
    payment_method{
        string ID PK
        string name
    }

```
