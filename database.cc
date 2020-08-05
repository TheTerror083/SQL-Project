#include "database.h"
#include <stdio.h>
#include <string>
#include <math.h>

MySQL :: MySQL()
{
    connect = mysql_init(NULL);
    if ( !connect )
    {
        cout << "MySQL Initialization Failed";
    }   

    connect = mysql_real_connect(connect, SERVER, USER, PASSWORD, DATABASE, 0,NULL,0);
    
    if ( connect )
    {
        cout << "Connection Succeeded\n";
    }
    
    else
    {
        cout << "Connection Failed\n";
    }
    
}

MySQL :: ~MySQL()
{
    mysql_close(connect);
}

void MySQL ::query1()
{
    i = 0;    
    string in,tmp;
    char s[256];
    cout << "Enter The Name Of the Book That Do You Like To Search (Hint : Harry Potter): ";
    getline(cin, in);
    tmp = "SELECT * FROM book_store.books where Book_name = '" + in + "';";
    strcpy(s, tmp.c_str());
    mysql_query (connect, s);
                                                              
    res_set = mysql_store_result(connect);                              
                                                                          
    unsigned int numrows = mysql_num_rows(res_set);                   

    if (numrows>0)
    { 
    cout << endl << " Book that Is Name Is" << in << ":" << endl;
    printf("%-*s", 15,"Book_id");
    printf("%-*s", 15, "Book_name");
    printf("%-*s", 15, "Publisher_id");
    printf("%-*s", 15, "Year_published");
    printf("%-*s", 15, "Translator_id");
    printf("%-*s", 15, "Wieght");
    printf("%-*s\n", 15, "Pages");
    while (((row=mysql_fetch_row(res_set)) != NULL))
    {
        for (size_t i = 0; i < 7; i++)
        {
            printf("%-*s", 15, row[i]);
        }
        cout<< endl;
    }
}
    else
        cout << "Query Is Empty, No Results Found";
    cout << endl << " Thank you.. "<< endl << endl;
}

void MySQL::query2()
{
    cout << "Oldest customer is: "<<endl;
    
    mysql_query(connect, "SELECT * FROM book_store.customers ORDER BY Join_date limit 1;");

    res_set = mysql_store_result(connect);

    unsigned int numrows = mysql_num_rows(res_set);

    if (numrows > 0)
    {
        printf("%-*s", 15, "Customer_ID");
        printf("%-*s", 15, "First_name");
        printf("%-*s\n", 15, "Last_name");
        while (((row = mysql_fetch_row(res_set)) != NULL))
        {
            for (size_t i = 0; i < 3; i++)
            {
                printf("%-*s", 15, row[i]);
            }
            cout << endl;
        }
    }
    else
        cout << "customer Is Empty";
    cout << endl << " Thank you.. " << endl << endl;
}

void MySQL::query3()
{
    cout << "Oldest book is: " << endl;

    mysql_query(connect, "SELECT Book_id,Book_name,Year_published FROM book_store.books ORDER BY Year_published limit 1;");

    res_set = mysql_store_result(connect);

    unsigned int numrows = mysql_num_rows(res_set);

    if (numrows > 0)
    {
        cout << endl << " Oldest Book is:" << endl;
        printf("%-*s", 15, "Book_id");
        printf("%-*s", 15, "Book_name");
        printf("%-*s\n", 15, "Year_published");
        while (((row = mysql_fetch_row(res_set)) != NULL))
        {
            for (size_t i = 0; i < 3; i++)
            {
                printf("%-*s", 15, row[i]);
            }
            cout << endl;
        }
    }
    else
        cout << "Books Is Empty";
    cout << endl << " Thank you.. " << endl << endl;
}

void MySQL::query4()
{
    i = 0;
    cout << "Order Lise: " << endl;

    mysql_query(connect, "SELECT Order_id, Order_date, Payment_type, Total_price, Order_status FROM book_store.orders ORDER BY Order_date;");

    res_set = mysql_store_result(connect);

    unsigned int numrows = mysql_num_rows(res_set);

    if (numrows > 0)
    {
        cout << endl << " Order List is:" << endl;
        printf("%-*s", 15, "Order_id");
        printf("%-*s", 15, "Order_date");
        printf("%-*s", 15, "Payment_type");
        printf("%-*s", 15, "Total_price");
        printf("%-*s\n", 15, "Order_status");
        while (((row = mysql_fetch_row(res_set)) != NULL))
        {
            for (size_t i = 0; i < 5; i++)
            {
                printf("%-*s", 15, row[i]);
            }
            cout << endl;
        }
    }
    else
        cout << "Order List Is Empty";
    cout << endl << " Thank you.. " << endl << endl;
    //system("pause");
}

void MySQL::query5()
{
    i = 0;
    string in, tmp;
    char s[256];
    cout << "Enter The Name Of the Book That Do You Like To Check Num Of Copys sells (Hint:Harry Potter): ";
    getline(cin, in);
    tmp = "SELECT sum(Quantity) FROM book_store.book_order o INNER JOIN books b ON b.Book_id = o.Book_id where Book_name='" + in + "';";
    strcpy(s, tmp.c_str());
    mysql_query(connect, s);

    res_set = mysql_store_result(connect);

    unsigned int numrows = mysql_num_rows(res_set);

    if (numrows > 0)
    {
        while (((row = mysql_fetch_row(res_set)) != NULL))
        {
             cout << endl << " Number of *"<< row[0] <<"* sells from the book " <<in<<" "<< endl;
        }
    }
    else
        cout << "No sell Book "<< in<< " has sell";
    cout << endl << " Thank you.. " << endl << endl;
}

void MySQL::query6()
{
    i = 0;
    string date1,date2, tmp;
    char s[256];
    cout << "most read Author"<<endl<< "enter start Date(hint:2018-09-01):";
    getline(cin, date1);
    cout << "enter Enf Date(hint:2019-11-01):";
    getline(cin, date2);
    tmp = "SELECT * FROM Best_author where Order_date >= '" + date1 + "' and Order_date < '" + date2 + "' limit 1;";
    strcpy(s, tmp.c_str());
    mysql_query(connect, s);

    res_set = mysql_store_result(connect);

    unsigned int numrows = mysql_num_rows(res_set);

    if (numrows > 0)
    {
        cout << endl << " Best Author Is:"<< endl;
        printf("%-*s", 25, "Author_first_name");
        printf("%-*s\n", 25, "Author_last_name");
        while (((row = mysql_fetch_row(res_set)) != NULL))
        {
            for (size_t i = 0; i < 2; i++)
            {
                printf("%-*s", 25, row[i]);
            }
        }
    }
    else
        cout << "No Best_author Found in Date selcted";
    cout << endl << " Thank you.. " << endl << endl;
}

void MySQL::query7()
{
    i = 0;
    cout << "Best Customer: " << endl;
    mysql_query(connect, "SELECT * FROM Best_customer;");


    res_set = mysql_store_result(connect);

    unsigned int numrows = mysql_num_rows(res_set);

    if (numrows > 0)
    {
        cout << endl << " Best 3 Customer are:" << endl;
        printf("%-*s", 15, "Customer_ID");
        printf("%-*s", 15, "Quantity");
        printf("%-*s", 15, "First_name");
        printf("%-*s\n", 15, "Last_name");
        while (((row = mysql_fetch_row(res_set)) != NULL))
        {
            for (size_t i = 0; i < 4; i++)
            {
                printf("%-*s", 15, row[i]);
            }
            cout << endl;
        }
    }
    else
        cout << "Customer List is empty";
    cout << endl << " Thank you.. " << endl << endl;

}

void MySQL::query8()
{
    i = 0;
    cout << "Most Translated: " << endl;

    mysql_query(connect, "SELECT * FROM Most_translated;");

    res_set = mysql_store_result(connect);

    unsigned int numrows = mysql_num_rows(res_set);

    if (numrows > 0)
    {
        row = mysql_fetch_row(res_set);
            cout << "There name of the Book with largest number of Translation is * " << row[0] << " * Number of Translation is: " << row[1];

    }
    else
        cout << "There is no Book with Translation";
    cout << endl << " Thank you.. " << endl << endl;
}

void MySQL::query9()
{
    string in, tmp;
    char s[256];
    cout << "Customer Purchase History"<<endl;
    cout << "Enter The Customer Id (Hint : 1): ";
    getline(cin, in);
    tmp = "SELECT * FROM Customer_buy_history  where Customer_ID=" + in + ";";
    strcpy(s, tmp.c_str());
    mysql_query(connect, s);

    res_set = mysql_store_result(connect);

    unsigned int numrows = mysql_num_rows(res_set);

    if (numrows > 0)
    {
        cout << endl << "Purchase History for Customer Id " << in << ":" << endl;
        printf("%-*s", 15, "Book_name");
        printf("%-*s", 15, "Order_date");
        printf("%-*s", 15, "Quantity");
        printf("%-*s\n", 15, "Sell_price");
       
        while (((row = mysql_fetch_row(res_set)) != NULL))
        {
            for (size_t i = 0; i < 4; i++)
            {
                printf("%-*s", 15, row[i]);
            }
            cout << endl;
        }
    }
    else
        cout << "Purchase Is Empty, No Results Found";
    cout << endl << " Thank you.. " << endl << endl;
}

void MySQL::query10()
{
    string in, tmp;
    char s[256];
    cout << "Order History" << endl;
    cout << "Enter The Customer Id (Hint : 4): ";
    getline(cin, in);
    tmp = "SELECT * FROM Customer_Order_history  where Customer_ID=" + in + ";";
    strcpy(s, tmp.c_str());
    mysql_query(connect, s);

    res_set = mysql_store_result(connect);

    unsigned int numrows = mysql_num_rows(res_set);

    if (numrows > 0)
    {
        cout << endl << "Order History for Customer Id " << in << ":" << endl;
        printf("%-*s", 15, "Book_name");
        printf("%-*s", 15, "Order_date");
        printf("%-*s", 15, "Quantity");
        printf("%-*s", 15, "Sell_price");
        printf("%-*s", 15, "Order_status");
        printf("%-*s\n", 15, "In_stock");
        while (((row = mysql_fetch_row(res_set)) != NULL))
        {
            for (size_t i = 0; i < 6; i++)
            {
                printf("%-*s", 15, row[i]);
            }
            cout << endl;
        }
    }
    else
        cout << "Purchase Is Empty, No Results Found";
    cout << endl << " Thank you.. " << endl << endl;
}

void MySQL::query11()
{
    string in, tmp;
    char s[256];
    cout << "Shipping cost Calculation" << endl;
    cout << "Enter The Order Id That you to Calculate Shipping cost(Hint : 5): ";
    getline(cin, in);
    tmp = "SELECT sum(Total_shipping_cost) FROM Shipping_cost  where Order_id=" + in + ";";
    strcpy(s, tmp.c_str());
    mysql_query(connect, s);

    res_set = mysql_store_result(connect);

    unsigned int numrows = mysql_num_rows(res_set);

    if (numrows > 0)
    {
        row = mysql_fetch_row(res_set);
        cout << endl << "The Shipping Cost of order id " << in << " is: ";
        
        printf("%.2f\n", atof(row[0]));
    }
    else
        cout << "Order Not Found";
    cout << endl << " Thank you.. " << endl << endl;
}

void MySQL::query12()
{
    string in, tmp;
    char s[256];
    cout << "Customer Split a Order to several shipments" << endl;
    cout << "Enter The Customer Id That you to check if split(Hint : 1): ";
    getline(cin, in);
    tmp = "SELECT Order_id FROM Ship_num_in_order where Num_os_shippment>1 and Customer_ID=" + in + ";";
    strcpy(s, tmp.c_str());
    mysql_query(connect, s);

    res_set = mysql_store_result(connect);

    unsigned int numrows = mysql_num_rows(res_set);

    if (numrows > 0)
    {
        row = mysql_fetch_row(res_set);
        in = row[0];
        cout << endl << "The Shipping Details of the split Shippment are: "<< endl;
        tmp = "SELECT * FROM Details_split_shipping where Order_id=" + in + ";";
        strcpy(s, tmp.c_str());
        mysql_query(connect, s);
        res_set = mysql_store_result(connect);
        printf("%-*s", 20, "Order_date");
        printf("%-*s", 20, "Order_status");
        printf("%-*s\n", 20, "Address_street");
        while (((row = mysql_fetch_row(res_set)) != NULL))
        {
            for (size_t i = 0; i < 3; i++)
            {
                printf("%-*s", 20, row[i]);
            }
            cout << endl;
        }
    }
    else
        cout << "Customer Didnt Split Order";
    cout << endl << " Thank you.. " << endl << endl;
}

void MySQL::query13()
{
    string in, tmp;
    char s[256];
    cout << "Status of Shipment!" << endl;
    cout << "Enter The Shipment Id That you to want to check(Hint : 1): ";
    getline(cin, in);
    tmp = "SELECT Order_status FROM book_store.shipments where Shipment_id=" + in + ";";
    strcpy(s, tmp.c_str());
    mysql_query(connect, s);
    res_set = mysql_store_result(connect);
    unsigned int numrows = mysql_num_rows(res_set);

    if (numrows > 0)
    {
        row = mysql_fetch_row(res_set);
        cout << endl << "The Shipment Status Shipment id: " << in << " is: "<<row[0];
    }
    else
        cout << "Shipment Not Found";
    cout << endl << " Thank you.. " << endl << endl;
}

void MySQL::query14()
{
    string month,year, tmp;
    char s[256];
    cout << "Shipments made by a company XPress" << endl;
    cout << "Enter a month (Hint:5):";
    getline(cin, month);
    cout << "Enter a year(Hint:2020):";
    getline(cin, year);
    tmp = "SELECT sum(Total_price) FROM XPress_Total_Month where Order_date >= '" + year + "-" + month + "-01' and Order_date < '" + year + "-" + month + "-30';";
    strcpy(s, tmp.c_str());
    mysql_query(connect, s);
    res_set = mysql_store_result(connect);
    unsigned int numrows = mysql_num_rows(res_set);

    if (numrows > 0)
    {
        row = mysql_fetch_row(res_set);
        cout << endl << "Sum of All shippment made by Xpress in month : " << month << " is: "<<row[0];
    }
    else
        cout << "Shipment with Xpress Not Found";
    cout << endl << " Thank you.. " << endl << endl;
}

void MySQL::query15()
{
    string month, year, tmp;
    char s[256];
    cout << "Money transferred With Bit" << endl;
    cout << "Enter a month (Hint:10):";
    getline(cin, month);
    cout << "Enter a year(Hint:2019):";
    getline(cin, year);
    tmp = "SELECT * FROM Bit_Total_Pay where Order_date >= '" + year + "-" + month + "-01' and Order_date < '" + year + "-" + month + "-30';";
    strcpy(s, tmp.c_str());
    mysql_query(connect, s);
    res_set = mysql_store_result(connect);
    unsigned int numrows = mysql_num_rows(res_set);

    if (numrows > 0)
    {
        row = mysql_fetch_row(res_set);
        cout << endl << "Sum of All Money transferred With Bit in month : " << month << " is: " << row[0];
    }
    else
        cout << "transferred With Bit Not Found";
    cout << endl << " Thank you.. " << endl << endl;

}

void MySQL::query16()
{
    string in, tmp;
    char s[256];
    cout << "Month that profit greater from the average last 12 mounth" << endl;
    tmp = "SELECT * FROM Avg_order_last_year;";
    strcpy(s, tmp.c_str());
    mysql_query(connect, s);
    res_set = mysql_store_result(connect);
    unsigned int numrows = mysql_num_rows(res_set);

    if (numrows > 0)
    {
        row = mysql_fetch_row(res_set);
        cout << endl << "Month that profit greater from AVG month - " << stoi(row[0])<<endl;
        in = row[0];
        tmp = "SELECT * FROM orders_last_year where Sell_price>"+ in +";";
        strcpy(s, tmp.c_str());
        mysql_query(connect, s);
        res_set = mysql_store_result(connect);
        printf("%-*s", 15, "Order_id");
        printf("%-*s", 15, "Total Price");
        printf("%-*s", 15, "Sell Price");
        printf("%-*s", 15, "year");
        printf("%-*s\n", 15, "Month");
        while (((row = mysql_fetch_row(res_set)) != NULL))
        {
            for (size_t i = 0; i < 5; i++)
            {
                printf("%-*s", 15, row[i]);
            }
            cout << endl;
        }
    }
    else
        cout << "No Profit Found";
    cout << endl << " Thank you.. " << endl << endl;
}

void MySQL::query17()
{
    cout << "Shipment comany last 12 months: " << endl;

    mysql_query(connect, "SELECT * FROM Ship_company_sum_last12;");

    res_set = mysql_store_result(connect);

    unsigned int numrows = mysql_num_rows(res_set);

    if (numrows > 0)
    {
        printf("%-*s", 15, "Company_name");
        printf("%-*s\n", 15, "Total_shipping_cost");
        while (((row = mysql_fetch_row(res_set)) != NULL))
        {
            for (size_t i = 0; i < 2; i++)
            {
                printf("%-*s", 15, row[i]);
            }
            cout << endl;
        }

    }
    else
        cout << "There is no Shipment";
    cout << endl << " Thank you.. " << endl;
}

void MySQL::query18()
{
    string in, tmp;
    char s[500];
    cout << "Shipments made at least 2 publisher" << endl;
    tmp = "SELECT * FROM Shipping_list;";
    strcpy(s, tmp.c_str());
    mysql_query(connect, s);
    res_set = mysql_store_result(connect);
    unsigned int numrows = mysql_num_rows(res_set);

    if (numrows > 0)
    {
        printf("%-*s", 20, "Shipment_id");
        printf("%-*s", 20, "Book_name");
        printf("%-*s", 20, "Publisher_id");
        printf("%-*s", 20, "Publisher_num");
        printf("%-*s", 20, "Method_type");
        printf("%-*s\n", 20, "Company_name");
        for (size_t i = 0; i < numrows; i++)
        {
            row = mysql_fetch_row(res_set);
            in = row[0];
            tmp = "SELECT bo.Shipment_id,Book_name,Publisher_id,count(Publisher_id) as Publisher_num,Method_type,Company_name FROM book_store.book_order bo INNER JOIN books ba  ON ba.Book_id = bo.Book_id INNER JOIN shipments sh  ON bo.Shipment_id = sh.Shipment_id INNER JOIN shipment_method sh_me ON sh_me.Shipment_method_id = sh.Shipment_method_id INNER JOIN company com ON com.Company_id = sh_me.Company_id where bo.Shipment_id = "+in+" group by Book_name HAVING Publisher_num > 1; ";
            strcpy(s, tmp.c_str());
            mysql_query(connect, s);
            MYSQL_RES* res_set2 = mysql_store_result(connect);
            MYSQL_ROW row2;
            unsigned int numrows2 = mysql_num_rows(res_set2);

            if (numrows > 0)
            {

                while (((row2 = mysql_fetch_row(res_set2)) != NULL))
                {
                    for (size_t i = 0; i < 6; i++)
                    {
                        printf("%-*s", 20, row2[i]);
                    }
                    cout << endl;
                }
            }
        }
    }
    else
        cout << "No Found book from two publisher";
    cout << endl << " Thank you.. " << endl << endl;
}

void MySQL::query19()
{
    cout << "Customers who have previously 24 month purchased: " << endl;

    mysql_query(connect, "SELECT * FROM Customer_list_not_bought24;");

    res_set = mysql_store_result(connect);

    unsigned int numrows = mysql_num_rows(res_set);

    if (numrows > 0)
    {
        cout << endl << "Customer List:" << endl;
        printf("%-*s", 15, "Customer_ID");
        printf("%-*s", 15, "First_name");
        printf("%-*s", 15, "Last_name");
        printf("%-*s\n", 15, "Phone_num");
        while (((row = mysql_fetch_row(res_set)) != NULL))
        {
            for (size_t i = 0; i < 4; i++)
            {
                printf("%-*s", 15, row[i]);
            }
            cout << endl;
        }
    }
    else
        cout << "List Is Empty customers who have previously purchased Not Found";
    cout << endl << " Thank you.. " << endl << endl;
}

void MySQL::query20()
{
    cout << "customers who made orders we call them last 14 days and didnt come yet: " << endl;

    mysql_query(connect, "SELECT * FROM Customer_list_not_Arrive;");

    res_set = mysql_store_result(connect);

    unsigned int numrows = mysql_num_rows(res_set);

    if (numrows > 0)
    {
        cout << endl << "Customer List:" << endl;
        printf("%-*s", 15, "Order_id");
        printf("%-*s", 15, "Order_date");
        printf("%-*s", 15, "LastModify_date");
        printf("%-*s", 22, "Order_status");
        printf("%-*s", 15, "First_name");
        printf("%-*s", 15, "Last_name");
        printf("%-*s\n", 15, "Phone_num");
        while (((row = mysql_fetch_row(res_set)) != NULL))
        {
            for (size_t i = 0; i < 7; i++)
            {
                if(i!=3)
                printf("%-*s", 15, row[i]);
                else
                    printf("%-*s", 22, row[i]);

            }
            cout << endl;
        }
    }
    else
        cout << "All Customer bought last 2 years";
    cout << endl << " Thank you.. " << endl << endl;
    system("pause");
}

void MySQL::query21()
{
    i = 0;
    cout << "Book In the Storage: " << endl;

    mysql_query(connect, "SELECT sum(Quantity) FROM book_store.inventory where Location=2;");

    res_set = mysql_store_result(connect);

    unsigned int numrows = mysql_num_rows(res_set);

    if (numrows > 0)
    {
        row = mysql_fetch_row(res_set);
        cout << "There number of the  Book In the Storage is: " << row[0];
    }
    else
        cout << "There is no Book In the Storage";
    cout << endl << " Thank you.. " << endl << endl;
}

void MySQL::query22()
{
    i = 0;
    string date1, date2, tmp;
    char s[256];
    cout << "How many books did the store purchase between 2 dates" << endl << "enter start Date(hint:2016-09-01):";
    getline(cin, date1);
    cout << "enter End Date(hint:2020-08-01):";
    getline(cin, date2);
    tmp = "SELECT  sum(Quantity),sum(Total_price) FROM book_store.stoe_order where Order_date >= '" + date1 + "' and Order_date < '" + date2 + "';";
    strcpy(s, tmp.c_str());
    mysql_query(connect, s);
    res_set = mysql_store_result(connect);

    unsigned int numrows = mysql_num_rows(res_set);

    if (numrows > 0)
    {
        row = mysql_fetch_row(res_set);
        cout << endl << " The Number of books that the store purchase is: " << row[0] <<endl;
    }
    else
        cout << "Store Didnt purchase anything";
    cout << endl << " Thank you.. " << endl << endl;
}

void MySQL::query23()
{
    int sum = 0;
    string month, year, tmp;
    char s[256];
    cout << "Store Net profit in a given month" << endl;
    cout << "Enter a month (Hint:05):";
    getline(cin, month);
    cout << "Enter a year(Hint:2020):";
    getline(cin, year);

    tmp = "SELECT sum(Sell_price) FROM book_store.orders o INNER JOIN book_order bo  ON o.Order_id = bo.Order_id where Order_date >= '"+year+"-"+month+"-01' and Order_date < '" + year + "-" + month + "-30';";
    strcpy(s, tmp.c_str());
    mysql_query(connect, s);
    res_set = mysql_store_result(connect);
    if ( mysql_num_rows(res_set)> 0)
    {
        row = mysql_fetch_row(res_set);
        if (row[0] != NULL)
        sum+=stoi(row[0]);
    }
    tmp = "SELECT sum(Quantity),sum(Total_price) FROM book_store.stoe_order where Order_date >= '" + year + "-" + month + "-01' and Order_date < '" + year + "-" + month + "-30';";
    strcpy(s, tmp.c_str());
    mysql_query(connect, s);
    res_set = mysql_store_result(connect);
    if (mysql_num_rows(res_set) > 0)
    {
        row = mysql_fetch_row(res_set);
        if (row[0]!=NULL)
        sum -= stoi(row[0]);
    }
    tmp = "SELECT sum(Payment_amount) FROM book_store.payments where Payment_month=" + month + " and Payment_year=" + year + "";
    strcpy(s, tmp.c_str());
    mysql_query(connect, s);
    res_set = mysql_store_result(connect);
    if (mysql_num_rows(res_set) > 0)
    {
        row = mysql_fetch_row(res_set);
        if (row[0] != NULL)
        sum -= stoi(row[0]);
    }
    cout << " Your Prfit For This Month is: " << sum << endl;
    cout << endl << " Thank you.. " << endl << endl;
}

void MySQL::query24()
{
    int sum_year=0;
    string month, year, tmp;
    char s[256];
    cout << " Average of annual transactions monthly cross-section" << endl;
    
    tmp = "SELECT * FROM Profit_Month_Year_last;";
    strcpy(s, tmp.c_str());
    mysql_query(connect, s);
    res_set = mysql_store_result(connect);
    unsigned int numrows = mysql_num_rows(res_set);

    if (numrows > 0)
    {
        cout << endl << "Customer List:" << endl;
        while (((row = mysql_fetch_row(res_set)) != NULL))
        {

             year = row[0];
             month = row[1];
             tmp = "SELECT sum(Total_price) FROM book_store.orders where year(Order_date)="+year+" and month(Order_date)="+month+";";
             strcpy(s, tmp.c_str());
             mysql_query(connect, s);
             cout << "Profit in Month: * " <<month<<" *";
             MYSQL_RES* res_set2 = mysql_store_result(connect);
             MYSQL_ROW row2;
             row2 = mysql_fetch_row(res_set2);
             if (row2[0] != NULL)
             { 
                 sum_year += stoi(row2[0]);
                 cout << "is: * " << row2[0] << " *" << endl;
            }
            cout << endl;
        }
        cout << "Total Year Profit: * " << sum_year << " *";
    }
    else
        cout << "Not Found transactions";
    cout << endl << " Thank you.. " << endl << endl;
}

void MySQL::query25()
{
    i = 0;
    string id, mon ,tmp;
    char s[256];
    cout << "What is the gross salary of an employee"<<endl<<"enter employee id (Hint:2):";
    getline(cin, id);
    cout << "enter month number (Hint:2):";
    getline(cin, mon);
    tmp = "SELECT sum(COALESCE(Salary_hour_num,0)*COALESCE(Salary_amount_per_hour,0)) FROM book_store.salaries where Salary_id="+id+" and Salary_month="+ mon +";";
    strcpy(s, tmp.c_str());
    mysql_query(connect, s);
    res_set = mysql_store_result(connect);

    unsigned int numrows = mysql_num_rows(res_set);

    if (numrows > 0)
    {
        row = mysql_fetch_row(res_set);
        if(row != NULL)
        {
            cout <<"gross salary of an employee id: " << id << " is:" << stoi(row[0])*0.83 << " " << endl;
        }
    }
    else
        cout << "No sell Book has sell";
    cout << endl << " Thank you.. " << endl << endl;
}

void MySQL::query26()
{
    string month, year, tmp;
    char s[256];
    cout << "Seller with the most trades" << endl;
    cout << "Enter a month of the best sell (Hint:1):";
    getline(cin, month);
    cout << "Enter a year(Hint:2020):";
    getline(cin, year);
    tmp = "SELECT * FROM Best_Employee where year(Order_date)="+ year +" and month(Order_date)="+ month +" limit 1;";
    strcpy(s, tmp.c_str());
    mysql_query(connect, s);
    res_set = mysql_store_result(connect);
    unsigned int numrows = mysql_num_rows(res_set);
    row = mysql_fetch_row(res_set);
    if (numrows > 0 && row!=NULL)
    {
        cout << endl << "Top Seller is: " << row[1]<<" "<< row[2] <<" total of: "<< row[3]<<" Orders" << endl;
    }
    else
        cout << "trades is empty";
    cout << endl << " Thank you.. " << endl << endl;
}