 // Take a single-spaced <sentence>, and capitalize every <n>th word starting with <offset>.
    func CapitalizeEveryNthWord(_ sentence:String, _ offset: Int, _ n : Int) -> String {
        let words = sentence.byWords
        var i = 0
        var z = offset > 0 ? 1 : 0
        var newArray = [String]()
        for w in words {
            if i < offset {
                newArray.append(String(w))
            } else {
                if (z==n) {
                    newArray.append(String(w).capitalizingFirstLetter())
                    z = 1
                } else {
                    newArray.append(String(w))
                    z+=1
                }
            }
            i+=1
        }
        return newArray.joined(separator:" ")
    }
    
    //USAGE
    
      let sentence = "Lorem ipsum dolor sit amet";
        
        print(testEval.CapitalizeEveryNthWord(sentence, 0, 2))
        
        print(testEval.CapitalizeEveryNthWord(sentence, 2, 1))
      
