# ERD DIAGRAM MOVXTAR

```mermaid
erDiagram

users{
    string id PK
    string nama
    int no_hp
    string images
    string email
    string password
    enum role "users,admin"
    timestamp created_at
}
movies{
    string id PK
    string title
    string sinopsis
    string background
    string poster
    timestamp release_date
    int duration
    int price
    string Id_genre FK
    string Id_actor FK
    string Id_director FK
}

```
