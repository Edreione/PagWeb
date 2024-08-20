from flask import Flask, render_template, request, redirect, send_from_directory, session
from flask_mysqldb import MySQL
from datetime import datetime
import os

app = Flask(__name__)
app.secret_key="develoteca"
mysql = MySQL(app)

app.config["MYSQL_HOST"] = "localhost"
app.config["MYSQL_USER"] = "root"
app.config["MYSQL_PASSWORD"] = ""
app.config["MYSQL_DB"] = "sitio"

@app.route ("/")
def inicio():
    return render_template("sitio/index.html")

@app.route("/img/<imagen>")
def imagenes(imagen):
    print(imagen)
    return send_from_directory(os.path.join("templates/sitio/img"),imagen)

@app.route("/css/<archivocss>")
def css_link(archivocss):
    return send_from_directory(os.path.join("templates/sitio/css"),archivocss)

@app.route ("/libros")
def libros():

    conexion = mysql.connection
    cursor= conexion.cursor()
    cursor.execute("SELECT * FROM `libros`")
    libros=cursor.fetchall()
    conexion.commit()

    return render_template("sitio/libros.html", libros=libros)

@app.route ("/nosotros")
def nosotros():
    return render_template("sitio/nosotros.html")

@app.route ("/admin/")
def admin_index():
    if not "login" in session:
        return redirect("/admin/login")
    return render_template("admin/index.html")


@app.route("/admin/login")
def admin_login():
    return render_template("admin/login.html")

@app.route("/admin/login", methods=["POST"])
def admin_login_post():
    _usuario=request.form["txtUsuario"]
    _password=request.form["txtPassword"]
    print(_usuario)
    print(_password)

    if _usuario=="Edrei" and _password=="Genesis1":
        session["login"]= True
        session["usuario"]="Administrador"
        return redirect("/admin")


    return render_template("admin/login.html")

@app.route("/admin/cerrar")
def admin_login_cerrar():
    session.clear()
    return redirect("/admin/login")

@app.route("/admin/libros")
def admin_libros():

    if not "login" in session:
        return redirect("/admin/login")

    conexion = mysql.connection
    cursor= conexion.cursor()
    cursor.execute("SELECT * FROM `libros`")
    libros=cursor.fetchall()
    conexion.commit()
    print(libros)

    return render_template("admin/libros.html",libros=libros)

    
@app. route("/admin/libros/guardar", methods=["POST"] )
def admin_libros_guardar():

    if not "login" in session:
        return redirect("/admin/login")
    
    _nombre=request.form["txtnombre"]
    _url=request.form["txtURL"]
    _archivo=request.files["txtimagen"]

    tiempo= datetime.now()
    horaActual=tiempo.strftime("%Y%H%M%S")

    if _archivo.filename!="":
        nuevoNombre=horaActual+"_"+_archivo.filename
        _archivo.save("templates/sitio/img/"+nuevoNombre)

    sql="INSERT INTO `libros` (`id`, `nombre`, `imagen`, `url`) VALUES (NULL, %s, %s, %s);"
    datos=(_nombre, nuevoNombre,_url)

    conexion = mysql.connection
    cursor= conexion.cursor()
    cursor.execute(sql, datos)
    conexion.commit()

    print(_nombre)
    print(_url)
    print(_archivo)

    return redirect("/admin/libros")

@app.route("/admin/libros/borrar", methods=["POST"]) 
def admin_libros_borrar():
    if not "login" in session:
        return redirect("/admin/login")
    
    _id=request.form["txtID"]

    conexion=mysql.connection
    cursor= conexion.cursor()
    cursor.execute("SELECT imagen FROM `libros` WHERE id=%s", (_id,))
    libro=cursor.fetchone()
    conexion.commit()

    if libro and os.path.exists("templates/sitio/img/" + libro[0]):
        os.unlink("templates/sitio/img/" + libro[0])

    cursor.execute("DELETE FROM libros WHERE id=%s", (_id,))
    conexion.commit()

    return redirect("/admin/libros")

if __name__ == "__main__":
    
    app.run(debug=True)

