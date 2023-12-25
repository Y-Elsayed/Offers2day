from flask import Flask, jsonify, request
from werkzeug.security import check_password_hash
import backend
#flask app instance
app = Flask(__name__)

#Test
@app.route('/')
def hello():
    return jsonify(message='Hello from Flask!')

#login route
@app.route('/login', methods=['POST'])
def login():
    #User input from the http request
    data = request.get_json() #received the json object from flutter
    email = data.get('email') #user email or username
    password = data.get('password') #user password
    customer_business = "Customer"
    #This will determine whether the user is a customer or a business
    if data.get("customerbusiness") == "true":
        customer_business = 'Business'
    print(email)
    print(password)
    print(customer_business)
    connection = backend.get_db_connection()

    if connection:
        cursor = connection.cursor(dictionary=True)#data will get returned as a dict not a tuple

        #our query
        #customer
        if customer_business == "Customer":
            query = "SELECT * FROM Customers C JOIN CustomerPasswords CP ON C.userID = CP.userID WHERE (C.email = %s OR C.username = %s) AND CP.password = %s"
        #business
        else:
            query = """
            SELECT * FROM Businesses B
            JOIN BusinessPasswords BP ON B.businessID = BP.businessID
            WHERE (B.businessEmail = %s OR B.businessName = %s) AND BP.password = %s
            """
        
        #Execute the query
        cursor.execute(query, (email, email, password))
        #Get the first result
        user = cursor.fetchone()#dict
        print(user)
        #check_password_hash(user['password'], password):#check_password_hash is a function that hashes the user password before checking the db
        if user:
            cursor.close()
            connection.close()
            return jsonify({'message': 'Login successful'}), 200
        else:
            cursor.close()
            connection.close()
            return jsonify({'message': 'Login failed'}), 401



if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
