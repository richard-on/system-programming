/*
 * SPLPv1.c
 * The file is part of practical task for System programming course.
 * This file contains definitions of the data structures and forward
 * declaration of handle_message() function
 */

/*
 *            forward = "GET_VER"|"GET_DATA"|"GET_FILE"|"GET_COMMAND"|"GET_B64"|"DISCONNECT";

            forward { return 0;}
            backward = "CONNECT_OK"|"VERSION" [1,9][0-9]*|(cmdB) " " [a-z0-9.]+ " " (cmdB)|"B64:" " " base64|"DISCONNECT_OK";

            backward { return 0;}
 */

enum test_status
{
    MESSAGE_INVALID,
    MESSAGE_VALID
};


enum Direction
{
    A_TO_B,
    B_TO_A
};


struct Message /* message */
{
    enum Direction	direction;
    char			*text_message;
};


extern enum test_status validate_message( struct Message* pMessage );