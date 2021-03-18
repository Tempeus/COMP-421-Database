import java.sql.* ;
import java.util.Scanner;

public class VaccineApp {
    public static Connection con;
    public static Statement statement;
    public static int sqlCode = 0;      // Variable to hold SQLCODE
    public static String sqlState = "00000";  // Variable to hold SQLSTATE

    public static void main ( String [] args ) throws SQLException {
        // Unique table names.  Either the user supplies a unique identifier as a command line argument, or the program makes one up.
        String tableName = "";

        if (args.length > 0)
            tableName += args[0];
        else
            tableName += "exampletbl";

        // Register the driver.  You must register the driver before you can use it.
        try {
            DriverManager.registerDriver(new com.ibm.db2.jcc.DB2Driver());
        } catch (Exception cnfe) {
            System.out.println("Class not found");
        }

        // This is the url you must use for DB2.
        //Note: This url may not valid now !
        String url = "jdbc:db2://winter2021-comp421.cs.mcgill.ca:50000/cs421";

        //REMEMBER to remove your user id and password before submitting your code!!
        String your_userid = "kli69";
        String your_password = "&Y_JQe^>";
        //AS AN ALTERNATIVE, you can just set your password in the shell environment in the Unix (as shown below) and read it from there.
        //$  export SOCSPASSWD=yoursocspasswd
        if (your_userid == null && (your_userid = System.getenv("SOCSUSER")) == null) {
            System.err.println("Error!! do not have a password to connect to the database!");
            System.exit(1);
        }
        if (your_password == null && (your_password = System.getenv("SOCSPASSWD")) == null) {
            System.err.println("Error!! do not have a password to connect to the database!");
            System.exit(1);
        }
        con = DriverManager.getConnection(url, your_userid, your_password);
        statement = con.createStatement();

        //Displaying the menu and reading/waiting for a response
        while (con.isValid(3)) {
            simpleConsole();
        }
    }

    public static void simpleConsole() throws SQLException {
        System.out.println("VaccineApp Main Menu \n \t1. Add a person \n \t2. Assign a slot to a person \n \t3. Enter Vaccination information \n \t4. Exit Application\nPlease Enter Your Option: ");
        Scanner scan = new Scanner(System.in);
        //wait for a response from user
        int input = scan.nextInt();
        switch (input) {
            case 1:
                addPerson();
                break;
            case 2:
                assignSlotToPerson();
                break;
            case 3:
                addVaccineInfo();
                break;
            case 4:
                exitProgram();
                break;
            default:
                System.out.println("Invalid Option, please try again.");
                break;
        }
    }

    public static void addPerson(){
        String hinsurenum = inputAnswer("Provide Health Insurance Number: ");
        String name = inputAnswer("Provide a name: ");
        String phone = inputAnswer("Provide a phone number: ");
        String birthday = inputAnswer("Provide a date of birth (yyyy-mm-dd): ");
        String gender = inputAnswer("Provide a gender (M/F): ");
        String registrationdate = inputAnswer("Provide today's registration date (yyyy-mm-dd): ");
        String city = inputAnswer("Provide the city: ");
        String streetAddress = inputAnswer("Provide the street address: ");
        String postalCode = inputAnswer("Provide the postal code: ");
        String category = inputAnswer("Provide the category: ");
        try{
            String query = "SELECT * FROM PATIENT WHERE hinsurenum = "+hinsurenum;
            System.out.println(query);
            java.sql.ResultSet resultset = statement.executeQuery(query);
            //Make sure its not already in database
            if(resultset.next()){
                String response = inputAnswer("Patient already exists, would you like to update the user? (Y/N)");
                if(response.equals("Y")){
                    try{
                        String updateQuery = "UPDATE PATIENT SET patientname = "
                                +toSQL(name)+", phonenumber = "
                                +toSQL(phone)+", dateofbirth ="
                                +toSQL(birthday)+", gender = "
                                +toSQL(gender)+", registrationdate = "
                                +toSQL(registrationdate)+", patientcity = "
                                +toSQL(city)+", patientstreetaddress = "
                                +toSQL(streetAddress)+", patientpostalcode = "
                                +toSQL(postalCode)+", category = "
                                +toSQL(category)+" WHERE hinsurenum = "+hinsurenum;
                        System.out.println(updateQuery);
                        statement.executeUpdate(updateQuery);
                        System.out.println(name +"\'s personal information was successfully updated");
                    }
                    catch(SQLException e){
                        sqlCode = e.getErrorCode(); // Get SQLCODE
                        sqlState = e.getSQLState(); // Get SQLSTATE

                        // Your code to handle errors comes here;
                        // something more meaningful than a print would be good
                        System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
                        System.out.println(e);
                    }
                }
            }
            else{
                try{
                    String insertquery = "INSERT INTO PATIENT (hinsurenum,patientname,phonenumber,dateofbirth,gender,registrationdate,patientcity,patientstreetaddress,patientpostalcode,numofdoses,category) VALUES ("+hinsurenum+", "+toSQL(name)+", "+toSQL(phone)+", "+toSQL(birthday)+", "+toSQL(gender)+", "+toSQL(registrationdate)+", "+toSQL(city)+", "+toSQL(streetAddress)+", "+toSQL(postalCode)+",0 ,"+toSQL(category)+")";
                    System.out.println(insertquery);
                    statement.executeUpdate(insertquery);
                    System.out.println("Added "+name+" to the database");
                }
                catch(SQLException e){
                    sqlCode = e.getErrorCode(); // Get SQLCODE
                    sqlState = e.getSQLState(); // Get SQLSTATE

                    // Your code to handle errors comes here;
                    // something more meaningful than a print would be good
                    System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
                    System.out.println(e);
                }
            }

        } catch (SQLException e) {
            sqlCode = e.getErrorCode(); // Get SQLCODE
            sqlState = e.getSQLState(); // Get SQLSTATE

            // Your code to handle errors comes here;
            // something more meaningful than a print would be good
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
            System.out.println(e);
        }
    }

    public static void assignSlotToPerson(){
        try{
            String hinsurenum = inputAnswer("Provide the Health Insurance Number of the patient to be assigned to a slot: ");
            int dosesReceived = getNumOfDoses(hinsurenum);

            if(dosesReceived != 0){
                int requiredDoses = getRequiredNumDose(hinsurenum);

                if(requiredDoses == dosesReceived){
                    System.out.println("Patient already has required amount of doses");
                    return;
                }
            }

            System.out.println("Available slots: ");
            String query = "SELECT vaccslot, stime, vaccdate, locname FROM SLOT WHERE hinsurenum is NULL and vaccdate > CURRENT_DATE";
            System.out.println(query);
            java.sql.ResultSet resultset = statement.executeQuery(query);
            while(resultset.next()){
                int slotID = resultset.getInt(1);
                String slotTime = resultset.getString(2);
                String slotDate = resultset.getString(3);
                String location = resultset.getString(4);
                System.out.println("Slot ID"+slotID+": Location: "+location+" SlotDate: "+ slotDate+" SlotTime: "+slotTime);
            }

            String selectedSlotID = inputAnswer("SlotID chosen: ");
            String selectedLocation = inputAnswer("Location chosen: ");

            boolean valid = false;
            System.out.println(query);
            java.sql.ResultSet verification = statement.executeQuery(query);
            while(verification.next()){
                if (Integer.parseInt(selectedSlotID) == verification.getInt(1) && selectedLocation.equals(verification.getString(4))) {
                    valid = true;
                    break;
                }
            }

            if (valid == true){
                try{
                    String updateSQL = "UPDATE SLOT SET hinsurenum = "+toSQL(hinsurenum)+", dateassigned = CURRENT_DATE WHERE (vaccslot, locname) = ("+toSQL(selectedSlotID)+", "+toSQL(selectedLocation)+")";
                    System.out.println(updateSQL);
                    statement.executeUpdate(updateSQL);
                    System.out.println("Added Resident to Slot "+selectedSlotID+" at "+selectedLocation);
                }
                catch(SQLException e){
                    sqlCode = e.getErrorCode(); // Get SQLCODE
                    sqlState = e.getSQLState(); // Get SQLSTATE

                    // Your code to handle errors comes here;
                    // something more meaningful than a print would be good
                    System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
                    System.out.println(e);
                }
            }
            else{
                System.out.println("Cannot assign person to the given slot");
                return;
            }
        } catch (SQLException e) {
            sqlCode = e.getErrorCode(); // Get SQLCODE
            sqlState = e.getSQLState(); // Get SQLSTATE

            // Your code to handle errors comes here;
            // something more meaningful than a print would be good
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
            System.out.println(e);
        }
    }

    public static void addVaccineInfo(){
        String location = inputAnswer("Enter vaccination location: ");
        String vacdate = inputAnswer("Enter vaccination date (yyyy-mm-dd): ");
        String vactime = inputAnswer("Enter vaccination time: ");
        String vacslotnum = inputAnswer("Enter slot number: ");
        String licensenum = inputAnswer("Enter license number: ");
        String vacname = inputAnswer("Enter vaccination name: ");
        String batchnum = inputAnswer("Enter batch name: ");
        String vialnum = inputAnswer("Enter vial number: ");
        try{
            int count = 0;
            int hinsurenum = 0;
            String prevacname = "";
            String query = "SELECT * FROM SLOT WHERE locname = "+ toSQL(location) + " AND vaccdate = " + toSQL(vacdate) + " AND stime = "+toSQL(vactime) + " AND vaccslot = " + (vacslotnum);
            System.out.println(query);
            java.sql.ResultSet resultset = statement.executeQuery (query);

            if(resultset.next()){
                do{
                    hinsurenum = resultset.getInt("hinsurenum");
                } while(resultset.next());
            }
            System.out.println("health insurance number: "+ hinsurenum);

            if(hinsurenum != 0){
                String hinsurenumStr = String.valueOf(hinsurenum);

                query = "SELECT * FROM SLOT WHERE hinsurenum = "+(hinsurenumStr);
                System.out.println(query);
                resultset = statement.executeQuery(query);

                if(resultset.next()){
                    do{
                        count++;
                        if(count == 1) {
                            prevacname = resultset.getString("vaccinename");
                        }
                    }while(resultset.next());

                    System.out.println("Count: "+ count);
                    System.out.println("Previous vacination name: "+ prevacname);

                    if(count == 2){
                        if(prevacname != null){
                            if(!prevacname.equals(vacname)){
                                System.out.println("The name of the vaccine must be the same!");
                                return;
                            }
                        }
                    }
                }
            }
            System.out.println("Valid vaccination information");
            String update = "UPDATE SLOT SET nurseliscennum = "+licensenum+", vaccinename = "+toSQL(vacname)+", batchnum = "+(batchnum)+", vialnum = "+(vialnum)+" WHERE locname = "+toSQL(location)+" AND vaccdate = "+toSQL(vacdate)+" AND stime = "+toSQL(vactime)+" AND vaccslot = "+(vacslotnum);
            System.out.println(update);
            statement.executeUpdate(update);
            System.out.println("Success");

        } catch (SQLException e) {
            sqlCode = e.getErrorCode(); // Get SQLCODE
            sqlState = e.getSQLState(); // Get SQLSTATE

            // Your code to handle errors comes here;
            // something more meaningful than a print would be good
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
            System.out.println(e);
        }
    }

    public static void exitProgram() throws SQLException {
        System.out.println("Exiting program...");
        statement.close();
        System.out.println("Terminating connection...");
        con.close();
    }

    public static int getRequiredNumDose(String insurenum){
        int doses = 2;
        try{
            String requiredDosesQuery = "SELECT requiredose FROM VACCINE WHERE vaccinename in (SELECT vaccinename FROM SLOT WHERE hinsurenum = "+toSQL(insurenum)+" limit 1)";
            System.out.println(requiredDosesQuery);
            ResultSet result = statement.executeQuery(requiredDosesQuery);
            while(result.next()){
                doses = result.getInt("requiredose");
            }
        } catch (SQLException e) {
            sqlCode = e.getErrorCode(); // Get SQLCODE
            sqlState = e.getSQLState(); // Get SQLSTATE

            // Your code to handle errors comes here;
            // something more meaningful than a print would be good
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
            System.out.println(e);
        }
        return doses;
    }

    public static int getNumOfDoses(String insurenum){
        int doses = 0;

        // Get number of doses that the person has recieved
        try{
            String dosesRecievedQuery = "SELECT COUNT(*) FROM SLOT WHERE hinsurenum = "+ insurenum;
            System.out.println(dosesRecievedQuery);
            ResultSet result = statement.executeQuery ( dosesRecievedQuery ) ;
            while (result.next()){
                doses = result.getInt("1");
            }
        }
        catch(SQLException e) {
            sqlCode = e.getErrorCode(); // Get SQLCODE
            sqlState = e.getSQLState(); // Get SQLSTATE

            // Your code to handle errors comes here;
            // something more meaningful than a print would be good
            System.out.println("Code: " + sqlCode + "  sqlState: " + sqlState);
            System.out.println(e);
        }
        return doses;
    }

    public static String inputAnswer(String input){
        Scanner scan = new Scanner(System.in);
        System.out.println(input);
        return scan.nextLine();
    }

    public static String toSQL(String var){
        return "\'"+var+"\'";
    }
}
