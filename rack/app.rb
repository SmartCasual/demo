class App
  def call(env)
    case env["REQUEST_PATH"]
    when "/whatever"
      response(text: "Whatever")
    when "/whatever2"
      response(status: 302, headers: {"Location" => "/whatever"})
    else
      response(status: 404, text: "Not found")
    end
  end

  private

  def status
    200
  end

  def headers
    {
      "Content-Type" => "text/html",
    }
  end

  def body(text)
    template("<p>#{text}</p>")
  end

  def template(content)
    "<html><body>#{content}</body></html>"
  end

  def response(status: 200, headers: {}, text: "")
    [status, headers, body(text)]
  end
end
