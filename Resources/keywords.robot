*** Settings ***
Library   String
Library  SeleniumLibrary
Resource  ../Resources/PO/Userlogin.robot
Resource  ../Resources/PO/EmployeeList.robot
Resource  ../Globalvariables/BoundaryVariables.robot
Resource  ../Globalvariables/xpath.robot

*** Keywords ***
                                                          #login page
test the user login page under lower Upper wrong data practical admin practical manager practical employee conditions
        wait until page contains  Forgot Password?
        Click Element   ${submit}
        sleep  5s
        Reload Page
        sleep  5s
        wait until page contains  Forgot Password?
        Input Text  ${email}    ${Upper Boundary String}
        Input Password  ${pwd}  ${upper boundary number}
        Click Element   ${submit}
        Handle Alert
        Check For Email Error Message
        Reload Page
        sleep  5s
        wait until page contains  Forgot Password?
        Input Text  ${email}    ${Mixed Match String}
        Input Password  ${pwd}  ${Mixed Match String}
        Click Element   ${submit}
        Handle Alert
        sleep  5s
        Check For Email Error Message
        Reload Page
        sleep  5s
        wait until page contains  Forgot Password?
        Input Text  ${email}    &{Realdata}[Email]
        Input Password  ${pwd}  &{Realdata}[Password]
        Click Element   ${submit}
        Handle Alert
        sleep  5s
        wait until page contains  Forgot Password?
        Input Text  ${email}    &{admin_Login}[Email]
        Input Password  ${pwd}  &{admin_Login}[Password]
        Click Element   ${submit}
        sleep  5s
        Check For admin home page Message
        sleep  5s
        Click Element  ${navlog}
        sleep  5s
        Click Element  ${signout}
        sleep  5s
        Reload Page
        sleep  5s
        wait until page contains  Forgot Password?
        Input Text  ${email}    &{Manager_Logins}[Email]
        Input Password  ${pwd}  &{Manager_Logins}[Password]
        Click Element   ${submit}
        Check For manager home page Message
        sleep  5s
        Click Element  ${navlog}
        sleep  5s
        click element   ${signout}
        Sleep  5s
        Reload Page
        Sleep  5s
        wait until page contains  Forgot Password?
        Input Text  ${email}    &{Employee_Logins}[Email]
        Input Password  ${pwd}  &{Employee_Logins}[Password]
        Click Element   ${submit}
        Check For employee home page Message
                                                          #Forgot Password

This test case is to test the forgot password under lower boundary Upper boundary mixed-match wrong data practical data conditions
        sleep  5s
        click element  ${forgot}
        sleep  5s
        click element  ${pok}
        check for forgot valid message
        sleep  2s
        click element  ${forgot}
        sleep  5s
        Input Text   ${pemail}   ${Upper Boundary String}
        click element  ${pok}
        check for forgot valid message
        click element  ${forgot}
        Input Text  ${pemail}   ${Mixed Match String}
        click element  ${pok}
        check for forgot valid message
        click element  ${forgot}
        Input Text  ${pemail}    &{Realdata}[Email]
        sleep  5s
        click element  ${pok}
        sleep  2s
        check for forgot valid message1
        click element  ${forgot}
        Input Text   ${pemail}    &{manager_Logins}[Email]
        sleep  5s
        click element  ${pok}
        check for forgot valid message2
                                                 # Emergency Contact
This test case is to test the employee Editing page of Emergency Contact lower upper wrongdata praticaldata boundary conditions
        Input Text  ${email}    &{employee_Logins}[Email]
       Input Password  ${pwd}  &{employee_Logins}[Password]
       Click Element   ${submit}
       sleep  10s
       Click Element  ${edit}
       sleep  10s
       execute javascript  window.scrollTo(0,30)
       sleep  2s
       Click Element  ${add1}
       sleep  2s
       click element  ${EMname}
       sleep  2s
       Click Element  ${EMdone}
       sleep  2s
       Input Text  ${EMname}  &{oldtemplatedata}[empname]
       sleep  2s
       Click Element  ${EMdone}
       sleep  3s
       click element  ${EMnumber}
       sleep  2s
       Input Text  ${EMnumber}  &{oldtemplatedata}[empphone]
       sleep  2s
       Click Element  ${EMdone}
       sleep  5s
       click Element  ${EMdelete}
       sleep  10s
  ##------Emergency Contact:upperBoundary data--------------
       Reload Page
       sleep  5s
       Click Element  ${edit}
       Sleep  10s
       execute javascript  window.scrollTo(0,30)
       sleep  2s
       Click Element  ${add1}
       Sleep  2s
       Input Text  ${EMname}  &{editidata1}[name]
       Sleep  2s
       Input Text  ${EMnumber}  &{editidata1}[phone]
       Sleep  2s
       Input Text  ${EMmail}  &{editidata1}[email]
       sleep  3s
       Click Element  ${EMdone}
       sleep  5s
  ##------Emergency Contact:Mixed data------------
       Reload Page
       sleep  5s
       execute javascript  window.scrollTo(0,30)
       sleep  2s
       Click Element  ${edit}
       sleep  5s
       Click Element  ${add1}
       sleep  2s
       Input Text  ${EMname}  ${Mixed Match String}
       sleep  2s
       Input Text  ${EMnumber}  ${Mixed Match String}
       sleep  2s
       Input Text  ${EMmail}  ${Mixed Match String}
       sleep  2s
       Click Element  ${EMdone}
       sleep  5s

  ##------Emergency Contact:correct data-------------------
       Reload Page
       sleep  5s
       Click Element  ${edit}
       sleep  5s
       execute javascript  window.scrollTo(0,30)
       sleep  2s
       Click Element  ${add1}
       sleep  2s
       Input Text  ${EMname}  &{oldtemplatedata}[empname]
       sleep  2s
       Input Text  ${EMnumber}  &{oldtemplatedata}[empphone]
       sleep  2s
       Input Text  ${EMmail}  &{oldtemplatedata}[empmail]
       sleep  2s
       Click Element  ${EMdone}
       sleep  5s
       check for the message1
       sleep  3s
       click Element  ${EMdelete}
       sleep  10s
This test case is to test the manager Editing page of Emergency Contact lower upper wrongdata praticaldata boundary conditions
       Input Text  ${email}    &{Manager_Logins}[Email]
       Input Password  ${pwd}  &{Manager_Logins}[Password]
       Click Element   ${submit}
       sleep  10s
       Click Element  ${edit}
       sleep  10s
       execute javascript  window.scrollTo(0,30)
       sleep  2s
       Click Element  ${add1}
       sleep  2s
       click element  ${EMname}
       sleep  2s
       Click Element  ${EMdone}
       sleep  2s
       Input Text  ${EMname}  &{oldtemplatedata}[empname]
       sleep  2s
       Click Element  ${EMdone}
       sleep  3s
       click element  ${EMnumber}
       sleep  2s
       Input Text  ${EMnumber}  &{oldtemplatedata}[empphone]
       sleep  2s
       Click Element  ${EMdone}
       sleep  5s
       click Element  ${EMdelete}
       sleep  10s
  ##------Emergency Contact:upperBoundary data--------------
       Reload Page
       sleep  5s
       Click Element  ${edit}
       Sleep  10s
       execute javascript  window.scrollTo(0,30)
       sleep  2s
       Click Element  ${add1}
       Sleep  2s
       Input Text  ${EMname}  &{editidata1}[name]
       Sleep  2s
       Input Text  ${EMnumber}  &{editidata1}[phone]
       Sleep  2s
       Input Text  ${EMmail}  &{editidata1}[email]
       sleep  3s
       Click Element  ${EMdone}
       sleep  5s
  ##------Emergency Contact:Mixed data------------
       Reload Page
       sleep  5s
       execute javascript  window.scrollTo(0,30)
       sleep  2s
       Click Element  ${edit}
       sleep  5s
       Click Element  ${add1}
       sleep  2s
       Input Text  ${EMname}  ${Mixed Match String}
       sleep  2s
       Input Text  ${EMnumber}  ${Mixed Match String}
       sleep  2s
       Input Text  ${EMmail}  ${Mixed Match String}
       sleep  2s
       Click Element  ${EMdone}
       sleep  5s

  ##------Emergency Contact:correct data-------------------
       Reload Page
       sleep  5s
       Click Element  ${edit}
       sleep  5s
       execute javascript  window.scrollTo(0,30)
       sleep  2s
       Click Element  ${add1}
       sleep  2s
       Input Text  ${EMname}  &{oldtemplatedata}[empname]
       sleep  2s
       Input Text  ${EMnumber}  &{oldtemplatedata}[empphone]
       sleep  2s
       Input Text  ${EMmail}  &{oldtemplatedata}[empmail]
       sleep  2s
       Click Element  ${EMdone}
       sleep  5s
       check for the message1
       sleep  3s
       click Element  ${EMdelete}
       sleep  10s
                                                        #signout
test the user login page under sigout the admin employeee manager logins
        wait until page contains  Forgot Password?
        Input Text  ${email}    &{admin_Login}[Email]
        Input Password  ${pwd}  &{admin_Login}[Password]
        Click Element   ${submit}
        Check For admin home page Message
        sleep  5s
        Click Element  ${navlog}
        sleep  5s
        Click Element  ${signout}
        sleep  5s
        Reload Page
        sleep  5s
        wait until page contains  Forgot Password?
        Input Text  ${email}    &{Manager_Logins}[Email]
        Input Password  ${pwd}  &{Manager_Logins}[Password]
        Click Element   ${submit}
        Check For manager home page Message
        sleep  5s
        Click Element  ${navlog}
        sleep  5s
        click element   ${signout}
        Sleep  5s
        Reload Page
        Sleep  5s
        wait until page contains  Forgot Password?
        Input Text  ${email}    &{Employee_Logins}[Email]
        Input Password  ${pwd}  &{Employee_Logins}[Password]
        Click Element   ${submit}
        Check For employee home page Message
        sleep  5s
        Click Element  ${navlog}
        sleep  5s
        click element   ${signout}
        Sleep  5s
                                           #changepassword

This test case is to test the change password under admin employee and manager
        wait until page contains  Forgot Password?
        Input Text  ${email}    &{admin_Login}[Email]
        Input Password  ${pwd}  &{admin_Login}[Password]
        Click Element   ${submit}
        Check For admin home page Message
        sleep  5s
        Click Element  ${navlog}
        sleep  5s
        Click Element  ${changepassword}
        sleep  5s
        sleep  5s
        Input Text  ${passwordnew}  ${Mixed Match String}
        Sleep  5s
        Input Text   ${passwordconfirm}  ${Upper Boundary String}
        Sleep  5s
        check for forgot password validation
                                             #employee history
This test case is to test the employee Editing page of employee history lower upper wrongdata praticaldata boundary conditions
  ##_____Employment History:Empty data-------------------------------------------------------------------------------------
       Input Text  ${email}    &{employee_Logins}[Email]
       Input Password  ${pwd}  &{employee_Logins}[Password]
       Click Element   ${submit}
       sleep  10s
       Click Element  ${edit}
       sleep  10s
       execute javascript  window.scrollTo(0,455)
       sleep  5s
       Click Element  ${add2}
       sleep  2s
       Click Element  ${ehdone}
       sleep  2s
       Input Text  ${clientname}  &{oldtemplatedata}[cliname]
       sleep  2s
       Click Element  ${ehdone}
       sleep  2s
       Input Text  ${clientaddress}  &{oldtemplatedata}[cliadd]
       sleep  2s
       Click Element  ${ehdone}
       sleep  2s
       click element  ${EFdate}
       sleep  2s
       Click Element  ${selectyear}
       sleep  2s
       click element  ${selectdateef}
       sleep  2s
       Click Element  ${dateselection}
       sleep  2s
       Click Element  ${okay1}
       sleep  2s
       Click Element  ${ehdone}
       sleep  5s
       Click Element  ${ehdelete}
       sleep  5s
   ##_____Employment History:Upper boundary data--------------------
       Reload Page
       sleep  5s
       Click Element  ${edit}
       sleep  10s
       execute javascript  window.scrollTo(0,455)
       sleep  5s
       Click Element  ${add2}
       sleep  2s
       Input Text  ${clientname}  ${Upper Boundary String}
       sleep  2s
       Input Text  ${clientaddress}  ${Upper Boundary String}
       sleep  2s
       Input Text  ${clientmail}  ${Upper Boundary String}
       sleep  2s
       input text  ${inputdate}  11111111
  #       sleep  2s
  #       Click Element  ${selectyear}
  #       sleep  2s
  #       click element  ${selectdateef}
  #       sleep  2s
  #       Click Element  ${dateselection}
  #       sleep  2s
  #       Click Element  ${okay1}
  #       sleep  2s
       Input Text  ${inputdate1}  11111111
  #       sleep  2s
  #       Click Element  ${yearselection}
  #       sleep  2s
  #       Click Element  ${yearok}
  #       sleep  2s
  #       Click Element  ${dateselection}
  #       sleep  2s
  #       Click Element  ${okay2}
  #       sleep  2s
       Input Text  ${vendorname}  ${Upper Boundary String}
       sleep  2s
       Input Text  ${vendornumber}  ${upper boundary number}
       sleep  2s
       Input Text  ${vendormail}  ${Upper Boundary String}
       sleep  2s
       Click Element  ${ehdone}
       sleep  5s
#       Click Element  ${ehdelete}
#       sleep  5s
  ##_____Employment History:Mismatch data---------------
       Reload Page
       sleep  5s
       Click Element  ${edit}
       sleep  10s
       execute javascript  window.scrollTo(0,455)
       sleep  5s
       Click Element  ${add2}
       sleep  2s
       Input Text  ${clientname}  ${Mixed Match String}
       sleep  2s
       Input Text  ${clientaddress}  ${Mixed Match String}
       sleep  2s
       Input Text  ${clientmail}  ${Mixed Match String}
       sleep  2s
       input text  ${inputdate}  11111111
  #       sleep  2s
  #       Click Element  ${selectyear}
  #       sleep  2s
  #       click element  ${selectdateef}
  #       sleep  2s
  #       Click Element  ${dateselection}
  #       sleep  2s
  #       Click Element  ${okay1}
  #       sleep  2s
       Input Text  ${inputdate1}  11111111
  #       sleep  2s
  #       Click Element  ${yearselection}
  #       sleep  2s
  #       Click Element  ${yearok}
  #       sleep  2s
  #       Click Element  ${dateselection}
  #       sleep  2s
  #       Click Element  ${okay2}
  #       sleep  2s
       Input Text  ${vendorname}  ${Mixed Match String}
       sleep  2s
       Input Text  ${vendornumber}  ${Mixed Match String}
       sleep  2s
       Input Text  ${vendormail}  ${Mixed Match String}
       sleep  2s
       Click Element  ${ehdone}
       sleep  5s
  #       Click Element  ${ehdelete}
  #       sleep  5s
  ##_____Employment History:correct data-----------------
       Reload Page
       sleep  5s
       Click Element  ${edit}
       sleep  10s
       execute javascript  window.scrollTo(0,455)
       sleep  5s
       Click Element  ${add2}
       sleep  2s
       Input Text  ${clientname}  &{oldtemplatedata}[cliname]
       sleep  2s
       Input Text  ${clientaddress}  &{oldtemplatedata}[cliadd]
       sleep  2s
       Input Text  ${clientmail}  &{oldtemplatedata}[climail]
       sleep  2s
       click element  ${EFdate}
       sleep  2s
       Click Element  ${selectyear}
       sleep  2s
       click element  ${selectdateef}
       sleep  2s
       Click Element  ${dateselection}
       sleep  2s
       Click Element  ${okay1}
       sleep  2s
       Click Element  ${ETdate}
       sleep  2s
       Click Element  ${yearselection}
       sleep  2s
       Click Element  ${yearok}
       sleep  2s
       Click Element  ${dateselection}
       sleep  2s
       Click Element  ${okay2}
       sleep  2s
       Input Text  ${vendorname}  &{oldtemplatedata}[venname]
       sleep  2s
       Input Text  ${vendornumber}  &{oldtemplatedata}[venphone]
       sleep  2s
       Input Text  ${vendormail}  &{oldtemplatedata}[venmail]
       sleep  2s
       Click Element  ${ehdone}
       sleep  5s
       check for the message2
       sleep  3s
       Click Element  ${ehdelete}
       sleep  5s

This test case is to test the manager Editing page of employee history lower upper wrongdata praticaldata boundary conditions
  ##_____Employment History:Empty data-------------------------------------------------------------------------------------
       Input Text  ${email}    &{Manager_Logins}[Email]
       Input Password  ${pwd}  &{Manager_Logins}[Password]
       Click Element   ${submit}
       sleep  10s
       Click Element  ${edit}
       sleep  10s
       execute javascript  window.scrollTo(0,455)
       sleep  5s
       Click Element  ${add2}
       sleep  2s
       Click Element  ${ehdone}
       sleep  2s
       Input Text  ${clientname}  &{oldtemplatedata}[cliname]
       sleep  2s
       Click Element  ${ehdone}
       sleep  2s
       Input Text  ${clientaddress}  &{oldtemplatedata}[cliadd]
       sleep  2s
       Click Element  ${ehdone}
       sleep  2s
       click element  ${EFdate}
       sleep  2s
       Click Element  ${selectyear}
       sleep  2s
       click element  ${selectdateef}
       sleep  2s
       Click Element  ${dateselection}
       sleep  2s
       Click Element  ${okay1}
       sleep  2s
       Click Element  ${ehdone}
       sleep  5s
       Click Element  ${ehdelete}
       sleep  5s
   ##_____Employment History:Upper boundary data--------------------
       Reload Page
       sleep  5s
       Click Element  ${edit}
       sleep  10s
       execute javascript  window.scrollTo(0,455)
       sleep  5s
       Click Element  ${add2}
       sleep  2s
       Input Text  ${clientname}  ${Upper Boundary String}
       sleep  2s
       Input Text  ${clientaddress}  ${Upper Boundary String}
       sleep  2s
       Input Text  ${clientmail}  ${Upper Boundary String}
       sleep  2s
       input text  ${inputdate}  11111111
  #       sleep  2s
  #       Click Element  ${selectyear}
  #       sleep  2s
  #       click element  ${selectdateef}
  #       sleep  2s
  #       Click Element  ${dateselection}
  #       sleep  2s
  #       Click Element  ${okay1}
  #       sleep  2s
       Input Text  ${inputdate1}  11111111
  #       sleep  2s
  #       Click Element  ${yearselection}
  #       sleep  2s
  #       Click Element  ${yearok}
  #       sleep  2s
  #       Click Element  ${dateselection}
  #       sleep  2s
  #       Click Element  ${okay2}
  #       sleep  2s
       Input Text  ${vendorname}  ${Upper Boundary String}
       sleep  2s
       Input Text  ${vendornumber}  ${upper boundary number}
       sleep  2s
       Input Text  ${vendormail}  ${Upper Boundary String}
       sleep  2s
       Click Element  ${ehdone}
       sleep  5s
#       Click Element  ${ehdelete}
#       sleep  5s
  ##_____Employment History:Mismatch data---------------
       Reload Page
       sleep  5s
       Click Element  ${edit}
       sleep  10s
       execute javascript  window.scrollTo(0,455)
       sleep  5s
       Click Element  ${add2}
       sleep  2s
       Input Text  ${clientname}  ${Mixed Match String}
       sleep  2s
       Input Text  ${clientaddress}  ${Mixed Match String}
       sleep  2s
       Input Text  ${clientmail}  ${Mixed Match String}
       sleep  2s
       input text  ${inputdate}  11111111
  #       sleep  2s
  #       Click Element  ${selectyear}
  #       sleep  2s
  #       click element  ${selectdateef}
  #       sleep  2s
  #       Click Element  ${dateselection}
  #       sleep  2s
  #       Click Element  ${okay1}
  #       sleep  2s
       Input Text  ${inputdate1}  11111111
  #       sleep  2s
  #       Click Element  ${yearselection}
  #       sleep  2s
  #       Click Element  ${yearok}
  #       sleep  2s
  #       Click Element  ${dateselection}
  #       sleep  2s
  #       Click Element  ${okay2}
  #       sleep  2s
       Input Text  ${vendorname}  ${Mixed Match String}
       sleep  2s
       Input Text  ${vendornumber}  ${Mixed Match String}
       sleep  2s
       Input Text  ${vendormail}  ${Mixed Match String}
       sleep  2s
       Click Element  ${ehdone}
       sleep  5s
  #       Click Element  ${ehdelete}
  #       sleep  5s
  ##_____Employment History:correct data-----------------
       Reload Page
       sleep  5s
       Click Element  ${edit}
       sleep  10s
       execute javascript  window.scrollTo(0,455)
       sleep  5s
       Click Element  ${add2}
       sleep  2s
       Input Text  ${clientname}  &{oldtemplatedata}[cliname]
       sleep  2s
       Input Text  ${clientaddress}  &{oldtemplatedata}[cliadd]
       sleep  2s
       Input Text  ${clientmail}  &{oldtemplatedata}[climail]
       sleep  2s
       click element  ${EFdate}
       sleep  2s
       Click Element  ${selectyear}
       sleep  2s
       click element  ${selectdateef}
       sleep  2s
       Click Element  ${dateselection}
       sleep  2s
       Click Element  ${okay1}
       sleep  2s
       Click Element  ${ETdate}
       sleep  2s
       Click Element  ${yearselection}
       sleep  2s
       Click Element  ${yearok}
       sleep  2s
       Click Element  ${dateselection}
       sleep  2s
       Click Element  ${okay2}
       sleep  2s
       Input Text  ${vendorname}  &{oldtemplatedata}[venname]
       sleep  2s
       Input Text  ${vendornumber}  &{oldtemplatedata}[venphone]
       sleep  2s
       Input Text  ${vendormail}  &{oldtemplatedata}[venmail]
       sleep  2s
       Click Element  ${ehdone}
       sleep  5s
       check for the message2
       sleep  3s
       Click Element  ${ehdelete}
       sleep  5s

This test case is to test the employee Editing page of Education History lower upper wrongdata praticaldata boundary conditions
     #-----Education:Empty data-------------------------------------------------------------------------------------
       Input Text  ${email}    &{employee_Logins}[Email]
       Input Password  ${pwd}  &{employee_Logins}[Password]
       Click Element   ${submit}
       sleep  10s
       Click Element  ${edit}
       sleep  10s
       execute javascript  window.scrollTo(0,999)
       sleep  3s
       Click Element  ${add4}
       sleep  2s
       Click element  ${eddone}
       sleep  5s
       Input Text  ${school}  &{oldtemplatedata}[school]
       sleep  2s
       Click element  ${eddone}
       sleep  2s
       Input Text  ${fieldofstudy}  &{oldtemplatedata}[field]
       sleep  2s
       Click element  ${eddone}
       sleep  2s
       click element  ${eddate1}
       sleep  2s
       click element  ${eddate2}
       sleep  2s
       click element  ${eddate3}
       sleep  2s
       Click element  ${eddone}
       sleep  2s
       click element  ${eddate4}
       sleep  2s
       click element  ${eddate5}
       sleep  2s
       click element  ${eddate6}
       sleep  2s
       Click element  ${eddone}
       sleep  2s
       Input Text  ${address}  &{oldtemplatedata}[cliadd]
       sleep  2s
       Click element  ${eddone}
       sleep  3s
       set focus to element  ${document2}
       sleep  5s
       Choose File  ${document2}  &{oldtemplatedata}[filepath1]
       sleep  5s
       click Element  ${eddone}
       sleep  3s
       Click element  ${educationlevel}
       sleep  2s
       Click element  ${selectedu}
       sleep  2s
       Click element  ${eddone}
       sleep  3s
       Input Text  ${gpa}  &{oldtemplatedata}[gpa]
       sleep  2s
       Click element  ${eddone}
       sleep  10s
       Click Element  ${eddelect}
       sleep  3s
#     ###-----Education History: upper boundary----------
       Reload Page
       sleep  5s
       Click Element  ${edit}
       sleep  5s
       Click Element  ${add4}
       sleep  2s
       execute javascript  window.scrollTo(0,999)
       sleep  3s
       Click element  ${educationlevel}
       sleep  2s
       Click element  ${selectedu}
       sleep  2s
       Input Text  ${school}  ${Upper Boundary String}
       sleep  2s
       Input Text  ${fieldofstudy}  ${Upper Boundary String}
       sleep  2s
       Input Text  ${gpa}  ${upper boundary number}
       sleep  2s
       click element  ${eddate1}
       sleep  2s
       click element  ${eddate2}
       sleep  2s
       click element  ${eddate3}
       sleep  2s
       click element  ${eddate4}
       sleep  2s
       click element  ${eddate5}
       sleep  2s
       click element  ${eddate6}
       sleep  2s
       Input Text  ${address}  ${Upper Boundary String}
       sleep  2s
       set focus to element  ${document2}
       sleep  5s
       Choose File  ${document2}  &{oldtemplatedata}[filepath1]
       sleep  5s
       click Element  ${eddone}
       sleep  5s
#       Click Element  ${eddelect}
#       sleep  3s
   ####-----Education History:Mixed Match String------------------
       Reload Page
       sleep  5s
       Click Element  ${edit}
       sleep  5s
       Click Element  ${add4}
       sleep  2s
       execute javascript  window.scrollTo(0,999)
       sleep  3s
       Click element  ${educationlevel}
       sleep  2s
       Click element  ${selectedu}
       sleep  2s
       Input Text  ${school}  ${Mixed Match String}
       sleep  2s
       Input Text  ${fieldofstudy}  ${Mixed Match String}
       sleep  2s
       Input Text  ${gpa}  ${Mixed Match String}
       sleep  2s
       click element  ${eddate1}
       sleep  2s
       click element  ${eddate2}
       sleep  2s
       click element  ${eddate3}
       sleep  2s
       click element  ${eddate4}
       sleep  2s
       click element  ${eddate5}
       sleep  2s
       click element  ${eddate6}
       sleep  2s
       Input Text  ${address}  ${Mixed Match String}
       sleep  2s
       set focus to element  ${document2}
       sleep  5s
       Choose File  ${document2}  &{oldtemplatedata}[filepath1]
       sleep  5s
       click Element  ${eddone}
       sleep  5s
   ###-----Education History: Correct Data-------------
       Reload Page
       sleep  7s
       Click Element  ${edit}
       sleep  5s
       Click Element  ${add4}
       sleep  2s
       execute javascript  window.scrollTo(0,775)
       sleep  3s
       Click element  ${educationlevel}
       sleep  2s
       Click element  ${selectedu}
       sleep  2s
       Input Text  ${school}  &{oldtemplatedata}[school]
       sleep  2s
       Input Text  ${fieldofstudy}  &{oldtemplatedata}[field]
       sleep  2s
       Input Text  ${gpa}  &{oldtemplatedata}[gpa]
       sleep  2s
       click element  ${eddate1}
       sleep  2s
       click element  ${eddate2}
       sleep  2s
       click element  ${eddate3}
       sleep  2s
       click element  ${eddate4}
       sleep  2s
       click element  ${eddate5}
       sleep  2s
       click element  ${eddate6}
       sleep  2s
       Input Text  ${address}  &{oldtemplatedata}[cliadd]
       sleep  2s
       set focus to element  ${document2}
       sleep  5s
       Choose File  ${document2}  &{oldtemplatedata}[filepath1]
       sleep  5s
       click Element  ${eddone}
       sleep  5s
       check for the message4
       sleep  3s
       Click Element  ${eddelect}
       sleep  3s

This test case is to test the manager Editing page of Education History lower upper wrongdata praticaldata boundary conditions
       Input Text  ${email}    &{Manager_Logins}[Email]
       Input Password  ${pwd}  &{Manager_Logins}[Password]
       Click Element   ${submit}
       sleep  10s
       Click Element  ${edit}
       sleep  10s
       execute javascript  window.scrollTo(0,999)
       sleep  3s
       Click Element  ${add4}
       sleep  2s
       Click element  ${eddone}
       sleep  5s
       Input Text  ${school}  &{oldtemplatedata}[school]
       sleep  2s
       Click element  ${eddone}
       sleep  2s
       Input Text  ${fieldofstudy}  &{oldtemplatedata}[field]
       sleep  2s
       Click element  ${eddone}
       sleep  2s
       click element  ${eddate1}
       sleep  2s
       click element  ${eddate2}
       sleep  2s
       click element  ${eddate3}
       sleep  2s
       Click element  ${eddone}
       sleep  2s
       click element  ${eddate4}
       sleep  2s
       click element  ${eddate5}
       sleep  2s
       click element  ${eddate6}
       sleep  2s
       Click element  ${eddone}
       sleep  2s
       Input Text  ${address}  &{oldtemplatedata}[cliadd]
       sleep  2s
       Click element  ${eddone}
       sleep  3s
       set focus to element  ${document2}
       sleep  5s
       Choose File  ${document2}  &{oldtemplatedata}[filepath1]
       sleep  5s
       click Element  ${eddone}
       sleep  3s
       Click element  ${educationlevel}
       sleep  2s
       Click element  ${selectedu}
       sleep  2s
       Click element  ${eddone}
       sleep  3s
       Input Text  ${gpa}  &{oldtemplatedata}[gpa]
       sleep  2s
       Click element  ${eddone}
       sleep  10s
       Click Element  ${eddelect}
       sleep  3s
#     ###-----Education History: upper boundary----------
       Reload Page
       sleep  5s
       Click Element  ${edit}
       sleep  5s
       Click Element  ${add4}
       sleep  2s
       execute javascript  window.scrollTo(0,999)
       sleep  3s
       Click element  ${educationlevel}
       sleep  2s
       Click element  ${selectedu}
       sleep  2s
       Input Text  ${school}  ${Upper Boundary String}
       sleep  2s
       Input Text  ${fieldofstudy}  ${Upper Boundary String}
       sleep  2s
       Input Text  ${gpa}  ${upper boundary number}
       sleep  2s
       click element  ${eddate1}
       sleep  2s
       click element  ${eddate2}
       sleep  2s
       click element  ${eddate3}
       sleep  2s
       click element  ${eddate4}
       sleep  2s
       click element  ${eddate5}
       sleep  2s
       click element  ${eddate6}
       sleep  2s
       Input Text  ${address}  ${Upper Boundary String}
       sleep  2s
       set focus to element  ${document2}
       sleep  5s
       Choose File  ${document2}  &{oldtemplatedata}[filepath1]
       sleep  5s
       click Element  ${eddone}
       sleep  5s
#       Click Element  ${eddelect}
#       sleep  3s
   ####-----Education History:Mixed Match String------------------
       Reload Page
       sleep  5s
       Click Element  ${edit}
       sleep  5s
       Click Element  ${add4}
       sleep  2s
       execute javascript  window.scrollTo(0,999)
       sleep  3s
       Click element  ${educationlevel}
       sleep  2s
       Click element  ${selectedu}
       sleep  2s
       Input Text  ${school}  ${Mixed Match String}
       sleep  2s
       Input Text  ${fieldofstudy}  ${Mixed Match String}
       sleep  2s
       Input Text  ${gpa}  ${Mixed Match String}
       sleep  2s
       click element  ${eddate1}
       sleep  2s
       click element  ${eddate2}
       sleep  2s
       click element  ${eddate3}
       sleep  2s
       click element  ${eddate4}
       sleep  2s
       click element  ${eddate5}
       sleep  2s
       click element  ${eddate6}
       sleep  2s
       Input Text  ${address}  ${Mixed Match String}
       sleep  2s
       set focus to element  ${document2}
       sleep  5s
       Choose File  ${document2}  &{oldtemplatedata}[filepath1]
       sleep  5s
       click Element  ${eddone}
       sleep  5s
   ###-----Education History: Correct Data-------------
       Reload Page
       sleep  7s
       Click Element  ${edit}
       sleep  5s
       Click Element  ${add4}
       sleep  2s
       execute javascript  window.scrollTo(0,775)
       sleep  3s
       Click element  ${educationlevel}
       sleep  2s
       Click element  ${selectedu}
       sleep  2s
       Input Text  ${school}  &{oldtemplatedata}[school]
       sleep  2s
       Input Text  ${fieldofstudy}  &{oldtemplatedata}[field]
       sleep  2s
       Input Text  ${gpa}  &{oldtemplatedata}[gpa]
       sleep  2s
       click element  ${eddate1}
       sleep  2s
       click element  ${eddate2}
       sleep  2s
       click element  ${eddate3}
       sleep  2s
       click element  ${eddate4}
       sleep  2s
       click element  ${eddate5}
       sleep  2s
       click element  ${eddate6}
       sleep  2s
       Input Text  ${address}  &{oldtemplatedata}[cliadd]
       sleep  2s
       set focus to element  ${document2}
       sleep  5s
       Choose File  ${document2}  &{oldtemplatedata}[filepath1]
       sleep  5s
       click Element  ${eddone}
       sleep  5s
       check for the message4
       sleep  3s
       Click Element  ${eddelect}
       sleep  3s

This test case is to test the employee Editing page of Work Authorization lower upper wrongdata praticaldata boundary conditions
       ###--Work Authorization:empty data-------------------------------------------------------------------------------------
       Input Text  ${email}    &{employee_Logins}[Email]
       Input Password  ${pwd}  &{employee_Logins}[Password]
       Click Element   ${submit}
       sleep  10s
       Click Element  ${edit}
       sleep  10s
       execute javascript  window.scrollTo(0,750)
       sleep  5s
       Click Element  ${add3}
       sleep  2s
       execute javascript  window.scrollTo(0,775)
       sleep  3s
       Click element  ${Wdone}
       sleep  5s
       Input Text  ${worknumber}  &{oldtemplatedata}[worknumber]
       sleep  3s
       Click element  ${Wdone}
       sleep  5s
       click element  ${wadate1}
       sleep  2s
       click element  ${wadate2}
       sleep  2s
       click element  ${wadate3}
       sleep  2s
       Click element  ${Wdone}
       sleep  2s
       click element  ${wadate4}
       sleep  2s
       click element  ${wadate5}
       sleep  2s
       click element  ${wadate6}
       sleep  2s
       Click element  ${Wdone}
       sleep  5s
       Click Element  ${worktype}
       sleep  2s
       Click Element  ${worktypvalue}
       sleep  2s
       Click element  ${Wdone}
       sleep  5s
       set focus to element  ${document1}
       sleep  2s
       Choose File  ${document1}  &{oldtemplatedata}[filepath1]
       sleep  7s
       Click element  ${Wdone}
       sleep  7s
       click element  ${Wdelete}
       sleep  5s
  ###-----Work Authorization:UpperBoundary----------------
       Reload Page
       sleep  5s
       Click Element  ${edit}
       sleep  7s
       execute javascript  window.scrollTo(0,750)
       sleep  5s
       Click Element  ${add3}
       sleep  2s
       execute javascript  window.scrollTo(0,775)
       sleep  3s
       Click Element  ${worktype}
       sleep  2s
       Click Element  ${worktypvalue}
       sleep  2s
       Input Text  ${worknumber}  ${upper boundary number}
       sleep  3s
       click element  ${wadate1}
       sleep  2s
       click element  ${wadate2}
       sleep  2s
       click element  ${wadate3}
       sleep  2s
       click element  ${wadate4}
       sleep  2s
       click element  ${wadate5}
       sleep  2s
       click element  ${wadate6}
       sleep  2s
       set focus to element  ${document1}
       sleep  2s
       Choose File  ${document1}  &{oldtemplatedata}[filepath1]
       sleep  5s
       Click element  ${Wdone}
       sleep  5s
       click element  ${Wdelete}
       sleep  5s
   ###-----Work Authorization:MixedData----------
       Reload Page
       sleep  5s
       Click Element  ${edit}
       sleep  7s
       execute javascript  window.scrollTo(0,750)
       sleep  5s
       Click Element  ${add3}
       sleep  2s
       execute javascript  window.scrollTo(0,775)
       sleep  3s
       Click Element  ${worktype}
       sleep  2s
       Click Element  ${worktypvalue}
       sleep  2s
       Input Text  ${worknumber}  ${Mixed Match String}
       sleep  3s
       click element  ${wadate1}
       sleep  2s
       click element  ${wadate2}
       sleep  2s
       click element  ${wadate3}
       sleep  2s
       click element  ${wadate4}
       sleep  2s
       click element  ${wadate5}
       sleep  2s
       click element  ${wadate6}
       sleep  2s
       set focus to element  ${document1}
       sleep  2s
       Choose File  ${document1}  &{oldtemplatedata}[filepath1]
       sleep  5s
       Click element  ${Wdone}
       sleep  5s
       click element  ${Wdelete}
       sleep  5s
  ###------Work Authorization:corret Data--------------------
       Reload Page
       sleep  5s
       Click Element  ${edit}
       sleep  7s
       execute javascript  window.scrollTo(0,750)
       sleep  5s
       Click Element  ${add3}
       sleep  2s
       execute javascript  window.scrollTo(0,775)
       sleep  3s
       Click Element  ${worktype}
       sleep  2s
       Click Element  ${worktypvalue}
       sleep  2s
       Input Text  ${worknumber}  &{oldtemplatedata}[worknumber]
       sleep  3s
       click element  ${wadate1}
       sleep  2s
       click element  ${wadate2}
       sleep  2s
       click element  ${wadate3}
       sleep  2s
       click element  ${wadate4}
       sleep  2s
       click element  ${wadate5}
       sleep  2s
       click element  ${wadate6}
       sleep  2s
       set focus to element  ${document1}
       sleep  2s
       Choose File  ${document1}  &{oldtemplatedata}[filepath1]
       sleep  5s
       Click element  ${Wdone}
       sleep  5s
       check for the message3
       sleep  3s
       click element  ${Wdelete}
       sleep  5s

This test case is to test the manager Editing page of Work Authorization lower upper wrongdata praticaldata boundary conditions
       Input Text  ${email}    &{Manager_Logins}[Email]
       Input Password  ${pwd}  &{Manager_Logins}[Password]
       Click Element   ${submit}
       sleep  10s
       Click Element  ${edit}
       sleep  10s
       execute javascript  window.scrollTo(0,750)
       sleep  5s
       Click Element  ${add3}
       sleep  2s
       execute javascript  window.scrollTo(0,775)
       sleep  3s
       Click element  ${Wdone}
       sleep  5s
       Input Text  ${worknumber}  &{oldtemplatedata}[worknumber]
       sleep  3s
       Click element  ${Wdone}
       sleep  5s
       click element  ${wadate1}
       sleep  2s
       click element  ${wadate2}
       sleep  2s
       click element  ${wadate3}
       sleep  2s
       Click element  ${Wdone}
       sleep  2s
       click element  ${wadate4}
       sleep  2s
       click element  ${wadate5}
       sleep  2s
       click element  ${wadate6}
       sleep  2s
       Click element  ${Wdone}
       sleep  5s
       Click Element  ${worktype}
       sleep  2s
       Click Element  ${worktypvalue}
       sleep  2s
       Click element  ${Wdone}
       sleep  5s
       set focus to element  ${document1}
       sleep  2s
       Choose File  ${document1}  &{oldtemplatedata}[filepath1]
       sleep  7s
       Click element  ${Wdone}
       sleep  7s
       click element  ${Wdelete}
       sleep  5s
  ###-----Work Authorization:UpperBoundary----------------
       Reload Page
       sleep  5s
       Click Element  ${edit}
       sleep  7s
       execute javascript  window.scrollTo(0,750)
       sleep  5s
       Click Element  ${add3}
       sleep  2s
       execute javascript  window.scrollTo(0,775)
       sleep  3s
       Click Element  ${worktype}
       sleep  2s
       Click Element  ${worktypvalue}
       sleep  2s
       Input Text  ${worknumber}  ${upper boundary number}
       sleep  3s
       click element  ${wadate1}
       sleep  2s
       click element  ${wadate2}
       sleep  2s
       click element  ${wadate3}
       sleep  2s
       click element  ${wadate4}
       sleep  2s
       click element  ${wadate5}
       sleep  2s
       click element  ${wadate6}
       sleep  2s
       set focus to element  ${document1}
       sleep  2s
       Choose File  ${document1}  &{oldtemplatedata}[filepath1]
       sleep  5s
       Click element  ${Wdone}
       sleep  5s
       click element  ${Wdelete}
       sleep  5s
   ###-----Work Authorization:MixedData----------
       Reload Page
       sleep  5s
       Click Element  ${edit}
       sleep  7s
       execute javascript  window.scrollTo(0,750)
       sleep  5s
       Click Element  ${add3}
       sleep  2s
       execute javascript  window.scrollTo(0,775)
       sleep  3s
       Click Element  ${worktype}
       sleep  2s
       Click Element  ${worktypvalue}
       sleep  2s
       Input Text  ${worknumber}  ${Mixed Match String}
       sleep  3s
       click element  ${wadate1}
       sleep  2s
       click element  ${wadate2}
       sleep  2s
       click element  ${wadate3}
       sleep  2s
       click element  ${wadate4}
       sleep  2s
       click element  ${wadate5}
       sleep  2s
       click element  ${wadate6}
       sleep  2s
       set focus to element  ${document1}
       sleep  2s
       Choose File  ${document1}  &{oldtemplatedata}[filepath1]
       sleep  5s
       Click element  ${Wdone}
       sleep  5s
       click element  ${Wdelete}
       sleep  5s
  ###------Work Authorization:corret Data--------------------
       Reload Page
       sleep  5s
       Click Element  ${edit}
       sleep  7s
       execute javascript  window.scrollTo(0,750)
       sleep  5s
       Click Element  ${add3}
       sleep  2s
       execute javascript  window.scrollTo(0,775)
       sleep  3s
       Click Element  ${worktype}
       sleep  2s
       Click Element  ${worktypvalue}
       sleep  2s
       Input Text  ${worknumber}  &{oldtemplatedata}[worknumber]
       sleep  3s
       click element  ${wadate1}
       sleep  2s
       click element  ${wadate2}
       sleep  2s
       click element  ${wadate3}
       sleep  2s
       click element  ${wadate4}
       sleep  2s
       click element  ${wadate5}
       sleep  2s
       click element  ${wadate6}
       sleep  2s
       set focus to element  ${document1}
       sleep  2s
       Choose File  ${document1}  &{oldtemplatedata}[filepath1]
       sleep  5s
       Click element  ${Wdone}
       sleep  5s
       check for the message3
       sleep  3s
       click element  ${Wdelete}
       sleep  5s
This test case is to test the updating the ProfilePicture of an employee
       Input Text  ${email}    &{employee_Logins}[Email]
       Input Password  ${pwd}  &{employee_Logins}[Password]
       Click Element   ${submit}
       sleep  10s
       Choose File  ${profilepath}  &{oldtemplatedata}[image2]
       sleep  10s
This test case is to test the updating the ProfilePicture of an manager
        Input Text  ${email}    &{Manager_Logins}[Email]
        Input Password  ${pwd}  &{Manager_Logins}[Password]
        Click Element   ${submit}
        sleep  10s
        Choose File  ${profilepath}  &{oldtemplatedata}[image2]
        sleep  10s

                                                    #Forgot Password
This test case is to test the forgot password under lower boundary conditions
        click element  ${forgot}
        click element  ${pok}
        check for forgot valid message
test the user forgot password under Upper boundary conditions
        click element  ${forgot}
        sleep  5s
        Input Text   ${pemail}   ${Upper Boundary String}
        click element  ${pok}
        check for forgot valid message
test the user forgot password under mixed-match conditions
        click element  ${forgot}
        Input Text  ${pemail}   ${Mixed Match String}
        click element  ${pok}
        check for forgot valid message
test the user forgot password under wrong data conditions
        click element  ${forgot}
        Input Text  ${pemail}    &{Realdata}[Email]
        sleep  5s
        click element  ${pok}
        sleep  2s
        check for forgot valid message1
test the user forgot password under practical data conditions
        click element  ${forgot}
        Input Text   ${pemail}    &{admin_Login}[Email]
        click element  ${pok}
        check for forgot valid message2

                                          #inviteEmployee
This test case is to test the Invite employee through Admin lower upper wrongdata praticaldata boundary conditions
        Input Text  ${email}    &{admin_Login}[Email]
        Input Password  ${pwd}  &{admin_Login}[Password]
        Click Element   ${submit}
        sleep   5s
        goto    https://connect.flairtechno.com/console/inviteemployee
        sleep  5s
        Click Element  ${invitebut}
        sleep  2s
        Click Element   ${inviteok}
        wait until page contains  Invalid email format
        sleep   5s
        Click Element   ${invitebut}
        sleep  5s
        Input Text  ${inviteinput}     ${Upper Boundary String}
        Click Element   ${inviteok}
        wait until page contains  Invalid email format
        sleep   5s
        Click Element  ${invitebut}
        sleep  5s
        Input Text  ${inviteinput}    ${Mixed Match String}
        Click Element   ${inviteok}
        wait until page contains  Invalid email format
        sleep   5s
        Click Element   ${invitebut}
        sleep  5s
        Input Text  ${inviteinput}      naresh5d8@sasi.ac.in
        Click Element   ${inviteok}
        wait until page contains  Employee already exists!
        sleep   5s
        Click Element   ${invitebut}
        sleep  5s
        Input Text  ${inviteinput}     naresh58@sasi.ac.in
        Click Element  ${inviteok}
        wait until page contains  naresh58@sasi.ac.in has been invited successfully
        sleep  2s
This test case is to test the Invite employee through Manager lower upper wrongdata praticaldata boundary conditions
        Input Text  ${email}    &{manager_Logins}[Email]
        Input Password  ${pwd}  &{manager_Logins}[Password]
        Click Element   ${submit}
        sleep   5s
        goto    https://connect.flairtechno.com/console/inviteemployee
        sleep  5s
        Click Element  ${invitebut}
        sleep  2s
        Click Element   ${inviteok}
        wait until page contains  Invalid email format
        sleep   5s
        Click Element   ${invitebut}
        sleep  5s
        Input Text  ${inviteinput}     ${Upper Boundary String}
        Click Element   ${inviteok}
        wait until page contains  Invalid email format
        sleep   5s
        Click Element  ${invitebut}
        sleep  5s
        Input Text  ${inviteinput}    ${Mixed Match String}
        Click Element   ${inviteok}
        wait until page contains  Invalid email format
        sleep   5s
        Click Element   ${invitebut}
        sleep  5s
        Input Text  ${inviteinput}      naresh5d8@sasi.ac.in
        Click Element   ${inviteok}
        wait until page contains  Employee already exists!
        sleep   5s
        Click Element   ${invitebut}
        sleep  5s
        Input Text  ${inviteinput}     naresh58@sasi.ac.in
        Click Element  ${inviteok}
        wait until page contains  naresh58@sasi.ac.in has been invited successfully
        sleep  2s
This test case is to test admin excel and pdf download
        Input Text  ${email}    &{admin_Login}[Email]
        Input Password  ${pwd}  &{admin_Login}[Password]
        Click Element   ${submit}
        sleep   5s
        Click Element   ${navbar}
        goto    ${projectgoto}
        sleep  5s
        Click Element   ${pdf}
        sleep   10s
        Click Element   ${pdfdownload}
        Sleep  5s
        reload page
        sleep  5s
        Click Element   ${exceltask}
        sleep  5s
        set focus to element    ${exceldownload}
        Click Element   ${exceldownload}
        sleep  5s
This test case is to test manager excel and pdf download
        Input Text  ${email}    &{manager_Logins}[Email]
        Input Password  ${pwd}  &{manager_Logins}[Password]
        Click Element   ${submit}
        sleep   5s
        Click Element   ${navbar}
        goto    ${projectgoto}
        sleep  5s
        Click Element   ${pdf}
        sleep   10s
        Click Element   ${pdfdownload}
        Sleep  5s
        reload page
        sleep  5s
        Click Element   ${exceltask}
        sleep  5s
        set focus to element    ${exceldownload}
        Click Element   ${exceldownload}
        sleep  5s
This test case is to test employee excel and pdf download
        Input Text  ${email}    &{employee_Logins}[Email]
        Input Password  ${pwd}  &{employee_Logins}[Password]
        Click Element   ${submit}
        sleep   5s
        Click Element   ${navbar}
        goto    ${projectgoto}
        sleep  5s
        Click Element   ${pdf}
        sleep   10s
        Click Element   ${pdfdownload}
        Sleep  5s
        reload page
        sleep  5s
        Click Element   ${exceltask}
        sleep  5s
        set focus to element    ${exceldownload}
        Click Element   ${exceldownload}
        sleep  5s

This test case is to test the new sub task in manager logins
        Input Text  ${email}    &{manager_Logins}[Email]
        Input Password  ${pwd}  &{manager_Logins}[Password]
        Click Element   ${submit}
        sleep   5s
        goto  ${taskmanagement1}
        sleep  10s
        click element  ${project}
        sleep  2s
        click element  ${list2}
        sleep  2s
        click element  ${subedit}
        sleep  2s
        input text   ${commentinput}       automation comment
        sleep  5s
        click element  ${commentbutton}
        sleep  10s
        click element  ${commentdelete}
        sleep  5s
        Handle alert  accept
        sleep  10s
This test case is to test the new sub task comment in admin logins
        Input Text  ${email}    &{admin_Login}[Email]
        Input Password  ${pwd}  &{admin_Login}[Password]
        Click Element   ${submit}
        sleep   5s
        goto  ${taskmanagement1}
        sleep  10s
        click element  ${project}
        sleep  2s
        click element  ${list1}
        sleep  2s
        click element  ${subedit}
        sleep  2s
        input text   ${commentinput}       automation comment
        sleep  5s
        click element  ${commentbutton}
        sleep  10s
        click element  ${commentdelete}
        sleep  5s
        Handle alert  accept
        sleep  10s
This test case is to test the new sub task comment in manager logins
        Input Text  ${email}    &{manager_Logins}[Email]
        Input Password  ${pwd}  &{manager_Logins}[Password]
        Click Element   ${submit}
        sleep   5s
        goto  ${taskmanagement1}
        sleep  10s
        click element  ${project}
        sleep  2s
        click element  ${list1}
        sleep  2s
        click element  ${subedit}
        sleep  2s
        input text   ${commentinput}       automation comment
        sleep  5s
        click element  ${commentbutton}
        sleep  10s
        click element  ${commentdelete}
        sleep  5s
        Handle alert  accept
        sleep  10s
This test case is to test the new sub task comment in employee logins
        Input Text  ${email}    &{employee_Logins}[Email]
        Input Password  ${pwd}  &{employee_Logins}[Password]
        Click Element   ${submit}
        sleep   5s
        goto  ${taskmanagement1}
        sleep  10s
        click element  ${project}
        sleep  2s
        click element  ${list1}
        sleep  2s
        click element  ${subedit}
        sleep  2s
        input text   ${commentinput}       automation comment
        sleep  5s
        click element  ${commentbutton}
        sleep  10s
        click element  ${ecommentdelete}
        sleep  5s
        Handle alert  accept
        sleep  10s


#test the all tabs in employee page
#        Input Text  ${email}    &{admin_Login}[Email]
#        Input Password  ${pwd}  &{admin_Login}[Password]
#        Click Element   ${submit}
#        sleep   5s
#        Click Element   ${emp}
#        Click Element   ${active}
#        sleep  1s
#        Click Element   ${inactive}
#        sleep  1s
#        Click Element   ${suspended}
#        sleep  1s
#        Click Element   ${inactive}
#        Click Element   ${selected}
#        Click Element   ${inactive}
#        sleep  5s
#        click element   xpath=${activation}
#        sleep   5s
#        Click Element   ${more}
#        sleep   2s
#        Click Element   ${invite}
#        sleep  5s
#        Click Element   xpath=${ok1}
#        Check For invite Message












































This test case is for Education of employee
        Input Text  ${email}    &{admin_Logins}[Email]
        Input Password  ${pwd}  &{admin_Logins}[Password]
        Click Element   ${submit}
        sleep  10s
        set focus to element  ${profilepath}
        sleep  5s
        Choose File  ${profilepath}  &{oldtemplatedata}[image]
        sleep  10s
#        Click Element  ${edit}
#        sleep  2s
#        Click Element  ${add3}
#        sleep  2s
#        Input Text  ${worktype}  &{oldtemplatedata}[worktype]
#        sleep  2s
#        Input Text  ${worknumber}  &{oldtemplatedata}[worknumber]
#        sleep  2s
#        Input Text  ${issuedate}  &{enterdata}[dateissue]
#        sleep  2s
#        Input Text  ${expirydate}  &{enterdata}[dateexp]
#        sleep  2s
#        set focus to element  ${document1}
#        sleep  2s
#        Choose File  ${document1}  &{oldtemplatedata}[filepath1]
#        sleep  10s
#        #Handle Alert
#        #sleep  5s
#        Click Element  //*[@id="add_row_for_emergency_contact"]/div/form/div[2]/button[2]






































test the taskmaneger of the employee
        Input Text  ${email}    &{admin_Logins}[Email]
        Input Password  ${pwd}  &{admin_Logins}[Password]
        Click Element   ${submit}
        sleep  5s
        goto  ${Emproject}
        sleep  5s
        goto  ${EMtask}
        sleep  5s
        Click Element  ${unknown}
        sleep  2s
        Input Text  ${TSname}    testing
#        click element  xpath=/html/body/div[7]/div[3]/div/main/div/form/div/div[2]/div/div/div
#        sleep  5s
#        #Input Text  xpath=/html/body/div[7]/div[3]/div/main/div/form/div/div[2]/div/div/div  Bug
#        select option from list  xpath=/html/body/div[7]/div[3]/div/main/div/form/div/div[2]/div/div/div  //*[@id="menu-"]/div[3]/ul/li[3]
#        sleep  5s
        Input Text  ${description}  completed
        Input Text  ${Taskdate}     20042020
        Input Text  ${Taskdate1}    03052020
        Input Text  ${addemployee}  naresh5d8@sasi.ac.in
#        Input Text
#        Input Text
#        Input Text
#        Input Text































                                                                #template
test the Invite new user Upper boundary conditions
        Input Text  ${email}    &{admin_Logins}[Email]
        Input Password  ${pwd}  &{admin_Logins}[Password]
        Click Element   ${submit}
        sleep   5s
        Click Element   ${temp}
        Click Element   ${done}
        Click Element   xpath=${ok}
        Check For Email valid Message

test the all tabs in employee page
        Input Text  ${email}    &{admin_Logins}[Email]
        Input Password  ${pwd}  &{admin_Logins}[Password]
        Click Element   ${submit}
        sleep   5s
        Click Element   ${emp}
        Click Element   ${active}
        sleep  1s
        Click Element   ${inactive}
        sleep  1s
        Click Element   ${suspended}
        sleep  1s
        Click Element   ${inactive}
        Click Element   ${selected}
        Click Element   ${inactive}
#        sleep  5s
#        Wait Until Element Is Visible   ${activation}
#        Select Checkbox     ${activation}
#        sleep   5s
#        Click Element   ${more}
         Click Element   ${active}
         Click Element   ${id}
         Click Element   ${promote}
         sleep  10s
         Click Element   ${promote}
         Click Element   ${suspend}
         sleep  10s
         Click Element   ${suspend}
         Click Element   ${print}
         sleep  10s
         Set Focus To Element   //*[@id="profile"]/div[1]/img
         click Element   ${file}
         Choose file     ${file}   D:\Testing\flairtech-vs\Testing\upload\1.jpg

test the pdf and excel file download
        Input Text  ${email}    &{admin_Logins}[Email]
        Input Password  ${pwd}  &{admin_Logins}[Password]
        Click Element   ${submit}
        sleep   5s
        Click Element   ${task}
        Click Element   ${pdf}
        sleep   2s
        Click Element   ${excel}
        Sleep  5s
        Click Element  ${newproj}
        sleep  2s
        Input Text  ${pname}    &{Realdata}[FirstName]
        click element  xpath=${status}
        sleep  5s
        Select From List By Value  xpath=/html/body/div[2]/div/div/div/form/div[1]/div[2]/select  Closed
        sleep  5s
        input text  //*[@id="project_startdate"]  11012

This test case is to test the search employee in employee list using admin logins
         Input Text  ${email}    &{admin_Login}[Email]
         Input Password  ${pwd}  &{admin_Login}[Password]
         Click Element   ${submit}
         sleep   5s
         goto  ${taskmanagement}
         sleep  5s
         input text   ${searchinput}  farookh
         sleep  5s
         wait until page contains   farookh5a5@sasi.ac.in
         sleep  5s
         reload page
         sleep  5s
         input text  ${searchinput}  data
         sleep  5s
         wait until page contains   No records to display
         sleep  5s
This test case is to test the search employee in employee list using manager logins
         Input Text  ${email}    &{manager_Logins}[Email]
         Input Password  ${pwd}  &{manager_Logins}[Password]
         Click Element   ${submit}
         sleep   5s
         goto  ${taskmanagement}
         sleep  5s
         input text  ${searchinput}  farookh
         sleep  5s
         wait until page contains   farookh5a5@sasi.ac.in
         sleep  5s
         reload page
         sleep  5s
         input text  ${searchinput}  data
         sleep  5s
         wait until page contains   No records to display
         sleep  5s
test the create a template to a new user
        Input Text  ${email}    &{admin_Logins}[Email]
        Input Password  ${pwd}  &{admin_Logins}[Password]
        Click Element   ${submit}
        sleep   5s
        Click Element  ${invite}
        Click Element  ${newtemplate1}
        Input Text  xpath=${inputnewtemplate}  &{personalinfo}[Email]
        Click Element  xpath=${submitok}
        sleep  5s
        Click Element  ${account}
        Click Element  ${logout}
test is to fill the personal information
        Input Text  ${email}    &{admin_Logins}[Email]
        Input Password  ${pwd}  &{admin_Logins}[Password]
        Click Element   ${submit}
        sleep  5s
        Click Element  ${navbar}
        sleep  2s
        Click Element  ${employeeinvite}
        sleep  5s
        Click Element  ${oldtemplate}
        sleep  10s
#        Click Element  ${account}
#        Click Element  ${logout}
#        goto  ${gotofile}
#        sleep  2s
#        Input Text  //*[@id="levelOneAuthPass"]  310612
#        Click Element  ${passsubmition}
        #Click Element  //*[@id="root"]/div/div[2]/div[2]/div/div/div/div/form/div[1]/label
        #Choose File  //*[@id="root"]/div/div[2]/div[2]/div/div/div/div/form/div[1]/label  C:\Users\hai\OneDrive\Desktop
#        sleep  5s
        Input Text  ${name}    &{personalinfo}[Firstname]
        Input Text  ${mname}    &{personalinfo}[Middlename]
        Input Text  ${lname}    &{personalinfo}[Lastname]
        Input Text  ${phonenumber}    &{personalinfo}[Phoneno]
        Select From List By Value  ${department}  Python
        Select From List By Value  ${marital}  married
        sleep  2s
        Input Text  ${maline1}  TESTING
        Input Text  ${maline2}  ISDONE
        Input Text  ${macountry}  India
        Input Text  ${macity}  tadepalligudem
        Input Text  ${mastate}  andhra
        Input Text  ${mazip}  534101
        Input Text  ${ecname}  testing
        Input Text  ${ecphone}  7894561230
        Input Text  ${ecmail}  gavirinaresh
        Input Text  ${ehclient}  tests
        Input Text  ${ehadd}  havcvahjhsdhvskhvdjvjHSVDJHJJH235154
        Input Text  ${ehmail}  gareshvhhvb
        Input Text  ${ehvenname}  dhfvxfdghs
        Input Text  ${ehvenphone}  7894561123
        Input Text  ${ehvenmail}  hgasdhgasvgh
        Input Text  ${ehfrom}  21032000
        Input Text  ${ehto}  3052019
        Input Text  ${watype}  custome
        Input Text  ${wanumber}  7894561230
        Input Text  ${waissuedate}  9032001  result_format=%d/%m/%Y
        Input Text  ${waexperdate}  03022000

test is to fill the template
        Input Text  ${email}    &{admin_Logins}[Email]
        Input Password  ${pwd}  &{admin_Logins}[Password]
        Click Element   ${submit}
        sleep   5s
        Click Element  //*[@id="root"]/div/div[2]/div[1]/div/nav/div/ul/div[1]/a[6]
        Click Element  //*[@id="onBoard"]/div[1]/button
        Sleep  2s
        Click Element  //*[@id="onBoard"]/div[1]/button
        Sleep  2s
#        Click Element  //*[@id="onBoard"]/div[2]/button
#        Sleep  2s
#        Click Element  //*[@id="onBoard"]/div[2]/button
#        Sleep  2s
#        Click Element  //*[@id="onBoard"]/div[3]/button
#        Sleep  2s
#        Click Element  //*[@id="onBoard"]/div[3]/button
#        Sleep  2s
#        Click Element  //*[@id="onBoard"]/div[4]/button
#        Sleep  2s
#        Click Element  //*[@id="onBoard"]/div[4]/button
#        Sleep  2s
#        Click Element  //*[@id="onBoard"]/div[5]/button
#        Sleep  2s
#        Click Element  //*[@id="onBoard"]/div[5]/button
#        sleep  2s
        #Click Element  //*[@id="onBoard"]/div[1]/button
        Click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[1]
        sleep  2s
        Click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[1]/div/div/div/div/button
        Input Text  //*[@id="newLabel"]  testing
        Click Element  //*[@id="personalAppend"]
        Click Element  //*[@id="onBoard"]/div[1]/button
        sleep  5s
        Click Element  //*[@id="onBoard"]/div[1]/button
        click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[1]/button
        sleep  2s
        click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[1]/button
        sleep  2s
        Unselect Checkbox  id='b_tested'

#        sleep   5s
#        Click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[1]/button
#        sleep  2s

#        Click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[2]/button
#        sleep  2s
#        Click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[2]/div/div/div/div/button
#        Input Text  //*[@id="newLabel"]  tests
#        Click Element  //*[@id="mailAddressAppend"]
#        Click Element  //*[@id="onBoard"]/div[2]/button
#        sleep  2s
#        Click Element  //*[@id="onBoard"]/div[2]/button
#        Click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[2]/button
#        sleep  2s
#
#        Click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[3]/button
#        sleep  2s
#        Click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[3]/div/div/div/div/button
#        Input Text   //*[@id="newLabel"]  tester
#        Click Element  //*[@id="contactAppend"]
#        Click Element  //*[@id="onBoard"]/div[3]/button
#        sleep  2s
#        Click element  //*[@id="onBoard"]/div[3]/button
#        Click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[3]/button
#
#        Click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[4]/button
#        sleep  2s
#        Click element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[4]/div/div/div/div/button
#        Input Text  //*[@id="newLabel"]  testing
#        Click Element  //*[@id="employmentAppend"]
#        Click Element  //*[@id="onBoard"]/div[4]/button
#        Sleep  2s
#        Click Element  //*[@id="onBoard"]/div[4]/button
#        Click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[4]/button
#
#        Click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[5]/button
#        Sleep  2s
#        Click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[5]/div/div/div/div/button
#        Input Text  //*[@id="newLabel"]  tested
#        Click Element  //*[@id="workAuthAppend"]
#        Click Element  //*[@id="onBoard"]/div[5]/button
#        Sleep  2s
#        Click Element  //*[@id="onBoard"]/div[5]/button
#        Click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[5]/button
#        sleep  2s
#        Click Element  //*[@id="onBoard"]/div[6]/button
#        Input Text  xpath=/html/body/div[2]/div/div[2]/input[1]  done

test is to check the histroy
         Input Text  ${email}    &{admin_Logins}[Email]
         Input Password  ${pwd}  &{admin_Logins}[Password]
         Click Element   ${submit}
         sleep   5s
         Click Element  //*[@id="root"]/div/div[2]/div[1]/div/nav/div/ul/div[1]/a[8]/li
         sleep  2s

This test case is to test the list of projects in admin logins
        Input Text  ${email}    &{admin_Login}[Email]
        Input Password  ${pwd}  &{admin_Login}[Password]
        Click Element   ${submit}
        sleep   5s
        goto  ${taskmanagement1}
        sleep  5s
        click element   ${list1}
        sleep  2s
        click element   ${list2}
        sleep  2s
        click element   ${list3}
        sleep  2s
        click element   ${list4}
        sleep  2s
This test case is to test the list of projects in manager logins
        Input Text  ${email}    &{manager_Logins}[Email]
        Input Password  ${pwd}  &{manager_Logins}[Password]
        Click Element   ${submit}
        sleep   5s
        goto  ${taskmanagement1}
        sleep  5s
        click element  ${list1}
        sleep  2s
        click element   ${list2}
        sleep  2s
        click element   ${list3}
        sleep  2s
        click element   ${list4}
        sleep  2s
This test case is to test the list of projects in employee logins
        Input Text  ${email}    &{employee_Logins}[Email]
        Input Password  ${pwd}  &{employee_Logins}[Password]
        Click Element   ${submit}
        sleep   5s
        goto  ${taskmanagement1}
        sleep  5s
        click element  ${list1}
        sleep  2s
        click element   ${list2}
        sleep  2s
        click element   ${list3}
        sleep  2s
        click element   ${list4}
        sleep  2s
This test case is to test the list of task in admin logins
        Input Text  ${email}    &{admin_Login}[Email]
        Input Password  ${pwd}  &{admin_Login}[Password]
        Click Element   ${submit}
        sleep   10s
        goto  ${taskmanagement1}
        sleep  5s
        click element  ${project}
        sleep  5s
        click element  ${list1}
        sleep  2s
        click element   ${list2}
        sleep  2s
        click element   ${list3}
        sleep  2s
        click element   ${list4}
        sleep  2s
        click element   ${list5}
        sleep  2s
        click element   ${list6}
        sleep  2s
This test case is to test the list of task in manager logins
        Input Text  ${email}    &{manager_Logins}[Email]
        Input Password  ${pwd}  &{manager_Logins}[Password]
        Click Element   ${submit}
        sleep   10s
        goto  ${taskmanagement1}
        sleep  5s
        click element  ${project}
        sleep  5s
        click element  ${list1}
        sleep  2s
        click element   ${list2}
        sleep  2s
        click element   ${list3}
        sleep  2s
        click element   ${list4}
        sleep  2s
        click element   ${list5}
        sleep  2s
        click element   ${list6}
        sleep  2s
This test case is to test the list of task in employee logins
        Input Text  ${email}    &{employee_Logins}[Email]
        Input Password  ${pwd}  &{employee_Logins}[Password]
        Click Element   ${submit}
        sleep   10s
        goto  ${taskmanagement1}
        sleep  5s
        click element  ${project}
        sleep  5s
        click element  ${list1}
        sleep  2s
        click element   ${list2}
        sleep  2s
        click element   ${list3}
        sleep  2s
        click element   ${list4}
        sleep  2s
        click element   ${list5}
        sleep  2s
        click element   ${list6}
        sleep  2s
This test case is to test the create a task in admin logins
        Input Text  ${email}    &{admin_Login}[Email]
        Input Password  ${pwd}  &{admin_Login}[Password]
        Click Element   ${submit}
        sleep   5s
        goto  ${taskmanagement1}
        sleep  5s
        click element  ${project}
        sleep  5s
        click element  ${newtask}
        sleep  5s
        input text  ${taskname1}   Data
        sleep   5s
        click element   ${tasktype}
        sleep  2s
        click element   ${taskoption}
        sleep  2s
        click element   ${taskstatus}
        sleep  2s
        click element  ${taskstatusoption}
        sleep  2s
        Click element  ${startdate}
        sleep  2s
        click element  ${taskdate}
        sleep  2s
        click element  ${taskok}
        sleep   2s
        click element  ${enddate}
        sleep  2s
        click element  ${enddateselection}
        sleep  2s
        Click element  ${endok}
        sleep  2s
        click element  ${priority}
        sleep   2s
        click element  ${priorityoption}
        sleep   2s
        click element  ${addemployee}
        sleep   2s
        click element  ${employeeoption}
        sleep   3s
#        input text  //html/body/div[8]/div[3]/div/main/div/form/div/div[7]/div/div/div[3]/textarea  area
#        sleep  5s
        click element   ${taskcreate}
        sleep  5s
This test case is to test the create a task in manager logins
        Input Text  ${email}    &{manager_Logins}[Email]
        Input Password  ${pwd}  &{manager_Logins}[Password]
        Click Element   ${submit}
        sleep   5s
        goto  ${taskmanagement1}
        sleep  5s
        click element  ${project}
        sleep  5s
        click element  ${newtask}
        sleep  5s
        input text  ${taskname1}   Data
        sleep   5s
        click element   ${tasktype}
        sleep  2s
        click element   ${taskoption}
        sleep  2s
        click element   ${taskstatus}
        sleep  2s
        click element  ${taskstatusoption}
        sleep  2s
        Click element  ${startdate}
        sleep  2s
        click element  ${taskdate}
        sleep  2s
        click element  ${taskok}
        sleep   2s
        click element  ${enddate}
        sleep  2s
        click element  ${enddateselection}
        sleep  2s
        Click element  ${endok}
        sleep  2s
        click element  ${priority}
        sleep   2s
        click element  ${priorityoption}
        sleep   2s
        click element  ${addemployee}
        sleep   2s
        click element  ${employeeoption}
        sleep   3s
#        input text  //html/body/div[8]/div[3]/div/main/div/form/div/div[7]/div/div/div[3]/textarea  area
#        sleep  5s
        click element   ${taskcreate}
        sleep  5s
This test case is to test the create a task in employee logins
        Input Text  ${email}    &{employee_Logins}[Email]
        Input Password  ${pwd}  &{employee_Logins}[Password]
        Click Element   ${submit}
        sleep   5s
        goto  ${taskmanagement1}
        sleep  5s
        click element  ${project}
        sleep  5s
        click element  ${newtask}
        sleep  5s
        input text  ${taskname1}   Data
        sleep   5s
        click element   ${tasktype}
        sleep  2s
        click element   ${taskoption}
        sleep  2s
        click element   ${taskstatus}
        sleep  2s
        click element  ${taskstatusoption}
        sleep  2s
        Click element  ${startdate}
        sleep  2s
        click element  ${taskdate}
        sleep  2s
        click element  ${taskok}
        sleep   2s
        click element  ${enddate}
        sleep  2s
        click element  ${enddateselection}
        sleep  2s
        Click element  ${endok}
        sleep  2s
        click element  ${priority}
        sleep   2s
        click element  ${priorityoption}
        sleep   2s
        click element  ${addemployee}
        sleep   2s
        click element  ${employeeoption}
        sleep   3s
#        input text  //html/body/div[8]/div[3]/div/main/div/form/div/div[7]/div/div/div[3]/textarea  area
#        sleep  5s
        click element   ${taskcreate}
        sleep  5s
This test case is to test the task filter in admin logins
        Input Text  ${email}    &{admin_Login}[Email]
        Input Password  ${pwd}  &{admin_Login}[Password]
        Click Element   ${submit}
        sleep   5s
        goto  ${taskmanagement1}
        sleep  5s
        click element  ${project}
        sleep  5s
        click element  ${taskfilter}
        sleep  2s
        click element  ${taskfilteroption2}
#        wait until page contains    Naresh
        reload page
        sleep  5s
        click element  ${taskfilter}
        sleep  2s
        click element  ${taskfilteroption3}
        sleep  5s
#        click element  //*[@id="tags-outlined-option-3"]
        wait until page contains  No records to display
        sleep  5s
This test case is to test the task filter in manager logins
        Input Text  ${email}    &{manager_Logins}[Email]
        Input Password  ${pwd}  &{manager_Logins}[Password]
        Click Element   ${submit}
        sleep   5s
        goto  ${taskmanagement1}
        sleep  5s
        click element  ${project}
        sleep  5s
        click element  ${taskfilter}
        sleep  2s
        click element  ${taskfilteroption2}
#        wait until page contains    Naresh
        reload page
        sleep  5s
        click element  ${taskfilter}
        sleep  2s
        click element  ${taskfilteroption3}
        sleep  5s
#        click element  //*[@id="tags-outlined-option-3"]
        wait until page contains  No records to display
        sleep  5s
This test case is to test the task filter in employee logins
        Input Text  ${email}    &{employee_Logins}[Email]
        Input Password  ${pwd}  &{employee_Logins}[Password]
        Click Element   ${submit}
        sleep   5s
        goto  ${taskmanagement1}
        sleep  5s
        click element  ${project}
        sleep  5s
        click element  ${taskfilter}
        sleep  2s
        click element  ${taskfilteroption4}
#        wait until page contains    Naresh
#        reload page
#        sleep  5s
#        click element  ${taskfilter}
#        sleep  2s
#        click element  ${taskfilteroption3}
         sleep  5s
#        click element  //*[@id="tags-outlined-option-3"]
#        wait until page contains  No records to display
#        sleep  5s
This test case is to test the new sub task in admin logins
        Input Text  ${email}    &{admin_Login}[Email]
        Input Password  ${pwd}  &{admin_Login}[Password]
        Click Element   ${submit}
        sleep   5s
        goto  ${taskmanagement1}
        sleep  5s
        click element  ${project}
        sleep  2s
        click element  //*[@id="scrollable-force-tab-1"]
        sleep  2s
        click element  //*[@id="scrollable-force-tabpanel-1"]/div/div/div/div/div[2]/div/div/div/table/tbody/tr[1]/td[2]/div/span/a/button
        sleep  5s
#        wait until page contains  ${subtask}
#        sleep  5s
        click element  ${subtask}
        sleep  5s
        input text   ${subtaskname}   Data
        sleep   5s
        click element  ${subtasktype}
        sleep  2s
        click element   ${subtaskoption}
        sleep  2s
        click element   ${subtaskstatus}
        sleep  2s
        click element  ${subtaskstatusoption}
        sleep  2s
        Click element  ${substartdate}
        sleep  2s
        click element  ${subtaskdate}
        sleep  2s
        click element  ${subtaskok}
        sleep   2s
        click element  ${subtaskenddate}
        sleep  2s
        click element  ${subtaskendok}
        sleep  2s
        Click element  ${subenddate}
        sleep  2s
        click element  ${subenddateselection}
        sleep   2s
        click element  ${subprioriyoption}
        sleep   2s
        click element  ${subaddemployee}
        sleep   2s
        click element  ${subemployeeoption}
        sleep   3s
#        input text  //html/body/div[8]/div[3]/div/main/div/form/div/div[7]/div/div/div[3]/textarea  area
#        sleep  5s
        click element   ${subtaskcreate}
        sleep  5s
        goto  ${taskmanagement1}
        sleep  5s
        click element  ${project}
        sleep  2s
        click element  ${list2}
        sleep  2s
        click element  ${subedit}
        sleep  10s
        click element  ${subedit1}
        sleep  5s
        click element  ${subtaskstatus}
        sleep  5s
        click element  ${subtaskoption}
        sleep  5s
        click element  ${subtaskcreate}
        sleep  10s


This test case is to test the new sub task in employee logins
        Input Text  ${email}    &{employee_Logins}[Email]
        Input Password  ${pwd}  &{employee_Logins}[Password]
        Click Element   ${submit}
        sleep   5s
        goto  ${taskmanagement1}
        sleep  5s
        click element  ${project}
        sleep  2s
        click element  //*[@id="scrollable-force-tab-1"]
        sleep  2s
        click element  //*[@id="scrollable-force-tabpanel-1"]/div/div/div/div/div[2]/div/div/div/table/tbody/tr[1]/td[2]/div/span/a/button
        sleep  5s
#        wait until page contains  ${subtask}
#        sleep  5s
        click element  ${subtask}
        sleep  5s
        input text   ${subtaskname}   Data
        sleep   5s
        click element  ${subtasktype}
        sleep  2s
        click element   ${subtaskoption}
        sleep  2s
        click element   ${subtaskstatus}
        sleep  2s
        click element  ${subtaskstatusoption}
        sleep  2s
        Click element  ${substartdate}
        sleep  2s
        click element  ${subtaskdate}
        sleep  2s
        click element  ${subtaskok}
        sleep   2s
        click element  ${subtaskenddate}
        sleep  2s
        click element  ${subtaskendok}
        sleep  2s
        Click element  ${subenddate}
        sleep  2s
        click element  ${subenddateselection}
        sleep   2s
        click element  ${subprioriyoption}
        sleep   2s
        click element  ${subaddemployee}
        sleep   2s
        click element  ${subemployeeoption}
        sleep   3s
#        input text  //html/body/div[8]/div[3]/div/main/div/form/div/div[7]/div/div/div[3]/textarea  area
#        sleep  5s
        click element   ${subtaskcreate}
        sleep  5s
        goto  ${taskmanagement1}
        sleep  5s
        click element  ${project}
        sleep  2s
        click element  ${list2}
        sleep  2s
        click element  ${subedit}
        sleep  10s
        click element  ${subedit1}
        sleep  5s
        click element  ${subtaskstatus}
        sleep  5s
        click element  ${subtaskoption}
        sleep  5s
        click element  ${subtaskcreate}


test is to check the letter request
         Input Text  ${email}    &{admin_Logins}[Email]
         Input Password  ${pwd}  &{admin_Logins}[Password]
         Click Element   ${submit}
         sleep   5s
         click element  //*[@id="root"]/div/div[2]/div[1]/div/nav/div/ul/div[1]/a[9]
         sleep  2s
         click element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/table/tbody/tr[1]/td[5]/div/button
         sleep  2s
         click element  xpath=/html/body/div[3]/div/div/div/button[2]
         click element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/table/tbody/tr[1]/td[5]/button
         sleep  2s
         click element  xpath=/html/body/div[2]/div/div[3]/button[2]


test is to check the rids
         Input Text  ${email}    &{admin_Logins}[Email]
         Input Password  ${pwd}  &{admin_Logins}[Password]
         Click Element   ${submit}
         sleep   5s
         Click Element  //*[@id="root"]/div/div[2]/div[1]/div/nav/div/ul/div[1]/a[10]
         sleep  2s
         click element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div/div[1]/a[2]
         sleep  2s
         click element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div/div[1]/a[3]
         sleep  2s
         click element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div/div[1]/a[4]
         sleep  2s
         click element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div/div[1]/a[1]
         sleep  2s
         click element  //*[@id="root"]/div/div[2]/div[1]/div/nav/div/ul/div[1]/a[11]

                                                                       #EL11

test is to fill the Employee List
         Input Text  ${email}    &{admin_Logins}[Email]
         Input Password  ${pwd}  &{admin_Logins}[Password]
         Click Element   ${submit}
         sleep   5s
         goto  ${gotofile1}
         sleep  5s
        Click Element  ${promote}
         sleep  5s
         Click Element  ${promote}
         sleep  7s
         Click Element  ${enable}
         sleep  7s
         Click Element  ${enable}
         sleep  5s
         Click Element  ${edit}
         sleep  2s
         Click Element  ${add1}
         Input Text  ${EMname}  &{oldtemplatedata}[empname]
         Input Text  ${EMnumber}  &{oldtemplatedata}[empphone]
         Input Text  ${EMmail}  &{oldtemplatedata}[empmail]
         Click Element  ${EMdone}
         sleep  2s



         Click Element  ${add2}
         Input Text  ${clientname}  &{oldtemplatedata}[cliname]
         Input Text  ${clientaddress}  &{oldtemplatedata}[cliadd]
         Input Text  ${clientmail}  &{oldtemplatedata}[climail]
         #Input Text  ${fromdate}  02021997


         Input Text  ${vendormail}  &{oldtemplatedata}[venmail]
         Input Text  ${vendorname}  &{oldtemplatedata}[venname]
         Input Text  ${vendornumber}  &{oldtemplatedata}[venphone]
         #Input Text  ${todate}  2302222
        Click Element  ${ehdone}


         Click Element  ${add3}
         Input Text  ${worktype}  &{oldtemplatedata}[worktype]
         Input Text  ${worknumber}  &{oldtemplatedata}[worknumber]
         Input Text  ${issuedate}  &{oldtemplatedata}[worknumber]
         Input Text  ${expirydate}  &{oldtemplatedata}[worknumber]
         set focus to element  ${document1}
         Choose File  ${document1}  &{oldtemplatedata}[filepath]
         sleep  10s
         Click Element  ${wdone}
         Click Element  ${wdone}
                                                 #project creation
This test case is to test the create a project in admin logins
         Input Text  ${email}    &{admin_Login}[Email]
         Input Password  ${pwd}  &{admin_Login}[Password]
         Click Element   ${submit}
         sleep   5s
         goto  ${taskmanagement1}
         sleep  5s
         click element    ${S_NP_BTN}
         sleep    3s
         ${S_NAME}  Generate Random String  8  [LETTERS]
         input text    ${S_NAME_FIELD}    ${S_NAME}
         sleep    3s
         ${S_PROJ_ID}  Generate Random String  5  [LETTERS]
         input text    ${S_PROJ_ID_FIELD}    ${S_PROJ_ID}
         sleep    3s
         click button    ${S_CAL_BTN}
         sleep    5s
         click element    ${S_YEAR_BTN}
         sleep    3s
         click element    ${S_YEAR_SLCT}
         sleep    3s
         click element    ${S_DATE_BTN}
         sleep    3s
         click element    ${S_OK_BTN}
         sleep    3s
         click element    ${S_CAL_2_BTN}
         sleep    3s
         click element    ${S_DATE_SLC_BTN}
         sleep    3s
         click element    ${S_OK_BTN}
         sleep    3s
         click element    ${S_STAT}
         sleep    3s
         click element    ${S_STAT_SLCT}
         sleep    3s
         select checkbox    ${S_CHCK_BOX}
         sleep    3s
         select checkbox    ${S_CHCK_BOX_1}
         sleep    3s
         click element    ${S-CREATE_BTN}
         sleep    3s
This test case is to test the create a project in manager logins
         Input Text  ${email}    &{manager_Logins}[Email]
         Input Password  ${pwd}  &{manager_Logins}[Password]
         Click Element   ${submit}
         sleep   5s
         goto  ${taskmanagement1}
         sleep  10s
                  click element    ${S_NP_BTN}
         sleep    3s
         ${S_NAME}  Generate Random String  8  [LETTERS]
         input text    ${S_NAME_FIELD}    ${S_NAME}
         sleep    3s
         ${S_PROJ_ID}  Generate Random String  5  [LETTERS]
         input text    ${S_PROJ_ID_FIELD}    ${S_PROJ_ID}
         sleep    3s
         click button    ${S_CAL_BTN}
         sleep    5s
         click element    ${S_YEAR_BTN}
         sleep    3s
         click element    ${S_YEAR_SLCT}
         sleep    3s
         click element    ${S_DATE_BTN}
         sleep    3s
         click element    ${S_OK_BTN}
         sleep    3s
         click element    ${S_CAL_2_BTN}
         sleep    3s
         click element    ${S_DATE_SLC_BTN}
         sleep    3s
         click element    ${S_OK_BTN}
         sleep    3s
         click element    ${S_STAT}
         sleep    3s
         click element    ${S_STAT_SLCT}
         sleep    3s
         select checkbox    ${S_CHCK_BOX}
         sleep    3s
         select checkbox    ${S_CHCK_BOX_1}
         sleep    3s
         click element    ${S-CREATE_BTN}
         sleep    3s
                                                        #project permission

This test case is to test the Project settings in project in admin logins
         Input Text  ${email}    &{admin_Login}[Email]
         Input Password  ${pwd}  &{admin_Login}[Password]
         Click Element   ${submit}
         sleep   5s
         goto  ${taskmanagement1}
         sleep  5s
         click element    ${S_PROJ_SLCT}
        sleep    5s
        click element    ${S_PROJSETT_BTN}
        sleep    5s
        click element    ${S_GENERAL_SET_BTN}
        sleep    5s
        click element    ${S_GENERAL_SET_BTN}
        sleep    5s
        click element    ${S_MEMB&PERM_BTN}
        sleep    5s
        unselect checkbox    ${S_UNCHECK_CREATE_1}
        sleep    3s
        select checkbox    ${S_CHECK_CREATE_1}
        sleep    3s
        unselect checkbox    ${S_UNCHECK_UPDATE_1}
        sleep    3s
        select checkbox    ${S_CHECK_UPDATE_1}
        sleep    3s
        unselect checkbox    ${S_UNCHECK_READ_1}
        sleep    3s
        select checkbox    ${S_CHECK_READ_1}
        sleep    3s
        select checkbox    ${S_CHECK_DELETE_1}
        sleep    3s
        unselect checkbox    ${S_UNCHECK_DELETE_1}
        sleep    3s
        click element    ${S_APPLY_PERMISSION_1}
        sleep    3s

    #    unselect checkbox  ${S_UNCHECK_CREATE_2}
    #    sleep    3s
    #    select checkbox  ${S_CHECK_CREATE_2}
    #    sleep    3s
    #    unselect checkbox  ${S_UNCHECK_UPDATE_2}
    #    sleep    3s
    #    select checkbox  ${S_CHECK_UPDATE_2}
    #    sleep    3s
    #    unselect checkbox    ${S_UNCHECK_READ_2}
    #    sleep    3s
    #    select checkbox  ${S_CHECK_READ_2}
    #    sleep    3s
    #    select checkbox  ${S_CHECK_DELETE_2}
    #    sleep    3s
    #    unselect checkbox  ${S_UNCHECK_DELETE_2}
    #    sleep    3s
    #    click element    ${S_APPLY_PERMISSION_2}
    #    sleep    3s

    #
    #    unselect checkbox  ${S_UNCHECK_CREATE_3}
    #    sleep    3s
    #    select checkbox  ${S_CHECK_CREATE_3}
    #    sleep    3s
    #    unselect checkbox  ${S_UNCHECK_UPDATE_3}
    #    sleep    3s
    #    select checkbox    ${S_CHECK_UPDATE_3}
    #    sleep    3s
    #    unselect checkbox  ${S_UNCHECK_READ_3}
    #    sleep    3s
    #    select checkbox    ${S_CHECK_READ_3}
    #    sleep    3s
    #    select checkbox    ${S_CHECK_DELETE_3}
    #    sleep    3s
    #    unselect checkbox  ${S_UNCHECK_DELETE_3}
    #    sleep    3s
    #    click element  ${S_APPLY_PERMISSION_3}
    #    sleep    3s
    #
    #    unselect checkbox    ${S_UNCHECK_CREATE_4}
    #    sleep    3s
    #    select checkbox    ${S_CHECK_CREATE_4}
    #    sleep    3s
    #    unselect checkbox    ${S_UNCHECK_UPDATE_4}
    #    sleep    3s
    #    select checkbox    ${S_CHECK_UPDATE_4}
    #    sleep    3s
    #    unselect checkbox    ${S_UNCHECK_READ_4}
    #    sleep    3s
    #    select checkbox    ${S_CHECK_READ_4}
    #    sleep    3s
    #    select checkbox    ${S_CHECK_DELETE_4}
    #    sleep    3s
    #    unselect checkbox    ${S_UNCHECK_DELETE_4}
    #    sleep    3s
    #    click element    ${S_APPLY_PERMISSION_4}
    #    sleep    3s
    #
    #
    #    unselect checkbox  ${S_UNCHECK_CREATE_5}
    #    sleep    3s
    #    select checkbox  ${S_CHECK_CREATE_5}
    #    sleep    3s
    #    unselect checkbox  ${S_UNCHECK_UPDATE_5}
    #    sleep    3s
    #    select checkbox  ${S_CHECK_UPDATE_5}
    #    sleep    3s
    #    unselect checkbox  ${S_UNCHECK_READ_5}
    #    sleep    3s
    #    select checkbox  ${S_CHECK_READ_5}
    #    sleep    3s
    #    select checkbox  ${S_CHECK_DELETE_5}
    #    sleep    3s
    #    unselect checkbox  ${S_UNCHECK_DELETE_5}
    #    sleep    3s
    #    click element  ${S_APPLY_PERMISSION_5}
    #    sleep    3s
    #
    #
    #    unselect checkbox  ${S_UNCHECK_CREATE_6}
    #    sleep    3s
    #    select checkbox  ${S_CHECK_CREATE_6}
    #    sleep    3s
    #    unselect checkbox    ${S_UNCHECK_UPDATE_6}
    #    sleep    3s
    #    select checkbox    ${S_CHECK_UPDATE_6}
    #    sleep    3s
    #    unselect checkbox    ${S_UNCHECK_READ_6}
    #    sleep    3s
    #    select checkbox    ${S_CHECK_READ_6}
    #    sleep    3s
    #    select checkbox    ${S_CHECK_DELETE_6}
    #    sleep    3s
    #    unselect checkbox  ${S_UNCHECK_DELETE_6}
    #    sleep    3s
    #    click element  ${S_APPLY_PERMISSION_6}
    #    sleep    3s
    #
    #
    #    unselect checkbox  ${S_UNCHECK_CREATE_7}
    #    sleep    3s
    #    select checkbox    ${S_CHECK_CREATE_7}
    #    sleep    3s
    #    unselect checkbox  ${S_UNCHECK_UPDATE_7}
    #    sleep    3s
    #    select checkbox  ${S_CHECK_UPDATE_7}
    #    sleep    3s
    #    unselect checkbox  ${S_UNCHECK_READ_7}
    #    sleep    3s
    #    select checkbox  ${S_CHECK_READ_7}
    #    sleep    3s
    #    select checkbox  ${S_CHECK_DELETE_7}
    #    sleep    3s
    #    unselect checkbox  ${S_UNCHECK_DELETE_7}
    #    sleep    3s
    #    click element  ${S_APPLY_PERMISSION_7}
    #    sleep    3s
    #
    #
    #    unselect checkbox  ${S_UNCHECK_CREATE_8}
    #    sleep    3s
    #    select checkbox  ${S_CHECK_CREATE_8}
    #    sleep    3s
    #    unselect checkbox  ${S_UNCHECK_UPDATE_8}
    #    sleep    3s
    #    select checkbox  ${S_CHECK_UPDATE_8}
    #    sleep    3s
    #    unselect checkbox  ${S_UNCHECK_READ_8}
    #    sleep    3s
    #    select checkbox  ${S_CHECK_READ_8}
    #    sleep    3s
    #    select checkbox  ${S_CHECK_DELETE_8}
    #    sleep    3s
    #    unselect checkbox  ${S_UNCHECK_DELETE_8}
    #    sleep    3s
    #    click element  ${S_APPLY_PERMISSION_8}
    #    sleep    3s

        click element    ${S_MEMB&PERM_BTN}
        sleep    3s

        click element    ${S_PROJ_DETAILS_BTN}
        sleep    3s
        ${NAME_S}  Generate Random String   2  [LETTERS]

        input text    ${S_PROJECT_NAME_FIELD}    ${NAME_S}
        sleep    3s


        click element    ${S_STATUS_SLCT_BTN}
        sleep    3s
        click element    ${S_STATUS_SELECT}
        sleep    3s
        unselect checkbox    ${S_TIMELINE_UNCHECK}
        sleep    3s
        select checkbox  ${S_TIMELINE_CHECK}
        sleep    3s
        unselect checkbox  ${S_LABEL_UNCHECK}
        sleep    3s
        select checkbox  ${S_LABEL_CHECK}
        sleep    3s
        #caleneder
        click element    ${S_CALENDER_BTN}
        sleep    3s
        click element    ${S_YEAR_BTN_2}
        sleep    3s
        click element    ${S_YEAR_SLCT1}
        sleep    3s
        click element    ${S_DATE_SLCT1}
        sleep    3s
        click element    ${S_OK_BTN1}
        sleep    3s
        click element    ${S_CALENDER_BTN_2}
        sleep    3s
        click element    ${S_YEAR_BTN_2}
        sleep    3s
        Click element    ${S_YEAR_SELECT}
        sleep    3s
        click element    ${S_OK_BTN_2}
        sleep    3s
        click element    ${S_UPDATE_BTN}
        sleep    3s
        click element    ${S_PROJ_DETAILS_BTN}
        sleep    5s


        click element    ${S_PROJECT_TIMELINE_BTN}
        sleep    5s

        click element    ${S_PROJECT_TIMELINE_BTN}
        sleep    5s


        click element    ${S_LABEL_BTN}
        sleep    3s
        click element    ${S_LABEL_ADD_BTN}
        sleep    3s
        input text    ${S_LABEL_FIELD}    ${S_LABEL_TEXT}
        sleep    3s
        input text    ${S_COLOUR_FIELD}    ${COLOR}
        sleep    5s
        click element    ${S_SAVE_BTN}
        sleep    5s
        input text    ${S_LABEL_SEARCH_FIELD}    ${S_SEARCH_TEXT}
        sleep    5s
        click element    ${S_DELETE_BTN}
        sleep    3s
        Click Element  ${Delete_label}
        Sleep  3s
        click element    ${S_LABEL_BTN}
        sleep    3s

                                           #showcolumns

to check the working of columns
        Input Text  ${email}    &{admin_Login}[Email]
        Input Password  ${pwd}  &{admin_Login}[Password]
        Click Element   ${submit}
        sleep   5s
        go to    ${EMPLOYEE_LIST}
        sleep    5s
        click element    ${B_SCROLL_BTN1}
        sleep    5s
        Execute JavaScript    window.scrollTo(0,160)
        sleep    5s
        double click element  ${B_SCROLL_BTN1}
        sleep    3s
        click element    ${B_SCROLL_BTN2}
        sleep    5s
        double click element    ${B_SCROLL_BTN2}
        sleep    5s
        click element    ${B_SCROLL_BTN3}
        sleep    5s
        double click element    ${B_SCROLL_BTN3}
        sleep    5s
        click element    ${B_SCROLL_BTN4}
        sleep    5s
        double click element    ${B_SCROLL_BTN4}
        sleep    5s
        click element    ${B_SCROLL_BTN5}
        sleep    5s
        double click element    ${B_SCROLL_BTN5}
        sleep    5s
        click element    ${B_SCROLL_BTN6}
        sleep    5s
        double click element    ${B_SCROLL_BTN6}
        sleep    5s
        click element    ${B_SCROLL_BTN7}
        sleep    5s
        double click element    ${B_SCROLL_BTN7}
        sleep    5s
        click element   ${B_SCROLL_BTN8}
        sleep    5s
        double click element    ${B_SCROLL_BTN8}
        sleep    5s
        click element    ${B_SCROLL_BTN9}
        sleep    5s
        double click element    ${B_SCROLL_BTN9}
        sleep    5s
        click element    ${B_SCROLL_BTN10}
        sleep    5s
        double click element    ${B_SCROLL_BTN10}
        sleep    5s
        click element    ${B_SCROLL_BTN11}
        sleep    5s
        double click element    ${B_SCROLL_BTN11}
        sleep    5s
        click element    ${B_SCROLL_BTN12}
        sleep    5s
        double click element    ${B_SCROLL_BTN12}
        sleep    5s
        select checkbox    ${B_CHECKBOX_BTN1}
        sleep    5s
        unselect checkbox    ${B_CHECKBOX_BTN1}
        sleep    5s
                                                #Deleteemployee
To check the employee status enabling and disabling
        Input Text  ${email}    &{admin_Login}[Email]
        Input Password  ${pwd}  &{admin_Login}[Password]
        Click Element   ${submit}
        sleep   5s
        go to    ${EMPLOYEE_LIST}
        sleep    3s
        click element    ${B_ACTIVE_BTN}
        sleep    5s
        click element    ${B_Employee_Select}
        sleep    5s
        Execute JavaScript    window.scrollTo(0,90)
        sleep    3s
        click element    ${B_SUSPENDEMPLOYEE_BTN}
        sleep    5s
        go to  ${EMPLOYEE_LIST}
        sleep  5s
        click element    ${B_SUSPEND_BTN}
        sleep    5s
        click element    ${B_SUSPENDED_EMPLOYEE_SLCT}
        sleep    5s
        Execute JavaScript    window.scrollTo(0,90)
        sleep    3s
        click element    ${B_ENABLE_EMPLOYEE_BTN}
        sleep    5s
        go to  ${EMPLOYEE_LIST}
                                                 #CreateNewTemplate
To create a new template
        Input Text  ${email}    &{admin_Login}[Email]
        Input Password  ${pwd}  &{admin_Login}[Password]
        Click Element   ${submit}
        sleep   5s
        go to    ${C_CREATE_TEMPLATE}
        sleep    2s
        click element    ${C_NEW_LABEL_BTN}
        sleep    2s
        click element    ${C_SELECT_SECTION_FIELD}
        sleep    2s
        click element    ${C_SECTION_TYPE}
        sleep    2s
        ${NAME_C}    Generate Random String    5    [LETTERS]
        input text    ${C_LABEL_NAME}    ${NAME_C}
        sleep    2s
        click element    ${C_LABEL_TYPE_FIELD}
        sleep    2s
        click element    ${C_LABEL_SELECT1}
        sleep    2s
        click element    ${C_CREATE_BTN}
        sleep    2s


        click element    ${C_NEW_LABEL_BTN}
        sleep    2s
        click element    ${C_SELECT_SECTION_FIELD}
        sleep    2s
        click element    ${C_SECTION_TYPE}
        sleep    2s
        ${NAME_C}    Generate Random String    5    [LETTERS]
        input text    ${C_LABEL_NAME}    ${NAME_C}
        sleep    2s
        click element    ${C_LABEL_TYPE_FIELD}
        sleep    2s
        click element    ${C_LABEL_SELECT2}
        sleep    2s
        click element    ${C_CREATE_BTN}
        sleep    2s

        click element    ${C_NEW_LABEL_BTN}
        sleep    2s
        click element    ${C_SELECT_SECTION_FIELD}
        sleep    2s
        click element    ${C_SECTION_TYPE}
        sleep    2s
        ${NAME_C}    Generate Random String    5    [LETTERS]
        input text    ${C_LABEL_NAME}    ${NAME_C}
        sleep    2s
        click element    ${C_LABEL_TYPE_FIELD}
        sleep    2s
        click element    ${C_LABEL_SELECT3}
        sleep    2s
        click element    ${C_CREATE_BTN}
        sleep    2s

        click element    ${C_NEW_LABEL_BTN}
        sleep    2s
        click element    ${C_SELECT_SECTION_FIELD}
        sleep    5s
        click element    ${C_SECTION_TYPE}
        sleep    5s
        ${NAME_C}    Generate Random String    5    [LETTERS]
        input text    ${C_LABEL_NAME}    ${NAME_C}
        sleep    3s
        click element    ${C_LABEL_TYPE_FIELD}
        sleep    5s
        click element    ${C_LABEL_SELECT4}
        sleep    5s
        click element    ${C_CREATE_BTN}
        sleep    5s

        click element    ${C_NEW_LABEL_BTN}
        sleep    5s
        click element    ${C_SELECT_SECTION_FIELD}
        sleep    5s
        click element    ${C_SECTION_TYPE}
        sleep    5s
        ${NAME_C}    Generate Random String    5    [LETTERS]
        input text    ${C_LABEL_NAME}    ${NAME_C}
        sleep    3s
        click element    ${C_LABEL_TYPE_FIELD}
        sleep    5s
        click element    ${C_LABEL_SELECT5}
        sleep    5s
        click element    ${C_CREATE_BTN}
        sleep    5s

    #2
        click element    ${C_NEW_LABEL_BTN}
        sleep    5s
        click element    ${C_SELECT_SECTION_FIELD}
        sleep    5s
        click element    ${C_SECTION_TYPE1}
        sleep    5s
        ${NAME_C}    Generate Random String    5    [LETTERS]
        input text    ${C_LABEL_NAME}    ${NAME_C}
        sleep    3s
        click element    ${C_LABEL_TYPE_FIELD}
        sleep    5s
        click element    ${C_LABEL_SELECT1}
        sleep    5s
        click element    ${C_CREATE_BTN}
        sleep    5s


        click element    ${C_NEW_LABEL_BTN}
        sleep    5s
        click element    ${C_SELECT_SECTION_FIELD}
        sleep    5s
        click element    ${C_SECTION_TYPE1}
        sleep    5s
        ${NAME_C}    Generate Random String    5    [LETTERS]
        input text    ${C_LABEL_NAME}    ${NAME_C}
        sleep    3s
        click element    ${C_LABEL_TYPE_FIELD}
        sleep    5s
        click element    ${C_LABEL_SELECT2}
        sleep    5s
        click element    ${C_CREATE_BTN}
        sleep    5s

        click element    ${C_NEW_LABEL_BTN}
        sleep    5s
        click element    ${C_SELECT_SECTION_FIELD}
        sleep    5s
        click element    ${C_SECTION_TYPE1}
        sleep    5s
        ${NAME_C}    Generate Random String    5    [LETTERS]
        input text    ${C_LABEL_NAME}    ${NAME_C}
        sleep    3s
        click element    ${C_LABEL_TYPE_FIELD}
        sleep    5s
        click element    ${C_LABEL_SELECT3}
        sleep    5s
        click element    ${C_CREATE_BTN}
        sleep    5s

        click element    ${C_NEW_LABEL_BTN}
        sleep    5s
        click element    ${C_SELECT_SECTION_FIELD}
        sleep    5s
        click element    ${C_SECTION_TYPE1}
        sleep    5s
        ${NAME_C}    Generate Random String    5    [LETTERS]
        input text    ${C_LABEL_NAME}    ${NAME_C}
        sleep    3s
        click element    ${C_LABEL_TYPE_FIELD}
        sleep    5s
        click element    ${C_LABEL_SELECT4}
        sleep    5s
        click element    ${C_CREATE_BTN}
        sleep    5s

        click element    ${C_NEW_LABEL_BTN}
        sleep    5s
        click element    ${C_SELECT_SECTION_FIELD}
        sleep    5s
        click element    ${C_SECTION_TYPE1}
        sleep    5s
        ${NAME_C}    Generate Random String    5    [LETTERS]
        input text    ${C_LABEL_NAME}    ${NAME_C}
        sleep    3s
        click element    ${C_LABEL_TYPE_FIELD}
        sleep    5s
        click element    ${C_LABEL_SELECT5}
        sleep    5s
        click element    ${C_CREATE_BTN}
        sleep    5s

    #3
        click element    ${C_NEW_LABEL_BTN}
        sleep    5s
        click element    ${C_SELECT_SECTION_FIELD}
        sleep    5s
        click element    ${C_SECTION_TYPE2}
        sleep    5s
        ${NAME_C}    Generate Random String    5    [LETTERS]
        input text    ${C_LABEL_NAME}    ${NAME_C}
        sleep    3s
        click element    ${C_LABEL_TYPE_FIELD}
        sleep    5s
        click element    ${C_LABEL_SELECT1}
        sleep    5s
        click element    ${C_CREATE_BTN}
        sleep    5s


        click element    ${C_NEW_LABEL_BTN}
        sleep    5s
        click element    ${C_SELECT_SECTION_FIELD}
        sleep    5s
        click element    ${C_SECTION_TYPE2}
        sleep    5s
        ${NAME_C}    Generate Random String    5    [LETTERS]
        input text    ${C_LABEL_NAME}    ${NAME_C}
        sleep    3s
        click element    ${C_LABEL_TYPE_FIELD}
        sleep    5s
        click element    ${C_LABEL_SELECT2}
        sleep    5s
        click element    ${C_CREATE_BTN}
        sleep    5s

        click element    ${C_NEW_LABEL_BTN}
        sleep    5s
        click element    ${C_SELECT_SECTION_FIELD}
        sleep    5s
        click element    ${C_SECTION_TYPE2}
        sleep    5s
        ${NAME_C}    Generate Random String    5    [LETTERS]
        input text    ${C_LABEL_NAME}    ${NAME_C}
        sleep    3s
        click element    ${C_LABEL_TYPE_FIELD}
        sleep    5s
        click element    ${C_LABEL_SELECT3}
        sleep    5s
        click element    ${C_CREATE_BTN}
        sleep    5s

        click element    ${C_NEW_LABEL_BTN}
        sleep    5s
        click element    ${C_SELECT_SECTION_FIELD}
        sleep    5s
        click element    ${C_SECTION_TYPE2}
        sleep    5s
        ${NAME_C}    Generate Random String    5    [LETTERS]
        input text    ${C_LABEL_NAME}    ${NAME_C}
        sleep    3s
        click element    ${C_LABEL_TYPE_FIELD}
        sleep    5s
        click element    ${C_LABEL_SELECT4}
        sleep    5s
        click element    ${C_CREATE_BTN}
        sleep    5s

        click element    ${C_NEW_LABEL_BTN}
        sleep    5s
        click element    ${C_SELECT_SECTION_FIELD}
        sleep    5s
        click element    ${C_SECTION_TYPE2}
        sleep    5s
        ${NAME_C}    Generate Random String    5    [LETTERS]
        input text    ${C_LABEL_NAME}    ${NAME_C}
        sleep    3s
        click element    ${C_LABEL_TYPE_FIELD}
        sleep    5s
        click element    ${C_LABEL_SELECT5}
        sleep    5s
        click element    ${C_CREATE_BTN}
        sleep    5s
    #4

        click element    ${C_NEW_LABEL_BTN}
        sleep    5s
        click element    ${C_SELECT_SECTION_FIELD}
        sleep    5s
        click element    ${C_SECTION_TYPE3}
        sleep    5s
        ${NAME_C}    Generate Random String    5    [LETTERS]
        input text    ${C_LABEL_NAME}    ${NAME_C}
        sleep    3s
        click element    ${C_LABEL_TYPE_FIELD}
        sleep    5s
        click element    ${C_LABEL_SELECT1}
        sleep    5s
        click element    ${C_CREATE_BTN}
        sleep    5s


        click element    ${C_NEW_LABEL_BTN}
        sleep    5s
        click element    ${C_SELECT_SECTION_FIELD}
        sleep    5s
        click element    ${C_SECTION_TYPE3}
        sleep    5s
        ${NAME_C}    Generate Random String    5    [LETTERS]
        input text    ${C_LABEL_NAME}    ${NAME_C}
        sleep    3s
        click element    ${C_LABEL_TYPE_FIELD}
        sleep    5s
        click element    ${C_LABEL_SELECT2}
        sleep    5s
        click element    ${C_CREATE_BTN}
        sleep    5s

        click element    ${C_NEW_LABEL_BTN}
        sleep    5s
        click element    ${C_SELECT_SECTION_FIELD}
        sleep    5s
        click element    ${C_SECTION_TYPE3}
        sleep    5s
        ${NAME_C}    Generate Random String    5    [LETTERS]
        input text    ${C_LABEL_NAME}    ${NAME_C}
        sleep    3s
        click element    ${C_LABEL_TYPE_FIELD}
        sleep    5s
        click element    ${C_LABEL_SELECT3}
        sleep    5s
        click element    ${C_CREATE_BTN}
        sleep    5s

        click element    ${C_NEW_LABEL_BTN}
        sleep    5s
        click element    ${C_SELECT_SECTION_FIELD}
        sleep    5s
        click element    ${C_SECTION_TYPE3}
        sleep    5s
        ${NAME_C}    Generate Random String    5    [LETTERS]
        input text    ${C_LABEL_NAME}    ${NAME_C}
        sleep    3s
        click element    ${C_LABEL_TYPE_FIELD}
        sleep    5s
        click element    ${C_LABEL_SELECT4}
        sleep    5s
        click element    ${C_CREATE_BTN}
        sleep    5s

        click element    ${C_NEW_LABEL_BTN}
        sleep    5s
        click element    ${C_SELECT_SECTION_FIELD}
        sleep    5s
        click element    ${C_SECTION_TYPE3}
        sleep    5s
        ${NAME_C}    Generate Random String    5    [LETTERS]
        input text    ${C_LABEL_NAME}    ${NAME_C}
        sleep    3s
        click element    ${C_LABEL_TYPE_FIELD}
        sleep    5s
        click element    ${C_LABEL_SELECT5}
        sleep    5s
        click element    ${C_CREATE_BTN}
        sleep    5s

    #5
        click element    ${C_NEW_LABEL_BTN}
        sleep    5s
        click element    ${C_SELECT_SECTION_FIELD}
        sleep    5s
        click element    ${C_SECTION_TYPE4}
        sleep    5s
        ${NAME_C}    Generate Random String    5    [LETTERS]
        input text    ${C_LABEL_NAME}    ${NAME_C}
        sleep    3s
        click element    ${C_LABEL_TYPE_FIELD}
        sleep    5s
        click element    ${C_LABEL_SELECT1}
        sleep    5s
        click element    ${C_CREATE_BTN}
        sleep    5s


        click element    ${C_NEW_LABEL_BTN}
        sleep    5s
        click element    ${C_SELECT_SECTION_FIELD}
        sleep    5s
        click element    ${C_SECTION_TYPE4}
        sleep    5s
        ${NAME_C}    Generate Random String    5    [LETTERS]
        input text    ${C_LABEL_NAME}    ${NAME_C}
        sleep    3s
        click element    ${C_LABEL_TYPE_FIELD}
        sleep    5s
        click element    ${C_LABEL_SELECT2}
        sleep    5s
        click element    ${C_CREATE_BTN}
        sleep    5s

        click element    ${C_NEW_LABEL_BTN}
        sleep    5s
        click element    ${C_SELECT_SECTION_FIELD}
        sleep    5s
        click element    ${C_SECTION_TYPE4}
        sleep    5s
        ${NAME_C}    Generate Random String    5    [LETTERS]
        input text    ${C_LABEL_NAME}    ${NAME_C}
        sleep    3s
        click element    ${C_LABEL_TYPE_FIELD}
        sleep    5s
        click element    ${C_LABEL_SELECT3}
        sleep    5s
        click element    ${C_CREATE_BTN}
        sleep    5s

        click element    ${C_NEW_LABEL_BTN}
        sleep    5s
        click element    ${C_SELECT_SECTION_FIELD}
        sleep    5s
        click element    ${C_SECTION_TYPE4}
        sleep    5s
        ${NAME_C}    Generate Random String    5    [LETTERS]
        input text    ${C_LABEL_NAME}    ${NAME_C}
        sleep    3s
        click element    ${C_LABEL_TYPE_FIELD}
        sleep    5s
        click element    ${C_LABEL_SELECT4}
        sleep    5s
        click element    ${C_CREATE_BTN}
        sleep    5s

        click element    ${C_NEW_LABEL_BTN}
        sleep    5s
        click element    ${C_SELECT_SECTION_FIELD}
        sleep    5s
        click element    ${C_SECTION_TYPE4}
        sleep    5s
        ${NAME_C}    Generate Random String    5    [LETTERS]
        input text    ${C_LABEL_NAME}    ${NAME_C}
        sleep    3s
        click element    ${C_LABEL_TYPE_FIELD}
        sleep    5s
        click element    ${C_LABEL_SELECT5}
        sleep    5s
        click element    ${C_CREATE_BTN}
        sleep    5s





