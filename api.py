from bottle import route, default_app, get, post, template, request, redirect, error, abort
import mysql.connector
import datetime
import random
import json
import xlsxwriter

# Some const
num = [str(i) for i in range(0, 10)]
uppercase = [chr(i) for i in range(65, 65+25+1)] # In ASCII, uppercase start at 65 and end at 65+25
lowercase = [chr(i) for i in range(97, 97+25+1)] # In ASCII, lowercase start at 97 and end at 97+25
special_char = ["-", "_"]
base64 = num + uppercase + lowercase + special_char
game_code_len = 6
id = ["first","second", "third", "forth", "fifth"]
id2 = ["A", "B", "C", "D"]
char_to_num = {
    "A": 0, "B": 1, "C": 2, "D": 3,
    "first": 1, "second": 2, "third": 3, "forth": 4, "fifth": 5,
}
all_html = ["toxic-positivity-game.html", "toxic-positivity-chat.html", "toxic-positivity-contact.html", "toxic-positivity-acc.html", "index.html", "game-hint.html"]

#Helper function
def load_file(file):
    with open(file, "r", encoding="utf-8") as f:
        return f.read()

def base64_generator(k = game_code_len):
    return "".join(random.choices(base64, k=k))

def load_error(file, **kwargs):
    return template(file, **kwargs)

def record_error(mess):
    with open("error.txt", "a") as f:
        f.write(str(datetime.datetime.now())+": " + str(mess)+"\n")

def receive_data(num):
    admin_conn = mysql.connector.connect(
    host="JakeClark.mysql.pythonanywhere-services.com",
    user="JakeClark",
    password="PlaneAndCars",
    database="JakeClark$default"
    )
    c = admin_conn.cursor()
    c.execute("SELECT ques1, ques2, ques3, ques4, ques5 FROM answer_collection WHERE ans=%s",(num,))
    temp = c.fetchone()
    admin_conn.close()
    return temp
def show_comment(total):
    if ((0<=total) and (total<=5)): return "Bạn chưa hiểu biết về \"Toxic Positivity\", cố gắng lên nhé!"
    elif ((6<=total)and(total<=10)): return "Bạn đã phân biệt được 1 nửa tình huống về Toxic Positivity rồi đó."
    elif ((11<=total) and (total<=15)): return "Bạn đã hiểu 3/4 về \"Toxic Positivity\" rồi nè!"
    else: return "Bạn thật sự hiểu rõ về \"Toxic Positivity\" rồi đó."
def process_data(num):
    data = receive_data(num)
    ans = []
    total = 0
    with open("./static/question_collection.json", "r", encoding="utf-8") as f:
        ques = json.load(f)
        for i in range(5):
            user_answer = data[i]
            temp = []
            #Take question
            temp.append(ques[id[i]]["question"])
            #Take answer
            temp.append(user_answer+". "+ques[id[i]]["answer"][char_to_num[user_answer]])
            #Take score
            temp.append(ques[id[i]]["score"][char_to_num[user_answer]])
            #Add to answer
            ans.append(temp)
            #Add to total
            total+=int(ques[id[i]]["score"][char_to_num[user_answer]])
        return ans, total
def change_id(num, value=base64_generator()):
    conn = mysql.connector.connect(
    host="JakeClark.mysql.pythonanywhere-services.com",
    user="JakeClark",
    password="PlaneAndCars",
    database="JakeClark$default"
    )
    c = conn.cursor()
    c.execute("UPDATE answer_collection SET ans=%s WHERE id=%s", (value, num))
    conn.close()

#Route
@get("/favicon.ico")
def favicon():
    with open("favicon.ico", "rb") as f:
        return f.read()

@get("/<file:re:.*\.html$>")
def load(file):
    if file not in all_html:
        abort(404, "Not found: "+file)
    else:
        return load_file(file)

@get("/toxic-positivity-admin/<file:path>")
def get_spreadsheet(file):
    with open("./excel-file/"+file, "rb") as f:
        return f.read()

@get("/")
def index():
    redirect("/index.html")

@get("/result")
def result():
    #Take id from query, ex. result?id=record
    try:
        ids = request.query["id"]
    except:
        abort(404, "Missing id in query")
        return
    conn = mysql.connector.connect(
    host="JakeClark.mysql.pythonanywhere-services.com",
    user="JakeClark",
    password="PlaneAndCars",
    database="JakeClark$default"
    )
    c = conn.cursor()
    c.execute("SELECT EXISTS(SELECT * FROM answer_collection WHERE ans=%s)",(ids,))
    if c.fetchone()[0]==0:
        abort(404, "Not found: '/result?id="+ids+"'")
        conn.close()
        return
    conn.close()
    data = process_data(ids)
    return template("result",id2=id,data=data[0],total=data[1],comment=show_comment(data[1]),back=ids)

@get("/story")
def get_more():
    #Take id from query, ex. result?id=record
    try:
        back_code = request.query["back"]
    except:
        abort(404, "Missing id in query")
    with open("./static/bo_phantich.json", "r", encoding="utf-8") as f:
        data = json.load(f)
        return template("story",id=id, data=data, char_to_num=char_to_num, code=back_code)

@post("/toxic-positivity-admin")
def collect_answer():
    id = base64_generator()
    admin_conn = mysql.connector.connect(
    host="JakeClark.mysql.pythonanywhere-services.com",
    user="JakeClark",
    password="PlaneAndCars",
    database="JakeClark$default"
    )

    user_true_answer = [request.forms.get(str(i)) for i in range(0, 5)]

    c = admin_conn.cursor()
    c.execute("CREATE TABLE IF NOT EXISTS answer_collection (id int primary key auto_increment, ques1 text, ques2 text, ques3 text, ques4 text, ques5 text)")
    c.execute("INSERT INTO answer_collection (ques1, ques2, ques3, ques4, ques5, ans) VALUES (%s, %s, %s, %s, %s, %s)", (
        user_true_answer[0],
        user_true_answer[1],
        user_true_answer[2],
        user_true_answer[3],
        user_true_answer[4],
        id,
    ))
    admin_conn.commit()

    admin_conn.close()
    return id
@get("/toxic-positivity-admin")
def show_admin():
    admin_conn = mysql.connector.connect(
    host="JakeClark.mysql.pythonanywhere-services.com",
    user="JakeClark",
    password="PlaneAndCars",
    database="JakeClark$default"
    )

    c = admin_conn.cursor(buffered=True)
    c.execute("SHOW TABLES LIKE 'answer_collection'")
    if not c.fetchone():
        return "<p>Có lẽ như là... không có bất kỳ thông tin gì. Hãy vào phần trò chơi để chạy thử và quay lại trang này sau. Nếu không có chuyện gì xảy ra, hãy báo cho admin server nha</p><a href=\"toxic-positivity-game.html\">Vào phần trò chơi</a>"
    c.execute("SELECT * FROM answer_collection")
    full = c.fetchall()
    summary = []
    for i in ["ques1_count", "ques2_count", "ques3_count", "ques4_count", "ques5_count"]:
        c.execute(f"SELECT total FROM {i}")
        temp = [i[0] for i in c.fetchall()]
        summary.append(temp)
    admin_conn.close()
    #Take today val
    today_date = datetime.datetime.now() + datetime.timedelta(hours=7)
    today_date = today_date.strftime("%d-%m-%Y_%H-%M-%S")
    #Create full spreadsheet
    workbook = xlsxwriter.Workbook(f"./excel-file/full_{today_date}.xlsx")
    sum_worksheet = workbook.add_worksheet("Tóm tắt")
    row = 0
    #First row: Name of column
    sum_worksheet.write(row, 0, "Câu hỏi")
    for i in range(4):
        sum_worksheet.write(row, i+1, "Số người chọn đáp án "+id2[i])
    row+=1
    # Others row: Summary
    for answer_count in summary:
        sum_worksheet.write(row, 0, str(row))
        for j in range(len(answer_count)):
            sum_worksheet.write(row, j+1, answer_count[j])
        row+=1
    full_worksheet = workbook.add_worksheet("Chi tiết")
    row = 0
    #First row: Number of column
    full_worksheet.write(row, 0, "Thứ tự người dùng")
    for i in range(5):
        full_worksheet.write(row, i+1, "Câu hỏi "+str(i+1))
    full_worksheet.write(row, 6, "Mã kết quả")
    row+=1
    for record in full:
        for j in range(len(record)):
            full_worksheet.write(row, j, record[j])
        row+=1
    workbook.close()
    if full==None or summary==None:
        return "<p>Có lẽ như là không có bất kỳ thông tin gì. Hãy vào phần trò chơi để chạy thử và quay lại trang này sau. Nếu không có chuyện gì xảy ra, hãy báo cho admin server nha</p><a href=\"toxic-positivity-game.html\">Vào phần trò chơi</a>"
    else:
        return template("toxic-positivity-admin", full=full, summary=summary, time=today_date)

#Error
@error(404)
def page_not_found(code):
    record_error(code)
    return load_error("toxic-positivity-error", image_name="404-error.jpg", image_alt="Hình ảnh minh họa lỗi 404", error_message="Tụi mình không tìm thấy trang này!")
@error(500)
def internal_server_error(code):
    record_error(code)
    return load_error("toxic-positivity-error", image_name="500-error.png", image_alt="Hình ảnh minh họa lỗi 500", error_message="Server đã báo lỗi")

#Main: Set application variable
application = default_app()

# # A very simple Bottle Hello World app for you to get started with...
# from bottle import default_app, route, post, request, redirect
# import pusher

# pusher_client = pusher.Pusher(
#   app_id='1280865',
#   key='939c38ce212d13d3d6d7',
#   secret='7d299c65e047b97a1e50',
#   cluster='ap1',
#   ssl=True
# )

# template = """
# <!DOCTYPE html>
# <head>
#   <title>Pusher Test</title>
#   <script src="https://js.pusher.com/7.0/pusher.min.js"></script>
#   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
#   <script>
#     var datas = "";
#     $("input[type=submit]").click(function(event){
#         event.preventDefault();
#         console.log("Clicked");
#         $.post("/message", {"textbox": "Hello", "submit": "Submit"}, function(){});
#     });
#     // Enable pusher logging - don't include this in production
#     Pusher.logToConsole = true;

#     var pusher = new Pusher('939c38ce212d13d3d6d7', {
#       cluster: 'ap1'
#     });

#     /*var channel = pusher.subscribe('my-channel');
#     channel.bind('my-event', function(data) {
#       alert(JSON.stringify(data));
#     });*/
#   </script>
# </head>
# <body>
#   <h1>Pusher Test</h1>
#   <p>
#     Try publishing an event to channel <code>my-channel</code>
#     with event name <code>my-event</code>.
#   </p>
#   <form action="/message", method="POST">
#       <input type="text" id="textbox" name="textbox" placeholder="Text Box">
#       <input type="submit" value="Submit">
#   </form>
# </body>
# """
# data = "hello world!"
# @route('/')
# def hello_world():
#     pusher_client.trigger('my-channel', 'my-event', {'message': data})
#     return template

# @post("/message")
# def trigger_message():
#     global data
#     if request.forms.get("submit")=="Submit":
#         mess = request.forms.get("textbox")
#         return mess

# application = default_app()

