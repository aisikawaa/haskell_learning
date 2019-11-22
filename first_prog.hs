toPart recipient = "Dear " ++ recipient ++ ",\n"
bodyPart booktitle = "Thanks for buying " ++ booktitle ++ ".\n"
fromPart author = "Thanks,\n" ++ author

createEmail recipient booktitle author = toPart recipient ++
                                         bodyPart booktitle ++
                                         fromPart author

main = do
  print "Who is the email for?"
  recipient <- getLine
  print "What is the Title?"
  title <- getLine
  print "Who is the Author?"
  author <- getLine
  print (createEmail recipient title author)
