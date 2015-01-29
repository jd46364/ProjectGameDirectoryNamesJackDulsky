require 'bundler'

Bundler.require



get '/guessnumber/:string1/:string2/:string3' do
  userguess1  = params[:string1]
  userguess2  = params[:string2]
  userguess3  = params[:string3]
  computernumber = rand(1..9)
  if computernumber.to_s == userguess1 then
    return "Player1, You Win - You guessed: " + userguess1 + " The number was: " + computernumber.to_s + " <br>" +
        "Player2, You Lose - You guessed: " + userguess2 + " The number was: " + computernumber.to_s + " <br>" +
        "Player3, You Lose - You guessed: " + userguess3 + " The number was: " + computernumber.to_s
  end
  if computernumber.to_s == userguess2 then
    return "Player1, You Lose - You guessed: " + userguess1 + " The number was: " + computernumber.to_s + " <br>" +
       "Player2, You Win - You guessed: " + userguess2 + " The number was: " + computernumber.to_s + " <br>" +
        "Player3, You Lose - You guessed: " + userguess3 + " The number was: " + computernumber.to_s
  end
  if computernumber.to_s == userguess3 then
    return "Player1, You Lose - You guessed: " + userguess1 + " The number was: " + computernumber.to_s + " <br>" +
        "Player2, You Lose - You guessed: " + userguess2 + " The number was: " + computernumber.to_s + " <br>" +
        "Player3, You Win - You guessed: " + userguess3 + " The number was: " + computernumber.to_s
  end
  if computernumber.to_s != userguess1 and computernumber.to_s != userguess2 and computernumber.to_s != userguess3 then
    return "No one wins the number was " + computernumber.to_s
  end
end


