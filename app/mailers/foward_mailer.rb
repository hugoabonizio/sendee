class FowardMailer < ApplicationMailer
  default from: 'hugo.abonizio@gmail.com', fromname: 'Sendee'
  
  def foward(to, fields)
    @fields = fields
    mail to: to, subject: "Sendee fowarding email from #{to}"
  end
end
