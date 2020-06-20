# Shell Context

Acceso a las instancias definidas en microblog.py
flask shell

# Password Hashing
```
>>> from werkzeug.security import generate_password_hash
>>> hash = generate_password_hash('foobar')
>>> hash
'pbkdf2:sha256:50000$vT9fkZM8$04dfa35c6476acf7e788a1b5b3c35e217c78dc04539d295f011f01f18cd2175f'
```

## Verificación
```
>>> from werkzeug.security import check_password_hash
>>> check_password_hash(hash, 'foobar')
True
>>> check_password_hash(hash, 'barfoo')
False
```
```
>>> u = User(username='susan', email='susan@example.com')
>>> u.set_password('mypassword')
>>> u.check_password('anotherpassword')
False
>>> u.check_password('mypassword')
True
```

# Avatars
```
>>> from hashlib import md5
>>> 'https://www.gravatar.com/avatar/' + md5(b'john@example.com').hexdigest()
'https://www.gravatar.com/avatar/d4c74594d841139328695756648b6bd6'
```

# Migrations
Realizar el cambio en el model
flask db migrate -m "new change into model"
flask db upgrade

# Servidor Correo electrónico de prueba

python -m smtpd -n -c DebuggingServer localhost:8025

# Traducción con PyBabel

```
babel.cfg: PyBabel configuration file.

[python: app/**.py]
[jinja2: app/templates/**.html]
extensions=jinja2.ext.autoescape,jinja2.ext.with_
```

'pybabel extract -F babel.cfg -k _l -o messages.pot .

## Generando un catalogo de idiomas
pybabel init -i messages.pot -d app/translations -l es

## Compilando traducciones
```(venv) $ pybabel compile -d app/translations
compiling catalog app/translations/es/LC_MESSAGES/messages.po to
app/translations/es/LC_MESSAGES/messages.mo
```

## Actualizar traducciones
```(venv) $ pybabel extract -F babel.cfg -k _l -o messages.pot .
(venv) $ pybabel update -i messages.pot -d app/translations
```