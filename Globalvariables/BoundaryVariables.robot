*** Variables ***
                                # input for boundary values and mixed match
${Upper Boundary String}  aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
${Mixed Match String}  Aa1!@#$%^&*()_+?><~`-=';:"[]{}
${Numbers}  1234...ee---+++
${upper boundary number}  9999999999999999999999999
&{a}  a=1  b=2  c=3
                                #data for TC_PD_UR04
&{Realdata}  FirstName=test50  LastName=test50  Email=test5023@gmail.com  Phone=9000000001  Password=veridic123  ConfirmPassword=Asdf@12345  MiddleName=test05 Email1=dinesh342243@gmail.com statusop=Closed
&{BusinessRegData1}  LegalName=tester20  ShortName=tester  Address=Housing Board Colony Tadepalligudem West Godavari  City=Tadepalligudem  State=AP  PostalCode=534101  Country=India  WorkPhone=9000000000  Website=https://test.com  SalesTax=1.8  TotalTables=3  TotalOccupancy=10
&{Transaction}  CardNo=4111111111111111  Month=1122  Cvv=123
&{admin_Logins}  Email=naresh5d8@sasi.ac.in   Password=123456789
&{Test_Logins1}  Email=demo11@gmail.com  Password=Asdf@1234
&{TrailXpathDict}  WorkPhoneDict=//div/mat-option/span[contains(text()," +91 ")]
&{enterdata}  taskname=assignNewtask  dateissue=02022020  dateexp=03052020
&{personalinfo}  Firstname=test05  Middlename=test  Lastname=testcase  Phoneno=9999999999  Email=gavirinaresh15@gmail.com
&{oldtemplatedata}  empname=testing  empphone=7894561230  empmail=asdfg@gmail.com  cliname=tested  cliadd=Housing Board Colony Tadepalligudem West Godavari  climail=vjhc@gmail.com  venmail=gjvjhf@gmai.com  projectname=FlairTech  venname=testingEmployee  venphone=7894561230  worknumber=7777  image2=C://Users/Administrator/Desktop/Testing_Automation/upload/p1.jpg  image1=C://Users/Administrator/Desktop/Testing_Automation/upload/p1.jpg  filepath1=C://Users/Administrator/Desktop/Testing_Automation/upload/123.txt  school=aditya  field=B.tech  gpa=7.0  worktype=testing
&{editidata1}  name=ccccccccccccccccccccccc   phone=777777777777777777  email=gmailgmailgmailgmailgmail  cname=78965  cadd=!@#$%^&*(7796464  cemail=asdf@.  fromdate=25032005  todate=90022000  venname=78954  venphone=789456  venemail=79654@.in  worknum=as!@/*  issuedate=00022007  expirydate=30322009  document=C://Users/hai/OneDrive/Desktop/pic.jpg  schoolname=!#*&^65  field=/*+@!  cgpa=o.o  startdate=91022019  endate=3651999  address=7896+-*/!@#$%^&*
${trail1}  &{TrailXpathDict}
&{Test_FBLogins}  Email=heartbeat9676@gmail.com  Password=Asdf@1234
@{TestData}  demo1@gmail.com  Asdf@1234  8500984455   Demo1  tester9  2.8  50  90  Old Manali Manali Kullu  Manali  hP  175131  India  id=mat-option-182 9000000000  www.srikanya.com  4111111111111111  023123  2324  C:\dev\FullFile\PartnerWeb\Resources\Data\Excel Sheet 1.xlsx  Chicken  2  5.99  Chilli Chicken With Onions Spicy  11  150  All Ingredents  C:/Automation/Menu Items/Idly Vada.jpg  1030  1230  C:/Automation/Images/Indian.png  C:/Automation/Images/Ame.jpg  C:/Automation/Images/Indian.jpg  C:/Automation/Images/Chin.jpg  C:/Automation/Images/Ita.jpg  C:/Automation/Images/Medi.jpg  C:/Automation/Images/Mexican.jpg  C:/Automation/Images/Maharaja_Dine_In/Maharaja_Dine_In-1.jpg  C:/Automation/Images/Maharaja_Dine_In/Maharaja_Dine_In-2.jpg  C:/Automation/Images/Maharaja_Dine_In/Maharaja_Dine_In-3.jpg  C:/Automation/Images/Maharaja_Dine_In/Maharaja_Dine_In-4.jpg  C:/Automation/Images/Maharaja_Dine_In/Maharaja_Dine_In-5.jpg  C:/Automation/Images/Maharaja_Dine_In/Maharaja_Dine_In-6.jpg  C:/Automation/Images/Maharaja_Dine_In/Maharaja_Dine_In-7.jpg  C:/Automation/Images/Maharaja_Dine_In/Maharaja_Dine_In-8.jpg  Madison Ave  NewYork  NY  10128  9676021673  1230  1330  Madison Ave3  ''  Tester  8500984455
