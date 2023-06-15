from flask import Flask, render_template, request, redirect
app = Flask(__name__)
app.secret_key = 'sqlkey'

from user_model import User

@app.route('/')
def Home():

    all_users = User.get_all()
    print(all_users)
    return render_template("index.html", all_users = all_users)





@app.route('/create')
def show_form():
    return render_template('create.html')





@app.route('/submit_user_form', methods=['POST'])
def submit_user_form():
    data = {
        'first_name' : request.form['first_name'],
        'last_name' : request.form['last_name'],
        'email' : request.form['email']
    }
    new_user = User.add_user(data)
    return redirect(f'/show/{new_user}')



@app.route('/edit/<int:user_id>')
def show_edit_form(user_id):


    one_user = User.get_one({'user_id' : user_id})
    return render_template('edit.html', one_user=one_user)



@app.route('/edit_user', methods=["POST"])
def edit_user():

    print(request.form)

    User.update_user(request.form)

    return redirect('/')


@app.route('/delete/<int:user_id>')
def delete_user(user_id):

    User.delete_user( { 'user_id' : user_id } )

    return redirect('/')



@app.route('/show/<int:user_id>')
def show_data(user_id):

    one_user = User.user_data({'user_id' : user_id})
    return render_template('show_data.html', user=one_user)




if __name__ == "__main__":
    app.run(debug=True)