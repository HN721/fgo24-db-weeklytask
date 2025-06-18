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

```
