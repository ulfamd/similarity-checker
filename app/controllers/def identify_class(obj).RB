def identify_class(obj)
    case obj
    when Hacker
        puts "It's a Hacker!"
    when Submission
        puts "It's a Submission!"
    when TestCase
        puts "It's a TestCase!"
    when Contest
        puts "It's a Contest!"
    else
        puts "It's an unknown Model"
    end
    # write your case control structure here
end