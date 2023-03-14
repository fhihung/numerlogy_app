from flask import Flask, jsonify, request
import json

#declared an empty variable for reassignment
response1 = ''
response2 = ''
response3 = ''

#creating the instance of our flask application
app = Flask(__name__)

#route to entertain our post and get request from flutter app
@app.route('/example', methods = ['GET','POST'])
def nameRoute():

    #fetching the global response variable to manipulate inside the function
    global response1
    global response2
    global response3

    #checking the request type we get from the app
    if(request.method == 'POST'):
        request_data = request.data #getting the response data
        request_data = json.loads(request_data.decode('utf-8')) #converting it from json to key value pair
        day = request_data['day'] #assigning it to name
        month = request_data['month']
        year = request_data['year']
        response1 = f'{day}!'
        response2 = f'{month}!'
        response3 = f'{year}!' #re-assigning response with the name we got from the user
        print (day)
        print (month)
        print (year)
        return " " #to avoid a type error 
    else:
        return jsonify({'day' : response1, 'month' : response2,'year' : response3
        }) #sending data back to your frontend app

if __name__ == "__main__":
    app.run(debug=True)

