<a href="https://github.com/apirobot/django-elm-auth-with-jwt">
    <p align="center">
      <img src="https://raw.githubusercontent.com/apirobot/django-elm-auth-with-jwt/master/other/preview.gif" alt="django-elm-auth-with-jwt">
    </p>
</a>

---

## Description

`django-elm-auth-with-jwt` is an example of how you can implement JSON Web Token (JWT) authentication using **django & django rest framework** as a backend and **elm** as a frontend.


## How to run

Clone the repository.

Create and activate virtualenv:

```zsh
➜  cd backend/
➜  python3 -m venv .venv
➜  source .venv/bin/activate
```

Install dependencies:

```zsh
../backend  ➜  pip install -r requirements.txt
../frontend ➜  elm install
```

Run migrations:

```zsh
../backend ➜  ./manage.py migrate
```

Start up backend:

```zsh
../backend ➜  ./manage.py runserver
```

Start up frontend using `elm-live`:

```zsh
../frontend ➜  elm-live --port=3000 --output=elm.js src/Main.elm --pushstate --open --debug
```

We are done.

- Frontend: http://localhost:3000/
- Backend: http://localhost:8000/
