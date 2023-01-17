# create a flask api to upload and save images in /upload folder


from flask import Flask, request, redirect, url_for, send_from_directory
import os


app = Flask(__name__)

app.config["UPLOAD_FOLDER"] = "upload"


@app.route("/upload", methods=["POST"])
def upload():
    if request.method == "POST":
        file = request.files["file"]
        file.save(os.path.join(app.config["UPLOAD_FOLDER"], file.filename))
        return redirect(url_for("uploaded_file", filename=file.filename))
