# README

Final project for Fullstack at RRC

## Models

Planet

```
- Belongs to Planet_type
- planet_type                                 (FK)
- name                                        (string, present, unique)
- description                                 (text, present)
- cost                                        (decimal, present)
- image                                       (image)
```

Planet_type

```
- name                                        (string, present, unique)
```

Star

```
- Belongs to Star_type
- star_type                                   (FK)
- name                                        (string, present, unique)
- description                                 (text, present)
- cost                                        (decimal, present)
- image                                       (image)
```

Star_type

```
- name                                        (string, present, unique)
```

Asteroid

```
- Belongs to Asteroid_type
- asteroid_type                               (FK)
- name                                        (string, present, unique)
- description                                 (text, present)
- cost                                        (decimal, present)
- image                                       (image)
```

Asteroid_type

```
- name                                        (string, present, unique)
```

(More models to add)

## Routes

```
GET /                                         (Home Page)
GET /(Planets/Stars/Asteroids)                (Show all X, paginated)
GET /(Planets/Stars/Asteroids)/:id            (Show X by id)
GET /(Planets/Stars/Asteroids)/alphabetized   (Show X ordered by name, paginated)
GET /(Planets/Stars/Asteroids)/newest         (Show X ordered by date added DESC, paginated)
GET /(Planets/Stars/Asteroids)/oldest         (Show X ordered by date added ASC, paginated)
GET /(Planets/Stars/Asteroids)/highest        (Show X ordered by cost DESC, paginated)
GET /(Planets/Stars/Asteroids)/lowest         (Show X ordered by cost ASC, paginated)\

(More routes to add)
```

## Controllers

```
HomeController                                - index
(Planets/Stars/Asteroids)Controller           - index, show, alphabetized, newest, oldest, highest, lowest (using partial)

(More controllers to add)
```