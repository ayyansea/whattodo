require "json"

def formatter(body : JSON::Any) : Tuple(String, String, String, String)
    activity : String = body["activity"].to_s

    begin
        price = body["price"].as_f * 10
        price_bar : String = "\u{275A}" * price.to_i
    rescue ex : TypeCastError
        price = body["price"].as_i * 10
        price_bar = "free!"
    end

    begin
        access = body["accessibility"].as_f * 10
        access_bar : String = "\u{275A}" * access.to_i
    rescue ex : TypeCastError
        access = body["price"].as_i * 10
        access_bar = "free!"
    end

    separator : String = "-" * 10

    return activity, 
           separator,
           "Price: #{price_bar}", 
           "Accessibility: #{access_bar}"
end