/*
  Рагусский Ричард Викторович
  14 группа
*/
/*
  In case of encoding problems:
  Richard Ragusski
  Group 14
*/

#include <string.h>
#include "splpv1.h"

inline unsigned char lexConnect(const unsigned char *YYCURSOR){
    /*!re2c
            re2c:define:YYCTYPE = "unsigned char";
            re2c:define:YYMARKER = YYCURSOR;
            re2c:yyfill:enable = 0;

            connect = "CONNECT" "\x00";
            connect { return 1;}

            *       { return 0;}
     */
}
inline unsigned char lexCmd(const unsigned char *YYCURSOR){
    /*!re2c
            re2c:define:YYCTYPE = "unsigned char";
            re2c:define:YYMARKER = YYCURSOR;
            re2c:yyfill:enable = 0;

            getVer = "GET_VER" "\x00";
            getVer { return 4;}

            cmd = ("GET_DATA" "\x00")|("GET_FILE" "\x00")|("GET_COMMAND" "\x00");
            cmd { return 5;}

            getB64 = "GET_B64" "\x00";
            getB64 { return 6;}

            disconnect = "DISCONNECT" "\x00";
            disconnect { return 7;}

            *       { return 0;}
     */
}
inline unsigned char lexVer(const unsigned char *YYCURSOR){
    /*!re2c
            re2c:define:YYCTYPE = "unsigned char";
            re2c:define:YYMARKER = YYCURSOR;
            re2c:yyfill:enable  = 0;

            ver = "VERSION" " " [0-9]+ "\x00";
            ver { return 3;}

            *       { return 0;}

    */
}
inline unsigned char lexConnectOk(const unsigned char *YYCURSOR){
    /*!re2c

            re2c:define:YYCTYPE = "unsigned char";
            re2c:define:YYMARKER = YYCURSOR;
            re2c:yyfill:enable  = 0;

            connectOk = "CONNECT_OK" "\x00";
            connectOk { return 3;}

            *       { return 0;}
     */
}
inline unsigned char lexDisconnectOk(const unsigned char *YYCURSOR){
    /*!re2c
            re2c:define:YYCTYPE = "unsigned char";
            re2c:define:YYMARKER = YYCURSOR;
            re2c:yyfill:enable  = 0;

            "DISCONNECT_OK" "\x00" { return 1;}

            *       { return 0;}

    */
}
inline unsigned char lexB64New(const unsigned char *YYCURSOR){
    /*!re2c
            re2c:define:YYCTYPE = "unsigned char";
            re2c:define:YYMARKER = YYCURSOR;
            re2c:yyfill:enable  = 0;

            b64 = "B64:" " ";
            b64 { return 3;}

            *       { return 0;}

    */
}
inline unsigned char lexDFCStart(const unsigned char *YYCURSOR){
    /*!re2c
            re2c:define:YYCTYPE = "unsigned char";
            re2c:define:YYMARKER = YYCURSOR;
            re2c:yyfill:enable  = 0;

            data = "GET_DATA" " " ;
            data {return 11;}

            file = "GET_FILE" " " ;
            file {return 12;}

            command = "GET_COMMAND" " " ;
            command {return 13;}

            *       { return 0;}

    */
}
inline unsigned char lexDFCData(const unsigned char *YYCURSOR){
    /*!re2c
            re2c:define:YYCTYPE = "unsigned char";
            re2c:define:YYMARKER = YYCURSOR;
            re2c:yyfill:enable  = 0;

            data3 = " " "GET_DATA" "\x00" ;
            data3 {return 1;}

            *       { return 0;}

    */
}
inline unsigned char lexDFCFile(const unsigned char *YYCURSOR){
    /*!re2c
            re2c:define:YYCTYPE = "unsigned char";
            re2c:define:YYMARKER = YYCURSOR;
            re2c:yyfill:enable  = 0;

            file3 = " " "GET_FILE" "\x00" ;
            file3 {return 1;}

            *       { return 0;}

    */
}
inline unsigned char lexDFCCmd(const unsigned char *YYCURSOR){
    /*!re2c
            re2c:define:YYCTYPE = "unsigned char";
            re2c:define:YYMARKER = YYCURSOR;
            re2c:yyfill:enable  = 0;

            command3 = " " "GET_COMMAND" "\x00" ;
            command3 {return 1;}

            *       { return 0;}

    */
}

static const unsigned char B64Table[128] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                             0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                             0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                             0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
                                             0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1,
                                             1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1,
                                             1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
                                             1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
                                             1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1,
                                             1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
                                             1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
                                             1, 1, 0, 0, 0, 0, 1 };

inline unsigned char B64LookUp(const char* msg) {
    msg += 5;
    const unsigned short int* message = (const unsigned short int*) msg;

    int i = 0;
    for (; B64Table[(message[i] & 0x7F00) >> 8] && B64Table[message[i] & 0x7F]; ++i) {}

    i *= 2;
    for (; B64Table[msg[i]]; ++i) {}
    int equals = 0;
    while (msg[i] == '=') {
        ++equals;
        ++i;
    }

    if ((i) % 4 || equals > 2 || msg[i]) {
        return 0;
    }

    return 1;
}

static const unsigned char DFCTable[128] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                             0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                             0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                             0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                             0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1,
                                             1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0,
                                             0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                             0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                             0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1,
                                             1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
                                             1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
                                             1, 1, 0, 0, 0, 0, 1 };

inline unsigned char DFCLookUpCMD(const char* msg) {
    int i;
    for (i = 12; DFCTable[msg[i]]; ++i) {}

    return lexDFCCmd(msg + i);
}

inline unsigned char DFCLookUpData(const char* msg) {
    int i;
    for (i = 9; DFCTable[msg[i]]; ++i) {}

    return lexDFCData(msg + i);
}

inline unsigned char DFCLookUpFile(const char* msg) {
    int i;
    for (i = 9; DFCTable[msg[i]]; ++i) {}

    return lexDFCFile(msg + i);
}

static unsigned char status = 1;
enum test_status validate_message(struct Message* msg) {

    //return *(enum test_status*)((unsigned int*)msg - 1);

    if (!msg->direction) { //fwd A_TO_B
        switch (status) {
            case 1:
                if (!lexConnect(msg->text_message)) {
                    status = 1;
                    return MESSAGE_INVALID;
                }
                status = 2;
                return MESSAGE_VALID;

            case 3:
                status = lexCmd(msg->text_message);
                if (!status) {
                    status = 1;
                    return MESSAGE_INVALID;
                }
                return MESSAGE_VALID;
            default:
                status = 1;
                return MESSAGE_INVALID;
        }
    }
    else { //back B_TO_A
        switch (status) {
            case 2:
                if (!lexConnectOk(msg->text_message)) {
                    status = 1;
                    return MESSAGE_INVALID;
                }
                status = 3;
                return MESSAGE_VALID;

            case 4:
                if (!lexVer(msg->text_message)) {
                    status = 1;
                    return MESSAGE_INVALID;
                }
                status = 3;
                return MESSAGE_VALID;

            case 5: {
                const unsigned char res = lexDFCStart(msg->text_message);
                if (res == 13) {
                    if (DFCLookUpCMD(msg->text_message)) {
                        status = 3;
                        return MESSAGE_VALID;
                    }
                }
                else if (res == 11) {
                    if (DFCLookUpData(msg->text_message)) {
                        status = 3;
                        return MESSAGE_VALID;
                    }
                }
                else if (res == 12) {
                    if (DFCLookUpFile(msg->text_message)) {
                        status = 3;
                        return MESSAGE_VALID;
                    }
                }

                status = 1;
                return MESSAGE_INVALID;
            }

            case 6:
                if (!lexB64New(msg->text_message) || !B64LookUp(msg->text_message)) {
                    status = 1;
                    return MESSAGE_INVALID;
                }
                status = 3;
                return MESSAGE_VALID;

            case 7:
                status = 1;
                if (!lexDisconnectOk(msg->text_message)) {
                    return MESSAGE_INVALID;
                }
                return MESSAGE_VALID;

            default:
                status = 1;
                return MESSAGE_INVALID;
        }
    }
}