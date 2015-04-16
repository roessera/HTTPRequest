//HTTPRequest

/*
httpRequest({
    
}).then({
    println(“hooray, your file uploaded!”)
}).then({
    println("do something else interesting here")
}).fail({
    println(“all is lost. accept defeat.”)
})

*/


public enum HTTPMethod: String {
    case GET = "GET"
    case POST = "POST"
    case PUT = "PUT"
    case HEAD = "HEAD"
    case DELETE = "DELETE"
    case PATCH = "PATCH"
}

public enum Format: String {
    case JSON = "JSON"
    case TEXT = "TEXT"
    case HTML = "HTML"  
}

public class Deferred {
    public var notify: (() -> ())?
    public var resolve: (() -> ())?
    public var reject: (() -> ())?
    
    public var then: (() -> ())?
    public var always: (() -> ())?
    public var done: (() -> ())?
    public var fail: (() -> ())?
    public var progress: (() -> ())?
    
    func then(callbacks:()->()...){
        println(callbacks.count)
    }
    
}


public class HTTPRequest {
    
    public var url : String?
    public var method: HTTPMethod?
    public var statusCode: Int?
    public var timeout: Int?
    public var beforeSend: ()
    public var Content-Type: ()
    public var format: ()



    public init(_ settings:[String:Any] ){
        println(settings)    
    }
    
    
}

func success()  { println("success") }
func fail()     {    println("fail") }
func progress() {    println("fail") }


var t = HTTPRequest([
    "url":"hey",
    "method":"POST",
    "beforeSend": { () -> Void in
        
    }
])

t.then(success,fail, progress)