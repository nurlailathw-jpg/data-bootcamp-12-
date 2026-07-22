```R
# Five core principles
# 1. variable
# 2. data types
# 3. data structure
# 4. function
# 5. control flow

Short cut, working with R 
CTRL + ENTER = run code
CTRL + L = clear console 
CTRL + shift +  s = Source file, run upper to under (All)
CTRL + 
CTRL + 
  Highlight lines and press Ctrl + Shift + C 
to toggle multi-line comments.

basic calculator
1+1
(5*3) / 2

Modduro
5%%2
5%%5
10%%3

Number to the power of ...
5**2
3**2
3**2; 3**3; 5**2

Absolute Value 
คือฟังก์ชันสำหรับเปลี่ยนค่าตัวเลขให้เ
ป็นค่าบวกเสมอ (ระยะห่างจาก 0)ถ้าใส่
เลขลบ  จะได้ เลขบ
เลขบวก จะได้ ค่าเดิม
abs(x) = ลบเครื่องหมายลบออ
ให้เหลือแค่ค่าบวก

x <- c(-10, 5, -3, 0)
abs(x)     
# ผลลัพธ์: 10  5  3  0

-10* -1
# ผลลัพธ์ 10

abs(-99)
# ผลลัพธ์
99


log(2)
exp(10)

# Concept 01 variable
# trick
  # R is case sensitive 
    # Prefer to use small letter 
    # in variable naming
# This is 'Assight' <- (< - = )
# Snake case for variable naming
  # not begin with number


my_name <- "toy"
my_age <-37
my_university <- "YRU"

rm(my_university)

# Concept 2 - Types
#   number, charecter, date, 
#   factor (Catagorical data),
#   logical (TRUE, FALSE)
#   

name <- "toy"
degreee <- "economic"
slogan <- "I'm loving it (McDonalds)"
ages <- 37
gpa <- 3.41

tiktok_lover <- FALSE
ig_lover <- T

# Convert T,F BY.. ! (!negate)
tiktok_lover <- FALSE
    # console : > tiktok_lover <- FALSE
!tiktok_lover
    # console : [1] TRUE

# How to create date 102
today <- "2025-10-04"

# Check class  
  # fomular
    #   class(function)

class(name)
class(ages)
class(gpa)
class(150)
class("datarockie")
class(TRUE)

  # console:
    # > class(ages)
        # [1] "numeric"
    # > class(gpa)
        # [1] "numeric"
    # > class(150)
        # [1] "numeric"
    # > class("datarockie")
        # [1] "character"
    # > class(TRUE)
        # [1] "logical"

# How to create date102
  # How to convert data type By as. ...
  
  class(today)
    # console: [1] "character"
  
  # How to change class(today) 
    # from "character" to numuric
  today <- "2025-10-04"
  today <- as.Date(today)
    class(today)
      # console:[1] "Date"
    
# How to create factor 102
# c : concantnesst
gender <- c("male", "female", "female")
class(gender)
# [1] "character"
gender <- as.factor(gender)
class(gender)
# [1] "factor"

# > gender
  # [1] male   female female
  # # Levels: female male

fruits <- c("orange", "apple", "lemon")
    class(fruits)
    # [1] "character"
fruits <- as.factor(fruits)
    # > class(fruits)
    # [1] "factor"

    # > fruits
    # [1] orange apple  lemon 
    # Levels: apple lemon orange
    
# Benefit of fector
  "Table function" 
  # เพื่อสร้างตารางความถี่ 
  # 1. ตารางความถี่คืออะไร?
  #   # ตารางความถี่ใช้สำหรั
  # บนับว่า "ข้อมูลแต่ละป
  # ระเภท เกิดขึ้นมาซ้ำกันกี่ครั้ง
  # (Count)" เหมาะสำหรับข้อมูลที่เ
  # ป็นกลุ่ม (Categorical Data)
  # เช่น เพศ, สี, แผนก, หรือระดับความพึงพอใจ
  # Can use it 
  # for count each catagorie in factor
  Ex. 
  table(fruits)
  # > table(fruits)
    # fruits
      # apple  lemon orange 
      # 1      1      1 
  
  # > table(gender)
    # gender
    # female   male 
    # 2      1 
  
# Recap : class(), as.(type), is.type()
  is.numeric(100)
  is.factor(fruits)
  is.logical(TRUE)
  
# Ask R if  this is TRUE OR FALSE
  1+1 == 2
  1+9 == 10
  10 < 200 
  5>2
  # 10! = 10
#   R Case sensitive 
  "toy" == "TOY"

  
# Console :
  # >  is.numeric(100)
  # [1] TRUE
  # >   is.factor(fruits)
  # [1] TRUE
  # >   is.logical(TRUE)
  # [1] TRUE
  # >   
  #   > # Ask R if  this is TRUE OR FALSE
  #   >   1+1 == 2
  # [1] TRUE
  # >   1+9 == 10
  # [1] TRUE
  # >   10 < 200 
  # [1] TRUE
  # >   5>2
  # [1] TRUE
  # >   # 10! = 10
  #   > #   R Case sensitive 
  #   >   "toy" == "TOY"
  # [1] FALSE
  # เครื่องหมายเท่ากับคู่ขนาน ==
  
# Concept 03 - Data Structures
  vecter 
  matrix
  list
  datatrame
  
  # vecter
    # commond use
    # Data structure :have numeric, character
    # This is colon :
1:10
    # [1]  1  2  3  4  5  6  7  8  9
    # [10] 10
    
10:50
    # [1] 10 11 12 13 14 15 16 17 18
    # [10] 19 20 21 22 23 24 25 26 27
    # [19] 28 29 30 31 32 33 34 35 36
    # [28] 37 38 39 40 41 42 43 44 45
    # [37] 46 47 48 49 50

# Help function
# higligt that function, 
# F1 On the keyboard

# vacter manual 
  #  c : Combine Values into a Vector or List
friends <- c("toy", "jenny", "lisa", "jisoo", "rose")
    #  Benefit : อยากวิเคราะห์ลูกค้าพร้อมกัน เป็นที่เดียว 5 คน จึงต้องมี vector

    

    
    
  
  











```
