class ChangelogsMailbox < ApplicationMailbox
  def process
    create_changelog
  end

  private

  def create_changelog
    Changelog.create!(
      title: subject,
      text:  body
    )
  end

  def body
    (mail.text_part || mail.html_part || mail).body.decoded
  end

  def subject
    mail.subject
  end
end
