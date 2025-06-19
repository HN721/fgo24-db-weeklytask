# ERD DIAGRAM MOVXTAR

```mermaid
erDiagram
direction LR
    users ||--o{ transactions : makes
    users ||--o{ session: make
    transactions ||--o{ transaction_detail : contains
    transactions ||--o{ history_transac tion : contains

    movies ||--o{ transactions : involved_in


    movies ||--o{ movie_genre : categorized_as
    genres ||--o{ movie_genre : classifies

    %% MOVIES dan DIRECTORS (many-to-many)
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
        enum role "users,admin"
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
        timpstamp date
        string cinema
        int price_total
        string user_id FK
        string movie_id FK
    }
    transaction_detail{
        string id PK
        string id_transaction FK
        string payment
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
        string movie_id FK
        string actor_id FK
    }
      movie_genre {
        string id PK
        string movie_id FK
        string genre_id FK
    }
      movie_director {
        string id PK
        string movie_id FK
        string director_id FK
    }
     history_transaction{   string id PK
        string transaction_id FK
        enum status "pending,paid"
        string updated_by
        timestamp updated_at
        string note
    }

```
