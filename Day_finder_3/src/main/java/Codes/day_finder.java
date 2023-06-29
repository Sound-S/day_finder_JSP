package Codes;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/day")
public class day_finder extends HttpServlet{
	
	private static final long serialVersionUID = 1L;

	static int leap,Non_leap,sum;

	static String Day;

	public void doPost(HttpServletRequest request , HttpServletResponse response ) throws IOException, ServletException
	{
		response.setContentType("text/html;charset=UTF-8");
		
		int Date = Integer.parseInt(request.getParameter("day"));
		int Month = Integer.parseInt(request.getParameter("month"));
		int Year = Integer.parseInt(request.getParameter("year"));
		
		
		if(Year>=1901 && Year<=2099)

		{

		//year odd day calculation

		int sub_year =Year-1;

		int qt_year = sub_year/4;

		int normal_year = sub_year - qt_year;

		int oddyear= normal_year +(qt_year*2);

		int rem_year = oddyear%7;

		//System.out.println("test"+rem_year);

		//month code from both leap and non-leap

		int Leap[]= {3,1,3,2,3,2,3,3,2,3,2,3};

		int Non_Leap[]= {3,0,3,2,3,2,3,3,2,3,2,3};

		//finding leap year

		if(Year % 4==0)
		{

		   if(Year % 100 !=0)
		   {
		    leap = Year;
		   }
           else if(Year % 400 == 0)
		   {
		    leap = Year;
		   }
           else
           {
   		    Non_leap = Year;
   		   }
		   
		}

		else
        {
		   Non_leap=Year;
		}
		

		if(Non_leap == Year)
		{
		    sum=0;
		
		    for(int i=0;i<Month-1;i++)
		      {
		        sum+=Non_Leap[i];
		      }
		}
		
		if(leap == Year)
		{
		    sum=0;
		    for(int i=0;i<Month-1;i++)
		    {
               sum+=Leap[i];
            }
		}

		int totaldate = sum + Date;
		int oddmonth = totaldate % 7;
		int dayfind = rem_year + oddmonth;
		
		if(dayfind>=7)
		{
		dayfind = dayfind % 7;
		}

		switch(dayfind)
		{
		case 1: Day = "Sunday"; break;
		
		case 2: Day = "Monday"; break;
		
		case 3: Day = "Tuesday"; break;

		case 4: Day = "Wednesday"; break;

		case 5: Day = "Thursday"; break;

		case 6: Day = "Friday"; break;

		case 0: Day = "Saturday"; break;
		}

		request.setAttribute("Date",Date );
		request.setAttribute("Month",Month );
		request.setAttribute("Year",Year );
		request.setAttribute("Day", Day);
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
		}
		else
		{
		request.setAttribute("pass_error_msg", "Year is out of range please enter within year 1909 - 2099");
		request.getRequestDispatcher("index.jsp").forward(request, response);	
		}
	  }	
	}