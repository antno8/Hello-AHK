[::
    {
        ih := InputHook("V T5 L4 C", "{enter}.{esc}{tab}", "btw,otoh,fl,ahk,ca")
        ih.Start()
        ih.Wait()
        switch ih.EndReason
        {
        case "Max":
            MsgBox 'You entered "' ih.Input '", which is the maximum length of text'
        case "Timeout":
            MsgBox 'You entered "' ih.Input '" at which time the input timed out'
        case "EndKey":
            MsgBox 'You entered "' ih.Input '" and terminated it with ' ih.EndKey
        default:  ; Match
            switch ih.Input
            {
            case "btw":   Send "{backspace 3}by the way"    
            case "otoh":  Send "{backspace 4}on the other hand"
            case "fl":    Send "{backspace 2}Florida"
            case "ca":    Send "{backspace 2}California"
            case "ahk":
                Send "{backspace 3}"
                Run "https://www.autohotkey.com"
            }
        }
    }