#include <iostream>
#include <fstream>
#include <string>

int main(){
    std::ifstream inCode("code.PN");
    std::ifstream inText("text.txt");
    std::string str, code = "";
    while(getline(inCode, str)){
        code += str;
    }
    getline(inText, str);
    for(int i = 0; i < code.size(); i++){
        if(code[i] == 'P')
            std::cout << str << std::endl;
        else if(code[i] == 'N')
            getline(inText, str);
    }
    return 0;
}