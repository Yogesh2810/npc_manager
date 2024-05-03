import mysql.connector
import random
from datetime import datetime, timedelta

# Database connection
def connect_db():
    return mysql.connector.connect(
        host='localhost',
        user='root',
        password='',
        database='test_db_8830'
    )

# Fetch data from database
def fetch_data(query):
    db = connect_db()
    cursor = db.cursor()
    cursor.execute(query)
    result = cursor.fetchall()
    cursor.close()
    db.close()
    return result

# Generate a random date of birth and calculate age
def generate_birthdate():
    end_date = datetime.now() - timedelta(days=365*18)  # Person should be at least 18 years old
    start_date = end_date - timedelta(days=365*52)  # Not older than 70 years
    random_date = start_date + timedelta(days=random.randint(0, (end_date - start_date).days))
    age = (datetime.now() - random_date).days // 365
    return random_date.strftime('%Y-%m-%d'), age

# Generate unique ID and phone number
def generate_unique_id():
    return 'UID-' + ''.join(random.choices('0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ', k=10))

def generate_phone_number():
    return '+91' + ''.join(random.choices('0123456789', k=10))

# Main function to insert data into generated_people
def populate_generated_people(num_records):
    first_names = fetch_data("SELECT name FROM hindu_male_names UNION SELECT name FROM hindu_female_names")
    last_names = fetch_data("SELECT surname FROM hindu_surnames")
    areas = fetch_data("SELECT area_name FROM areas")
    cities_states = fetch_data("SELECT city_name, state_name FROM cities JOIN states ON cities.id = states.id")
    
    db = connect_db()
    cursor = db.cursor()

    for _ in range(num_records):
        unique_id = generate_unique_id()
        first_name = random.choice(first_names)[0]
        middle_name = random.choice(first_names)[0] if random.random() > 0.5 else ''  # 50% chance of having a middle name
        last_name = random.choice(last_names)[0]
        sex = random.choice(['Male', 'Female'])
        birth_date, age = generate_birthdate()
        religion = random.choice(['Hindu', 'Muslim', 'Christian', 'Sikh'])
        street_address = random.choice(areas)[0]
        city_name, state_name = random.choice(cities_states)
        country_name = 'India'
        account_id = generate_unique_id()
        phone_number = generate_phone_number()

        insert_query = """
        INSERT INTO generated_people (unique_id_no, first_name, middle_name, last_name, sex, birth_date, age, religion, street_address, city_name, state_name, country_name, account_id, phone_number)
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
        """
        cursor.execute(insert_query, (unique_id, first_name, middle_name, last_name, sex, birth_date, age, religion, street_address, city_name, state_name, country_name, account_id, phone_number))
    
    db.commit()
    cursor.close()
    db.close()

populate_generated_people(50)
