#include <iostream>
#include <fstream>
#include <string>

int main(){
    std::ifstream inCode("code.PN"), inText("text.txt");
    std::string text, code = "";
    while(getline(inCode, code)){
        getline(inText, text);
        for(auto ch : code){
            if(ch == 'P')std::cout << text << std::endl;
            else if(ch == 'N')getline(inText, text);
        }
    }
    return 0;
}