from flask import Flask,render_template,request,redirect,url_for, g
from init import create_app
from init import get_db

app=create_app()

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/menu')
def menu():
   return render_template('menu.html')

@app.route('/order',methods=['GET','POST'])
def order():
 if request.method=='POST':
    db=get_db()
    
    name=request.form.get('f2')
   
    result = db.execute('SELECT Name,Price FROM dishes WHERE Name=?',(name,)).fetchone()

    if result:
       value1,value2= result
    else:
        print("No matching records found.")
  
    return render_template('order.html',var1=value1,var2=value2)

@app.route('/order/details')
def details():
   return render_template('order-d.html')

@app.route('/contact')
def contact():
   return render_template('cont.html')

if __name__=='__main__':
    app.run(
        host='0.0.0.0',
        port=8080
    )





