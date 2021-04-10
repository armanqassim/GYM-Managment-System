//Arman Qassim Abdullah
import 'dart:io';

// global lists

  List <int>IdOfCustomerList;
  int IdOfCustomerInput;
  List<String>fullNameList;
  String CustomerFullNameInput;
  List<String>GenderList;
  String GenderInput;
  List<num>AgeList;
  int ageInput;
  List<num>PhoneNumberList;
  int phoneNumberInput;
  List<String>CityList;
  var CityInput;
  List<num>PriceOfCustomerList;
  num PriceOfCustomerInput;

  //Global Variables

  var choiceInput;  // Variable For Switch Case
  var removeIndex;  // Variable For Remove Data In List
  int showIndex;  // Variable For Getting Index From List
  var searchIndex;  // Variable For Searching Index In List
  var coun;  // Variable For Countinue The Program


  // Function For Enter Customer Data Into Our System 
  void entercustomer ()
  {
      String askingUser;
      print("Enter ID: ");
      IdOfCustomerInput = int.parse(stdin.readLineSync());
      print("Enter Full Name: ");
      CustomerFullNameInput = stdin.readLineSync();
      print("Enter Gender For Male Enter M For Female Enter F: ");
      GenderInput = stdin.readLineSync();
      print("Enter age: ");
      ageInput = int.parse(stdin.readLineSync());
      AgeList.add(ageInput);
      print("Enter phone number: ");
      phoneNumberInput = int.parse(stdin.readLineSync());
      print("Enter City: ");
      CityInput = stdin.readLineSync();
      print("Enter Price: ");
      PriceOfCustomerInput = int.parse(stdin.readLineSync());

      // Adding Datas to List
      if(PriceOfCustomerInput == 30)
      {
        print("You Are Choose BRONZE Package ");
      }else if(PriceOfCustomerInput == 65)
      {
        print("You Are Choose SILVER Package ");
      }else if(PriceOfCustomerInput == 75)
      {
        print("You Are Choose GOLD Package ");
      }else if(PriceOfCustomerInput == 120)
      {
        print("You Are Choose PLATINUM Package ");
      }else
      {
        print("Sorry! You Must Choose One Of the Package That Is Include In The System ! ");
        print("The Price That You Are Entered Is Not Exist !");
        print("Here You Can Check Our Packages And Prices ");
        print("  ");
        serviceAndPriciList();
        print(" ");
        print(" ");
        print("If You Choose One Of Our Packages Please Enter The Price Again");
        print("Enter Price: ");
        PriceOfCustomerInput = int.parse(stdin.readLineSync());

        if(PriceOfCustomerInput == 30)
      {
        print("You Are Choose BRONZE Package ");
      }else if(PriceOfCustomerInput == 65)
      {
        print("You Are Choose SILVER Package ");
      }else if(PriceOfCustomerInput == 75)
      {
        print("You Are Choose GOLD Package ");
      }else if(PriceOfCustomerInput == 120)
      {
        print("You Are Choose PLATINUM Package ");
      }
      
      }
      print("Are You Sure That You Want To Register ?");
      print("Enter YES Or NO");
      askingUser = stdin.readLineSync();
      while(askingUser == "YES" || askingUser == "Yes"|| askingUser == "yes")
      {
        IdOfCustomerList.add(IdOfCustomerInput);
        fullNameList.add(CustomerFullNameInput);
        GenderList.add(GenderInput);
        PhoneNumberList.add(phoneNumberInput);
        CityList.add(CityInput);
        PriceOfCustomerList.add(PriceOfCustomerInput);
        print("Thanks for registration");
        break;
      }
      while(askingUser == "NO" || askingUser == "No"|| askingUser == "no")
      {
        print("Thanks");
        break;
      }      
  }
  // Function For Removeing a Customer data in our System
  void removeCustomer()
  {
       print(fullNameList);
       print("Enter The index that you want to remove: ");
       print("Index Start From Zero ");
       removeIndex = int.parse(stdin.readLineSync());
       IdOfCustomerList.removeAt(removeIndex);
       fullNameList.removeAt(removeIndex);
       GenderList.removeAt(removeIndex);
       AgeList.removeAt(removeIndex);
       PhoneNumberList.removeAt(removeIndex);
       CityList.removeAt(removeIndex);
       PriceOfCustomerList.removeAt(removeIndex);
       print(fullNameList);
       print("The data removed successfully ");

    print("Do you want to continue ? 1 For YES 2 For No: ");
    coun = int.parse(stdin.readLineSync());
    while(coun == 1)
    {
      continueTheProgram();
      break;
    }if(coun == 2)
    {
      closeProgram();
    }
  }
  // Function For Checking a Customer Data In Our System

  void checkingCustomer()
  {
       print("Enter The index that you want to See: ");
       print("Index Start From Zero ");
       showIndex = int.parse(stdin.readLineSync());
       print("-----------------------------------------");
       var IDCustomer = IdOfCustomerList.elementAt(showIndex);
       print("ID: $IDCustomer");
       print("Full Name:"+fullNameList.elementAt(showIndex));
       print("Gender: "+GenderList.elementAt(showIndex));
       var ageInputVariable = AgeList.elementAt(showIndex);
       print("Age: $ageInputVariable");
       var phoneNumberVariable = PhoneNumberList.elementAt(showIndex);
       print("Phone Number: $phoneNumberVariable");
       print("City: "+CityList.elementAt(showIndex));
       var priceOfCustomer = PriceOfCustomerList.elementAt(showIndex);
       var packagesOfCustomer = priceOfCustomer;
       var packagesName;
       if (packagesOfCustomer == 30 )
       {
           packagesName = "BRONZE";
           print("Price: $priceOfCustomer USD Package: $packagesName");
       }if(packagesOfCustomer == 65)
       {
         packagesName = "SILVER";
         print("Price: $priceOfCustomer USD Package: $packagesName");
       }if(packagesOfCustomer == 75)
       {
         packagesName = "GOLD";
         print("Price: $priceOfCustomer USD Package: $packagesName");
       }if(packagesOfCustomer == 120)
       {
         packagesName = "PLATINUM";
         print("Price: $priceOfCustomer USD Package: $packagesName");
       }
    print("Do you want to continue ? 1 For YES 2 For No: ");
    coun = int.parse(stdin.readLineSync());
    while(coun == 1)
    {
      continueTheProgram();
      break;
    }if(coun == 2)
    {
      closeProgram();
    }
       
  }

  // Function For Searching Customer Data In Our System
  void searchingCustomer()
  {
    print("Enter Name that you want to Search: ");
       searchIndex = stdin.readLineSync();
       if(fullNameList.contains(searchIndex) == true)
       {
       print("The name that you searched is available: ");
       print(" ");
       print("You can see all the information of the customer that you searched for ");
       print("-----------------------------------------");
       var indexofAllElement = fullNameList.indexOf(searchIndex);
       var idIndex = fullNameList.indexOf(searchIndex);
       var idInput = IdOfCustomerList.elementAt(idIndex);
       var ageindex = fullNameList.indexOf(searchIndex);
       var ageinput = AgeList.elementAt(ageindex);
       var phoneindex = fullNameList.indexOf(searchIndex);
       var phoneinput = PhoneNumberList.elementAt(phoneindex);
       var priceIndex = fullNameList.indexOf(searchIndex);
       var priceInput = PriceOfCustomerList.elementAt(priceIndex);
       print("ID: $idInput");
       print("Full name: "+fullNameList.elementAt(indexofAllElement));
       print("Gender: "+GenderList.elementAt(indexofAllElement));
       print("Age: $ageinput");
       print("Phone Number: $phoneinput");
       print("city: "+CityList.elementAt(indexofAllElement));
       var customerPackageName;
       if(priceInput == 30)
       {
         customerPackageName = "BRONZE";
          print("Price: $priceInput USD Package: $customerPackageName");
       }if(priceInput == 65)
       {
         customerPackageName = "SILVER";
          print("Price: $priceInput USD Package: $customerPackageName");
       }if(priceInput == 75)
       {
         customerPackageName = "GOLD";
          print("Price: $priceInput USD Package: $customerPackageName");
       }if(priceInput == 120)
       {
         customerPackageName = "PLATINUM";
          print("Price: $priceInput USD Package: $customerPackageName");
       }
       }else 
       {
         print("Sorry we can not find the data that you searched for :(");
       }
    print("Do you want to continue ? 1 For YES 2 For No: ");
    coun = int.parse(stdin.readLineSync());
    while(coun == 1)
    {
      continueTheProgram();
      break;
    }if(coun == 2)
    {
      closeProgram();
    }
  }

    // Function For Service and Price List
  void serviceAndPriciList()
  {
    print("|------------------------------------------------|"); print("|Packages |                              |Price  | ");
print("|----------------------------------------|-------|");
print("|Bronze   |                              |30 USD |");
print("|----------------------------------------|-------|");
print("|Silver   |                              |65 USD |");
print("|----------------------------------------|-------|");
print("|Gold     |                              |75 USD |"); print("|----------------------------------------|-------|");
print("|Platinum |                              |120 USD|");
print("|------------------------------------------------|");

print("\n");
print("\n");
print("|------------------------------------------|");
print("|Details About All Packages                |");
print("|------------------------------------------|");
print("|Bronze Include : Only GYM                 |");
print("|------------------------------------------|");
print("|Silver Include : GYM + Swimming Pool      |");
print("|------------------------------------------|");
print("|Gold Include : GYM + Swimming Pool + SPA  |");
print("|------------------------------------------|");
print("|Platinum Include : All Packages           |");
print("|------------------------------------------|");    
  }
  // Function For Add Or Remove Packages
  void addOrRemovePackages ()
  {
    String packageName;
    String packageDeatils;
    var caseInputValue;
    var package = {
      "Bronze": "Include : Only GYM ",
      "Silver": "Include : GYM + Swimming Pool ",
      "Gold":"Include : GYM + Swimming Pool + SPA ",
      "Platinum":"Include : All Packages "
    };
    print("For Add A Package Enter One ");
    print("For Remove A Package Enter Two ");
    caseInputValue = int.parse(stdin.readLineSync());
    switch (caseInputValue)
    {
      case 1:
      print("Enter The package Name: ");
      packageName = stdin.readLineSync();
      print("This Package Includes: ");
      packageDeatils = stdin.readLineSync();
      // Enter The Datas into our MAP That we created for our packages in the system
      package.putIfAbsent(packageName, () => "Includes: $packageDeatils");
      print(" ");
      print(package);
      break;
      case 2:
      String packageRemove;
      print("Enter The Package Name That You Want To Remove In The System: ");
      packageRemove = stdin.readLineSync();
      if(package.containsKey(packageRemove) == true)
      {
          package.remove(packageRemove);
          print("The Package Removed seccusffuly");
      }else
      if(package.containsKey(packageRemove) == false)
      {
        print("We Don't Have The $packageRemove Package That You Search it for! ");
      }
    
    }
   

  }
  // Function For Close The Program
  void closeProgram()
  {
    print("Thanks For Using Our System! ");
    print("This System Created By Arman Qassim");
  }
  // continue Function
  void continueTheProgram()
  {
    
    
    print("Welcome to our GYM Center:");
    print("For Add a Customer Enter One:");
    print("For Remove a Customer Enter two:");
    print("For checking our customer deatils Enter Three: ");
    print("For Searching Customer Deatils Enter Four:");
    print("For Service And Price List Enter Five:");
    print("For Add Or Remove A Package Enter Six");
    print("For Close The Program Enter Seven:");
    choiceInput = int.parse(stdin.readLineSync());
    switch (choiceInput)
    {
      case 1:
      entercustomer();
      break;
      case 2:
      removeCustomer();
      break;
      case 3:
      checkingCustomer();
      break;
      case 4:
      searchingCustomer();
      break;
      case 5:
      serviceAndPriciList();
      print("Do You Want To Go Back To The Main Menu ? ");
      print("Enter 1 For YES and 2 For NO ! ");
      coun = int.parse(stdin.readLineSync());
      print("\n");
      print("\n");
      while(coun == 1)
      {
      continueTheProgram();
      break;
      }
      break;
      case 6:
      addOrRemovePackages();
      break;
      case 7:
      closeProgram();
      break;
      default:
      print("Sorry,Dear User Maybe You Entered A Wrong Number");
      continueTheProgram();
    }
    
     if(coun == 2)
    {
      closeProgram();
    }
  }
  // Main Function 
void main()
{
  
  IdOfCustomerList = [1];
  fullNameList = ["Arman Qassim"];
  GenderList = ["M"];
  AgeList = [20];
  PhoneNumberList = [07514905276];
  CityList = ["Erbil"];
  PriceOfCustomerList = [120];

    print("Welcome to our GYM Center:");
    print("For Add a Customer Enter One:");
    print("For Remove a Customer Enter two:");
    print("For checking our customer deatils Enter Three: ");
    print("For Searching Customer Deatils Enter Four:");
    print("For Service And Price List Enter Five:");
    print("For Add Or Remove A Package Enter Six");
    print("For Close The Program Enter Seven:");
    choiceInput = int.parse(stdin.readLineSync());
    switch (choiceInput)
    {
      case 1:
      entercustomer();
      break;
      case 2:
      removeCustomer();
      break;
      case 3:
      checkingCustomer();
      break;
      case 4:
      searchingCustomer();
      break;
      case 5:
      serviceAndPriciList();
      print("Do You Want To Go Back To The Main Menu ? ");
      print("Enter 1 For YES and 2 For NO ! ");
      coun = int.parse(stdin.readLineSync());
      print("\n");
      while(coun == 1)
      {
      continueTheProgram();
      break;
      }if(coun == 2)
      {
        closeProgram();
      }
      break;
      case 6:
      addOrRemovePackages();
      break;
      case 7:
      closeProgram();
      break;
      default:
      print("Sorry,Dear User Maybe You Entered A Wrong Number");
       continueTheProgram();
      
    }
   
    print("Do you want to continue ? 1 For YES 2 For No: ");
    coun = int.parse(stdin.readLineSync());
    while(coun == 1)
    {
      continueTheProgram();
      break;
    }if(coun == 2)
    {
      closeProgram();
    }
    
}
