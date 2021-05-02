alias ios="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"
alias watchos="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator\ \(Watch\).app"

alias xcw 'xed .'
alias xc 'xed .'

alias swift-format-changed "git diff --name-only --staged | egrep '\.swift' | xargs -L 1 -I{} swiftformat {} --indent tab --disable redundantSelf --ifdef no-indent --swiftversion 5.3"
