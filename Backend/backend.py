from mysql.connector import connect, Error





#Connection with db
def get_db_connection():
    try:
        connection = connect(
            host="localhost",
            user="root",
            password="password",
            database="Offers2Day"
        )
        return connection
    except Error as e:
        print(f"Error: {e}")
        return None

