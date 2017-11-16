#include <a_samp>
#include <a_mysql>

new MySQL:db_handle;

main()
{
	print("\n __________");
	print("|          |");
	print("| Scripted |");
	print("|    by    |");
	print("| RIDE2DAY |");
	print("|__________|\n");
}

public OnGameModeInit()
{
    mysql_log(ALL);

    db_handle = mysql_connect_file("mysql.ini");

    if(mysql_errno(db_handle) != 0)
    {
        printf("** [MySQL] Couldn't connect to the database (%d).", mysql_errno(db_handle));
        
        SendRconCommand("exit");
    }
    else
    {
        printf("** [MySQL] Connected to the database successfully (%d).", _:db_handle);

        // Queries here.
    }
	return 1;
}

public OnGameModeExit()
{
	if(db_handle)
	{
	    mysql_close(db_handle);
	}
	return 1;
}
