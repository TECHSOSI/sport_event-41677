# DB 設計

## users table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| nickname           | string              | null: false               |
| email              | string              | null: false, unique: true |
| encrypted_password | string              | null: false               |
| last_name          | string              | null: false               |
| first_name         | string              | null: false               |
| last_name_kana     | string              | null: false               |
| first_name_kana    | string              | null: false               |
| birth_date         | date                | null: false               |

### Association

* has_many :recruitments
* has_many :orders

## recruitments table

| Column                     | Type       | Options                        |
|----------------------------|------------|--------------------------------|
| date                       | date       | null: false                    |
| event_time_id              | integer    | null: false                    |
| stadium_id                 | integer    | null: false                    |
| home_name                  | string     | null: false                    |
| manager                    | string     | null: false                    |
| home_level_id              | integer    | null: false                    |
| home_URL                   | text       | null: false                    |
| umpire_id                  | integer    | null: false                    |
| fee                        | integer    | null: false                    |
| progress_id                | integer    | null: false                    |
| home_message               | text       | null: false                    |
| user                       | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :order

## orders table

| Column                           | Type       | Options                        |
|----------------------------------|------------|--------------------------------|
| user                             | references | null: false, foreign_key: true |
| recruitment                      | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :recruitment
- has_one :application

## applications table

| Column            | Type       | Options                        |
|-------------------|------------|--------------------------------|
| away_name         | string     | null: false                    |
| away_level_id     | integer    | null: false                    |
| away_URL          | text       | null: false                    |
| away_message      | text       | null: false                    |
| order             | references | null: false, foreign_key: true |


### Association

- belongs_to :order