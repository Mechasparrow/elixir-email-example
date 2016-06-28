defmodule EmailPlay do
  import Bamboo.Email
  alias EmailPlay.Mailer, as: Mailer
  def send_test_email do
    address = Application.get_env(:email_test, EmailPlay.Mailer)[:username]
    new_email(
      from: address,
      to: "mikipux7@gmail.com",
      subject: "welcome",
      html_body: "<strong> Thanks for joinging our service</strong>",
      text_body: "Thank you!"
    )
  end
  
  def hello_there do 
    IO.puts("hello there")
    send_test_email() |> Mailer.deliver_now
  end
end
