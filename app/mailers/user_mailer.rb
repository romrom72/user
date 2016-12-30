class UserMailer < ApplicationMailer
  def confirm(user)
    @user = user
    mail(to: user.email, subject: 'Votre inscription sur le site')
  end

  def password(user)
    @user = user
    mail(to: user.email, subject: 'Réinitialisation de votre mot de passe')
  end
end
