#include "database.h"
#include <string>
#include <ctime>

void sleep(float seconds) {
    clock_t startClock = clock();
    float secondsAhead = seconds * CLOCKS_PER_SEC;
    while (clock() < startClock + secondsAhead);
    return;
}
int main(void)
{
    MySQL Mysql;
    bool flag = true,manager;
    string n;

    cout << "Which user you are: 1.Manger 2.Employee (Hint:Manger All Actions): ";
    getline(cin, n, '\n');
    manager = stoi(n)-1;

    

    while (flag) {
        /*sleep(1);
        if (!manager)
        {
        cout << "Please choose an option and press ENTER:" << endl;
        cout << "1. Show Is Book X in stock?" << endl;
        cout << "2. Show Who is the oldest customer" << endl;
        cout << "3. Show What is the oldest book?" << endl;
        cout << "4. Show Current orders list" << endl;
        cout << "5. Show Several copies of book y by the store have been sold" << endl;
        }
        cout << "6. Show Who is the most read Author between 2 dates." << endl;
        cout << "7. Show List of the 3 customers who have purchased the most books over the years" << endl;
        cout << "8. Show Who is the book with the largest number of translations currently in stock. " << endl;
        cout << "9. Show Customer Purchase History x" << endl;
        cout << "10. Show Order History of Man X." << endl;
        cout << "11. Show Shipping cost calculation" << endl;
        cout << "12. Show Has a customer X split a book purchase into several shipments." << endl;
        cout << "13. Show What is the current status of a particular shipment" << endl;
        cout << "14. Show What is the amount of shipments made by a company XPress in a particular month" << endl;
        cout << "15. Show The total money transferred to the store account through a Bit app in a particular month" << endl;
        cout << "16. Show What are the transactions that have been made during the last 12 months, and which have yielded Greater profit than the average trading profit in these 12 months" << endl;
        cout << "17. Show how many deliveries have been made during the last 12 months through Israel Post, and how many have been made through company x" << endl;
        cout << "18. Show Data on all shipments made, ever, and including at least 2 editions Different of the same book" << endl;
        cout << "19. Show Data on all customers who have previously purchased, at any time, at least one book From the store, and who have not made any purchases during the last 24 months" << endl;
        cout << "20. Show The list of customers who made orders, the books they ordered arrived at the store, The store contacted them to inform them of the availability of the book. The contact was made 14 days ago, and customers have not yet purchased the book." << endl;
        cout << "21. Show Number of books in the warehouse on a monthly basis." << endl;
        cout << "22. Show How many books did the store purchase between 2 dates and what was the total payment for them" << endl;
        cout << "23. Show How much does a store Net profit in a given month? " << endl;
        cout << "24. Show Average of annual transactions in monthly cross-section" << endl;
        cout << "25. Show What is the gross salary of an employee X in a particular month." << endl;
        cout << "26. Show Who sells with the most trades in month X	" << endl;
        cout << "0. Exit" << endl << endl;*/
        cout << "Your Choossing:";
        getline(cin, n, '\n');
        cout << endl;
        switch (stoi(n)) {
        case 1: {
            if (!manager)
            Mysql.query1();
            else
                cout <<"Not Authorize"<< endl;
            break;
        }
        case 2: {
            if (!manager)
                Mysql.query2();
            else
                cout << "Not Authorize" << endl;
            break;
        }
        case 3: {
            if (!manager)
                Mysql.query3();
            else
                cout << "Not Authorize" << endl;
            break;
        }
        case 4: {
            if (!manager)
                Mysql.query4();
            else
                cout << "Not Authorize" << endl;
            break;
        }
        case 5: {
            if (!manager)
                Mysql.query5();
            else
                cout << "Not Authorize" << endl;
            break;
        }
        case 6: {
            Mysql.query6();
            break;
        }
        case 7: {
            Mysql.query7();
            break;
        }
        case 8: {
            Mysql.query8();
            break;
        }
        case 9: {
            Mysql.query9();
            break;
        }
        case 10: {
            Mysql.query10();
            break;
        }
        case 11: {
            Mysql.query11();
            break;
        }
        case 12: {
            Mysql.query12();
            break;
        }
        case 13: {
            Mysql.query13();
            break;
        }
        case 14: {
            Mysql.query14();
            break;
        }
        case 15: {
            Mysql.query15();
            break;
        }
        case 16: {
            Mysql.query16();
            break;
        }
        case 17: {
            Mysql.query17();
            break;
        }
        case 18: {
            Mysql.query18();
            break;
        }
        case 19: {
            Mysql.query19();
            break;
        }
        case 20: {
            Mysql.query20();
            break;
        }
        case 21: {
            Mysql.query21();
            break;
        }
        case 22: {
            Mysql.query22();
            break;
        }
        case 23: {
            Mysql.query23();
            break;
        }
        case 24: {
            Mysql.query24();
            break;
        }
        case 25: {
            Mysql.query25();
            break;
        }
        case 26: {
            Mysql.query26();
            break;
        }
        case 0: {
            cout << "The End" << endl << endl;
            flag = false;
            break;
        }
        default:
            cout << "Wrong option number, please choose another number." << endl << endl;
            break;
        }
    }
    return 0;
}

